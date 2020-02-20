--���� ���̺�
create table guestbook (
idx int not null primary key, --�Խù� �Ϸ� ��ȣ
name varchar2(50) not null, --�̸�
email varchar2(50) not null, -- �̸���
passwd varchar2(50) not null, -- ���������� ���
content varchar2(2000) not null, --����
post_date date default sysdate --�ۼ��Ͻ�
);
--varhcar2 4000btye�� ��, ������ �̻� �Ѿ�� clob(4GB)�� �����
-- ex) content clob not null,

drop sequence guestbook_seq;

create sequence guestbook_seq
start with 1 --1���� ����
increment by 1 --1�� ����
nomaxvalue --������ ����
nocache; --ĳ�� ��� ����(�⺻���� ��������� �Ǿ�����)
--ĳ���� ����ϸ� ��ȣ�� �߸� �Էµ� �� ����
--(������ �߿��� ��� nocache���)

insert into guestbook (idx,name,email,passwd,content) values
(guestbook_seq.nextval, 'kim','kim@daum.net','1234','ù��° �Խù�');

select * from guestbook;
commit;

--��й�ȣ üũ
select count(*) from guestbook where idx=1 and passwd='1234';

--[�˻�]
--�̸��� ö����� ���� ���
select * from guestbook where name like '%ö��%';


--�̸��� ������ �����ϴ� ���
select * from guestbook where name like '��%';

--���뿡 ö����� ���� ���
select * from guestbook where content like '%ö��%';

--�̸� �Ǵ� ���뿡 �׽�Ʈ��� ���� ���
select * from guestbook 
where name like '%�׽�Ʈ%' or content like '%�׽�Ʈ%';

select * from guestbook 
where name like '%�׽�Ʈ%' 
union 
select * from guestbook 
where content like '%�׽�Ʈ%';
--sql�� ������ �����̱� ������ union���ε� �� sql�� ������ �� �ִ�.
--A union B : A�� B�� ������
--���� ���̺�(Ư�� �÷�����)�� ���� �ٸ��� union�� �� ����.







