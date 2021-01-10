CREATE OR REPLACE PROCEDURE TEAM_NULLPOINT.proc_chef_resume(
  field IN varchar2,
  user_id IN member.m_id%TYPE,
  chef_main IN chef_register.main_food%TYPE,
  introducing IN chef_register.writting%TYPE,
  msg OUT varchar2
)
IS
  cnt number;
  chef_check number;
  e_id_aldy_chef EXCEPTION; -- 예외처리를 위해 변수선언
  e_id_applying EXCEPTION;

BEGIN  

    IF(field IN ('POP_RECIPE_NUM')) THEN    --나의 인기게시물이 몇개인지?
    
        SELECT count(*) into cnt FROM popular_recipe pr INNER JOIN RECIPE r ON r.menucd = pr.menucd WHERE r.m_id=user_id;
        
        IF(cnt>3) THEN
            msg:='3개이상';
        ELSE
            msg:='3개미만';
        END IF;
    
    ELSIF(field IN ('SUBMIT_RESUME')) THEN
    
        SELECT chef_apply into chef_check FROM member WHERE m_id=user_id;
        
        IF(chef_check = 2) THEN
            raise e_id_aldy_chef;
        ELSIF(chef_check=1) THEN
            raise e_id_applying;
        ELSE
            
            INSERT INTO chef_register VALUES(user_id,introducing,chef_main);
            
            UPDATE MEMBER
               SET
                   chef_apply=1
             WHERE m_id = user_id;
             
            msg:='셰프 신청이 완료 되었습니다';
            commit;
        END IF;
        
    END IF;


  EXCEPTION -- 예외 처리
    WHEN e_id_aldy_chef THEN
      msg:='이미 셰프인 회원입니다';
      ROLLBACK;
      
    WHEN e_id_applying THEN
      msg:='셰프 신청 중인 상태입니다';
      ROLLBACK;

END;
/