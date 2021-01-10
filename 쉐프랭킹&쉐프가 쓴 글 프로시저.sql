CREATE OR REPLACE PROCEDURE TEAM_NULLPOINT.proc_chef_list
(
   field IN varchar2,
   user_id IN varchar2,
   csr_chef_list OUT sys_refcursor -- Ŀ���� ��ȯ
)
IS
    cnt number;
    e_field_not_found EXCEPTION;
BEGIN       

    IF(field IN('CHEF_RANKING')) THEN
    
        OPEN csr_chef_list FOR
            SELECT RANK() OVER (ORDER BY m_like desc) AS ranking, m_name, decode(m_gender,0,'����',1,'����') m_gender, m_mail,m_like  FROM member WHERE chef_apply = 2;
        
    ELSIF(field IN('CHECK_CHEF')) THEN
    
        SELECT count(*) INTO cnt FROM recipe WHERE m_id = user_id;
    
        IF(cnt>0) THEN
        
            --�۹�ȣ, ��з�, �Һз�, ������, �۾���(�г���), �۰Խ���, ���ƿ䰳��
            --MENUCD, CATEGORY, FOODGROUP, FOODNAME, M_NICK, CREATION_DATE, LIKECOUNT
            OPEN csr_chef_list FOR
                SELECT * FROM(
                    SELECT m.menucd,mc.category, fc.foodgroup,m.foodname, mem.m_nick,new_r.creation_date, new_r.likecount
                    FROM (SELECT r.menucd as menucd, likecount.likecount_count as likecount, r.m_id as m_id, r.creation_date as creation_date
                    FROM recipe r
                    INNER JOIN (
                    select i_r.menucd as likecount_id, count(likes.menucd) as likecount_count
                    from recipe i_r
                    INNER JOIN likes
                    ON i_r.menucd = likes.menucd
                    GROUP BY i_r.menucd
                    ) likecount
                    ON r.menucd = likecount.likecount_id
                    ) new_r INNER JOIN menu m 
                    ON m.menucd = new_r.menucd
                    INNER JOIN member mem
                    ON new_r.m_id = mem.m_id
                    INNER JOIN food_category fc
                    ON fc.foodcategorycd = m.foodcategorycd
                    INNER JOIN menu_category mc
                    ON mc.categorycd=m.categorycd
                    WHERE mem.m_id=user_id
                ) a;
        ELSE
            OPEN csr_chef_list FOR
                SELECT '��ϵ� �Խù��� �������� �ʽ��ϴ�' msg
                    FROM dual;
        END IF;
        
    ELSE
        raise e_field_not_found;
    END IF;

    EXCEPTION
    WHEN e_field_not_found THEN
        dbms_output.put_line('�ʵ���� ����� �Է��ض���');
END;
/