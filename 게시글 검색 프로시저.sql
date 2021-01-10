CREATE OR REPLACE PROCEDURE TEAM_NULLPOINT.proc_board_list
(
   FIELD IN VARCHAR2,
   BOARD_NO IN number, 
   CSR_BOARD_LIST OUT SYS_REFCURSOR -- 커서로 반환
)
IS
    cnt number;
    e_field_not_found EXCEPTION;
BEGIN       

        IF(FIELD IN('BOARD_LIST')) THEN
            SELECT count(*) into cnt FROM menu;
            IF(cnt >0) THEN
                OPEN  csr_board_list FOR
                    SELECT m.menucd, M.FOODNAME, mem.m_nick,mem.m_id FROM RECIPE R INNER JOIN MENU M ON R.MENUCD = M.MENUCD INNER JOIN MEMBER mem ON r.m_id = mem.m_id;
            ELSE
                OPEN  csr_board_list FOR
                    SELECT '등록된 게시글이 없습니다' msg FROM dual;
            END IF;
          
            
        ELSIF(field IN('POP_BOARD_LIST')) THEN
        
            SELECT count(*) into cnt FROM popular_recipe;
            IF(cnt>0) THEN
                OPEN csr_board_list FOR
                    SELECT pr.likeno,M.FOODNAME, mem.m_nick,mem.m_id,m.menucd FROM RECIPE R INNER JOIN MENU M ON R.MENUCD = M.MENUCD INNER JOIN MEMBER mem ON r.m_id = mem.m_id INNER JOIN popular_recipe pr ON pr.menucd = r.menucd;
            ELSE
                OPEN csr_board_list FOR
                    SELECT '등록된 인기 게시글이 없습니다' msg FROM dual;
            END IF;
        
        ELSIF(FIELD IN('BOARD_CONTENT')) THEN
        
            SELECT count(*) INTO cnt FROM menu WHERE menucd=board_no;
            
            IF(cnt>0) THEN
                UPDATE RECIPE
                 SET hit = hit + 1
                 WHERE menucd = board_no;
                 
                 commit;
                 
                 OPEN csr_board_list FOR
                    SELECT MC.CATEGORY, FC.FOODGROUP, M.FOODNAME, R.RECIPE_INFO,R.M_ID,MEM.M_NICK,R.CREATION_DATE, R.HIT
                    FROM RECIPE R INNER JOIN MENU M
                        ON R.MENUCD = M.MENUCD
                    INNER JOIN MENU_CATEGORY MC
                        ON M.CATEGORYCD = MC.CATEGORYCD
                    INNER JOIN FOOD_CATEGORY FC
                        ON M.FOODCATEGORYCD = FC.FOODCATEGORYCD
                    INNER JOIN MEMBER MEM
                        ON MEM.M_ID=R.M_ID
                    WHERE M.MENUCD=board_no;
                    
            ELSE
                OPEN csr_board_list FOR
                    SELECT '해당 게시글이 존재하지 않습니다' msg FROM dual;
            END IF;
        
         ELSE
            raise e_field_not_found;
         END IF;
        

    EXCEPTION
    WHEN e_field_not_found THEN
       SYS.dbms_output.put_line('검색할 항목이 올바르지 않습니다'); --SQL문 확인 출력.
END;
/