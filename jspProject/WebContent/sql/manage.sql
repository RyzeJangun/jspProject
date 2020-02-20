select * from manage;

drop table manage;

--1. sys �������� �α����Ͽ� ����ڿ��� ��ȣȭ, ��ȣȭ ���� �ο�
sqlplus / as sysdba  �Ǵ� ���ӵ� ���¿����� conn / as sysdba
--GRANT EXECUTE ON DBMS_CRYPTO TO ����ھ��̵�
GRANT EXECUTE ON DBMS_CRYPTO TO JAVA;
GRANT EXECUTE ON DBMS_CRYPTO TO hr;

--2. java ���� �Ǵ� hr�������� �α����Ͽ� ��ȣȭ+��ȣȭ�� ���� ��Ű�� ����
conn java/java1234  �Ǵ� conn hr/hr

--[SQL Developer���� �۾�]
-- KEY���� ���Ƿ� �����ϵ� ��ȣȭ,��ȣȭ�� ���� �����ϰ� ����
CREATE OR REPLACE PACKAGE PACK_ENCRYPTION_DECRYPTION
IS
FUNCTION FUNC_ENCRYPT -- ��ȣȭ�� ���� �Լ�
(V_INPUT_STRING IN VARCHAR2, KEY_DATA IN VARCHAR2:='java1234$!')
RETURN RAW;
FUNCTION FUNC_DECRYPT -- ��ȣȭ�� ���� �Լ�
(V_INPUT_STRING IN VARCHAR2, KEY_DATA IN VARCHAR2:='java1234$!')
RETURN VARCHAR2;
END PACK_ENCRYPTION_DECRYPTION;
/
--3. ��Ű�� ����
CREATE OR REPLACE PACKAGE BODY PACK_ENCRYPTION_DECRYPTION
IS
FUNCTION FUNC_ENCRYPT
( V_INPUT_STRING IN VARCHAR2,
KEY_DATA IN VARCHAR2 := 'java1234$!'
) RETURN RAW
IS
V_ORIGINAL_RAW RAW(64);
V_KEY_DATA_RAW RAW(64);
ENCRYTED_RAW RAW(64);
BEGIN
-- INPUT���� RAW Ÿ������ ����
V_ORIGINAL_RAW := UTL_I18N.STRING_TO_RAW(V_INPUT_STRING,
'AL32UTF8');
--Ű ���� RAW Ÿ������ ����.
V_KEY_DATA_RAW := UTL_I18N.STRING_TO_RAW(KEY_DATA, 'AL32UTF8');
ENCRYTED_RAW := DBMS_CRYPTO.ENCRYPT(
SRC => V_ORIGINAL_RAW,
TYP => DBMS_CRYPTO.DES_CBC_PKCS5,
KEY => V_KEY_DATA_RAW,
IV => NULL);
RETURN ENCRYTED_RAW;
END FUNC_ENCRYPT;
FUNCTION FUNC_DECRYPT
( V_INPUT_STRING IN VARCHAR2,
KEY_DATA IN VARCHAR2 := 'java1234$!'
) RETURN VARCHAR2
IS
V_KEY_DATA_RAW RAW(64);
DECRYPTED_RAW RAW(64);
CONVERTED_STRING VARCHAR2(64);
BEGIN
V_KEY_DATA_RAW := UTL_I18N.STRING_TO_RAW(KEY_DATA, 'AL32UTF8');
DECRYPTED_RAW := DBMS_CRYPTO.DECRYPT(
SRC => V_INPUT_STRING,
TYP => DBMS_CRYPTO.DES_CBC_PKCS5,
KEY => V_KEY_DATA_RAW,
IV => NULL);
CONVERTED_STRING := UTL_I18N.RAW_TO_CHAR(DECRYPTED_RAW,
'AL32UTF8');
RETURN CONVERTED_STRING;
END FUNC_DECRYPT;
END PACK_ENCRYPTION_DECRYPTION;
/
--4. java ����,���� �ȵǴ� ����� hr�������� �α����Ͽ� ȸ�� ���̺� ����(���� ���̺��� ����)
drop table manage;

create table manage (
id varchar2(50) not null primary key,
pw varchar2(64) not null, --varchar2�� �ƴ� varchar�� ����
name varchar2(50) not null,
birth date,
gender varchar2(50),
email varchar2(50),
hp varchar2(50),
address varchar2(200),
ad varchar2(20), --���� ���� ����
join_date date default sysdate
);


--5. ���̺� �ڷ� �Է�
insert into manage (id,pw,name,birth,gender,email,hp,address,ad) values
('tangent45',PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('znjzm12'),'���쿵','1994-10-04','����','qusdndudwkd@naver.com','010-4077-7655','��� ���ֽ� ������','�ƴϿ�');
insert into manage (id,pw,name) values
('park',PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'),'�ֺ���');
insert into manage (userid,passwd,name) values
('hong',PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'),'ȫ����');
select name from manage where id='tangent45' and pw=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('znjzm12');

insert into manage (id,pw,name,birth,gender,email,hp,address,ad) values
('tangent60','test','�׽�Ʈ','1994-10-04','����','qusdndudwkd@naver.com','010-4077-7655','��� ���ֽ� ������','�ƴϿ�');
--6. ȸ������ Ȯ��
select * from manage;
drop table manage;

--7. �α��� �׽�Ʈ
select * from manage where userid='kim'
and passwd=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234');

select * from manage where userid='kim' and passwd='1234'; --�ȳ���

--8. ��ȣȭ �׽�Ʈ
select id, PACK_ENCRYPTION_DECRYPTION.FUNC_DECRYPT(pw) from
manage where id='sin60';

select * from
manage where id='sin60';

select name,join_date from manage;
select ad from manage where id='tangent45';
select * from manage;
commit;

delete from manage
    where id='test';
    
update manage set 
	    name='�迵��'
        where id='sin60';
        
        update manage set pw=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'),
	    birth='96-01-16',gender='����',email='dlwocjs@naver.com',hp='010-4077-7655',address='������',ad='�ƴϿ�'
	    where id='sin60';

select id,pw,name,birth,gender,email,hp,address,ad,to_char(join_date,'yyyy-mm-dd') from manage where id='tangent45';
select to_char(join_date,'yyyy-mm-dd') from manage where id='tangent45';