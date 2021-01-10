CREATE OR REPLACE PROCEDURE TEAM_NULLPOINT.proc_show_cookclass
(
user_id IN varchar2
,csr OUT sys_refcursor
)
IS
    cnt number;
    e_need_login EXCEPTION;
BEGIN
    SELECT count(*) INTO cnt FROM member WHERE m_id=user_id;
    

    IF(cnt>0) THEN
    
    OPEN csr FOR
        SELECT cc.c_classcd, max(cc.c_cook) c_cook,max( cc.c_ingredients) c_ingredients, max(cc.c_zip) c_zip, max(cc.c_member) c_member
                , max(cc.c_date) c_date, count(cr.c_classcd) persons 
          FROM cooking_class cc INNER JOIN COOKING_REGISTER cr ON cc.c_classcd=cr.c_classcd(+)
      GROUP BY cc.c_classcd;
       
    ELSE
        raise e_need_login;
    END IF;
        

    EXCEPTION
       WHEN e_need_login THEN
            OPEN csr FOR
            SELECT '로그인 전용 페이지 입니다' msg FROM dual;
            return;
            
END;
/