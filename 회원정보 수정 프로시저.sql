CREATE OR REPLACE PROCEDURE TEAM_NULLPOINT.proc_mem_update
(
   user_id IN varchar2,
   user_pw IN varchar2,
   change_pw IN varchar2,
   change_zip IN varchar2,
   change_hp IN varchar2,
   change_nick IN varchar2,
   change_mail IN varchar2,
    msg OUT varchar2
)
IS
    cnt number;    
    nickCheck number;
    e_wrong_info EXCEPTION;
BEGIN       

     SELECT count(*) into cnt from MEMBER where m_id=user_id and m_pw=user_pw;     --ȸ�� ���������� ���� ���� ���̵� ��й�ȣ üũ
     

     
        IF (cnt>0) THEN  
        
             SELECT count(*) into nickCheck FROM member WHERE m_nick =  change_nick;    --�г��� �ߺ�Ȯ���� ���� ��
             
             IF(nickCheck>0) THEN
                msg := '�г����� �̹� �����մϴ�';
             ELSE
                 UPDATE member
                 SET
                   m_pw = change_pw,
                   m_zip = change_zip,
                   m_hp=change_hp,
                   m_nick=change_nick,
                   m_mail=change_mail
                 WHERE m_id = user_id;
                 commit;
                 msg:='���������� ȸ������ �Ǿ����ϴ�';
             END IF;
            
        ELSE
            raise e_wrong_info;        
        END IF;   
        
    EXCEPTION
    WHEN e_wrong_info THEN
       msg:='�н����尡 Ʋ�Ƚ��ϴ�';
END;
/