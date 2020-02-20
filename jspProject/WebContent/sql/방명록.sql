--방명록 테이블
create table guestbook (
idx int not null primary key, --게시물 일련 번호
name varchar2(50) not null, --이름
email varchar2(50) not null, -- 이메일
passwd varchar2(50) not null, -- 수정삭제용 비번
content varchar2(2000) not null, --내용
post_date date default sysdate --작성일시
);
--varhcar2 4000btye가 끝, 내용이 이상 넘어가면 clob(4GB)을 사용함
-- ex) content clob not null,

drop sequence guestbook_seq;

create sequence guestbook_seq
start with 1 --1부터 시작
increment by 1 --1씩 증가
nomaxvalue --무제한 증가
nocache; --캐쉬 사용 안함(기본값은 사용함으로 되어있음)
--캐쉬를 사용하면 번호가 잘못 입력될 수 있음
--(순서가 중요한 경우 nocache사용)

insert into guestbook (idx,name,email,passwd,content) values
(guestbook_seq.nextval, 'kim','kim@daum.net','1234','첫번째 게시물');

select * from guestbook;
commit;

--비밀번호 체크
select count(*) from guestbook where idx=1 and passwd='1234';

--[검색]
--이름에 철수라는 글자 모두
select * from guestbook where name like '%철수%';


--이름에 김으로 시작하는 사람
select * from guestbook where name like '김%';

--내용에 철수라는 글자 모두
select * from guestbook where content like '%철수%';

--이름 또는 내용에 테스트라는 글자 모두
select * from guestbook 
where name like '%테스트%' or content like '%테스트%';

select * from guestbook 
where name like '%테스트%' 
union 
select * from guestbook 
where content like '%테스트%';
--sql은 집합적 성격이기 때문에 union으로도 두 sql을 결합할 수 있다.
--A union B : A와 B의 합집합
--만약 테이블(특히 컬럼갯수)이 서로 다르면 union할 수 없다.







