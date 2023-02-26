CREATE TABLE jboard
(
	jseq number(5) NOT NULL,
	name varchar2(50) NOT NULL,
	subject varchar2(200) NOT NULL,
	content varchar2(1000) NOT NULL,
    image varchar2(1000),
	jdate date DEFAULT sysdate,
	secret char(1) DEFAULT 'N' NOT NULL,
	pass varchar2(100),
	replyJboard varchar2(1000),
    mustread char(1) DEFAULT 'N' NOT NULL,
	rep char(1) DEFAULT 'N' NOT NULL,
    views number(38) DEFAULT 0 NOT NULL,
	PRIMARY KEY (jseq)
);


--페이징 카운트(검색기능포함)
CREATE OR REPLACE PROCEDURE getAllCount(
    j_key IN varchar2,
    j_cnt out number
)
IS
v_cnt number;
BEGIN
    select Count(*) into v_cnt from jboard where (subject like '%'||j_key||'%' or content like '%'||j_key||'%'or name like '%'||j_key||'%'); 
  j_cnt:=v_cnt;
END;

--게시판목록조회
CREATE OR REPLACE PROCEDURE getJboardList(
    j_startNum in number,
    j_endNUm in number,
    j_key in jboard.content%type,
    j_rc out sys_refcursor
)
IS
BEGIN
    open j_rc for
        select * from ( 
        select * from ( 
        select rownum as rn, j.*from (( select *from jboard where (subject like '%'||j_key||'%' or content like '%'||j_key||'%'or name like '%'||j_key||'%') order by jseq desc ) j)
             ) where rn >=j_startNum 
             ) where rn <=j_endNum; 
END;

--글쓰기
CREATE OR REPLACE PROCEDURE insertJboard(
    j_name in jboard.name%type,
    j_subject in jboard.subject%type,
    j_content  in jboard.content%type,
    j_image in jboard.image%type,
    j_pass in jboard.pass%type,
    j_mustread in jboard.mustread%type,
    j_secret in jboard.secret%type
)
IS
BEGIN
     insert into jboard (jseq,name,subject,content,image,pass,mustread,secret) values(j_seq.nextVal,j_name,j_subject,j_content,j_image,j_pass,j_mustread,j_secret);
    commit;
END;

--조회수 늘리기
CREATE OR REPLACE PROCEDURE boardCount(
   j_jseq in jboard.jseq%type
)
IS
BEGIN
    update jboard set views=views+1 where jseq=j_jseq;
    commit;
END;

--게시글 디테일
CREATE OR REPLACE PROCEDURE oneJboard(
    j_jseq in jboard.jseq%type,
    j_rc out sys_refcursor
)
IS
BEGIN
    open j_rc for
        select * from jboard where jseq=j_jseq;
END;

--답변달기
CREATE OR REPLACE PROCEDURE replyInsert(
   j_jseq in jboard.jseq%type,
   j_replyjboard in jboard.replyjboard%type
)
IS
BEGIN
    update jboard set replyjboard=j_replyjboard, rep='Y' where jseq=j_jseq;
    commit;
END;



--게시글수정
CREATE OR REPLACE PROCEDURE updateJboard(
    j_name in jboard.name%type,
    j_subject in jboard.subject%type,
    j_content  in jboard.content%type,
    j_image in jboard.image%type,
    j_pass in jboard.pass%type,
    j_mustread in jboard.mustread%type,
    j_secret in jboard.secret%type,
    j_jseq in jboard.jseq%type
)
IS
BEGIN
     update jboard set name=j_name,subject=j_subject,content=j_content,image=j_image,pass=j_pass,mustread=j_mustread,secret=j_secret where jseq=j_jseq;
    commit;
END;


--게시글 삭제
CREATE OR REPLACE PROCEDURE deleteJboard(
    j_jseq in jboard.jseq%type
)
IS
BEGIN
     delete from jboard where jseq=j_jseq;
    commit;
END;















update jboard set rep='Y' where jseq=3;

commit
create sequence j_seq increment by 1 start with 1;
select*from jboard
insert into jboard (jseq,name,subject,content,mustread) values(j_seq.nextVal,'류승준','방문해주셔서 감사합니다.','감사합니다.','Y')
DROP TABLE jboard CASCADE CONSTRAINTS;
drop sequence j_seq;