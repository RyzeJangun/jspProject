select * from manage;

drop table manage;

--1. sys 계정으로 로그인하여 사용자에게 암호화, 복호화 권한 부여
sqlplus / as sysdba  또는 접속된 상태에서는 conn / as sysdba
--GRANT EXECUTE ON DBMS_CRYPTO TO 사용자아이디
GRANT EXECUTE ON DBMS_CRYPTO TO JAVA;
GRANT EXECUTE ON DBMS_CRYPTO TO hr;

--2. java 계정 또는 hr계정으로 로그인하여 암호화+복호화를 위한 패키지 선언
conn java/java1234  또는 conn hr/hr

--[SQL Developer에서 작업]
-- KEY값은 임의로 지정하되 암호화,복호화에 각각 동일하게 지정
CREATE OR REPLACE PACKAGE PACK_ENCRYPTION_DECRYPTION
IS
FUNCTION FUNC_ENCRYPT -- 암호화를 위한 함수
(V_INPUT_STRING IN VARCHAR2, KEY_DATA IN VARCHAR2:='java1234$!')
RETURN RAW;
FUNCTION FUNC_DECRYPT -- 복호화를 위한 함수
(V_INPUT_STRING IN VARCHAR2, KEY_DATA IN VARCHAR2:='java1234$!')
RETURN VARCHAR2;
END PACK_ENCRYPTION_DECRYPTION;
/
--3. 패키지 구현
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
-- INPUT값을 RAW 타입으로 변경
V_ORIGINAL_RAW := UTL_I18N.STRING_TO_RAW(V_INPUT_STRING,
'AL32UTF8');
--키 또한 RAW 타입으로 변경.
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
--4. java 계정,만약 안되는 사람은 hr계정으로 로그인하여 회원 테이블 생성(기존 테이블은 삭제)
drop table manage;

create table manage (
id varchar2(50) not null primary key,
pw varchar2(64) not null, --varchar2가 아닌 varchar로 설정
name varchar2(50) not null,
birth date,
gender varchar2(50),
email varchar2(50),
hp varchar2(50),
address varchar2(200),
ad varchar2(20), --광고 수신 여부
join_date date default sysdate
);


--5. 테이블에 자료 입력
insert into manage (id,pw,name,birth,gender,email,hp,address,ad) values
('tangent45',PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('znjzm12'),'변우영','1994-10-04','남자','qusdndudwkd@naver.com','010-4077-7655','경기 광주시 오포읍','아니오');
insert into manage (id,pw,name) values
('park',PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'),'최부장');
insert into manage (userid,passwd,name) values
('hong',PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'),'홍실장');
select name from manage where id='tangent45' and pw=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('znjzm12');

insert into manage (id,pw,name,birth,gender,email,hp,address,ad) values
('tangent60','test','테스트','1994-10-04','남자','qusdndudwkd@naver.com','010-4077-7655','경기 광주시 오포읍','아니오');
--6. 회원정보 확인
select * from manage;
drop table manage;

--7. 로그인 테스트
select * from manage where userid='kim'
and passwd=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234');

select * from manage where userid='kim' and passwd='1234'; --안나옴

--8. 복호화 테스트
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
	    name='김영수'
        where id='sin60';
        
        update manage set pw=PACK_ENCRYPTION_DECRYPTION.FUNC_ENCRYPT('1234'),
	    birth='96-01-16',gender='여자',email='dlwocjs@naver.com',hp='010-4077-7655',address='ㅁㅁㅁ',ad='아니오'
	    where id='sin60';

select id,pw,name,birth,gender,email,hp,address,ad,to_char(join_date,'yyyy-mm-dd') from manage where id='tangent45';
select to_char(join_date,'yyyy-mm-dd') from manage where id='tangent45';