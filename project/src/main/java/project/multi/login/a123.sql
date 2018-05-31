DB공유하기.(Oracle Database생성에서부터 공유까지.)

https://m.blog.naver.com/PostView.nhn?blogId=gingsero&logNo=220430999416&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F

https://blog.naver.com/jej1511/220686682197

select count(*) from applier;

select * from applier;
desc table applier;
desc applier;

1. 새로운 Data를 담을 계정을 생성한다.

CREATE USER 계정명 IDENTIFIED BY 비밀번호;

2. 계정 권한 할당.

GRANT CREATE 권한명 TO 계정;

3. DB생성.

CREATE TABLE 테이블명(컬럼1 타입1 PRIMARY KEY,
	컬럼2 타입2 NOT NULL, 
	컬럼3 타입3  FOREIGN KEY REFERENCES 테이블명(컬럼명));




CREATE USER PJT IDENTIFIED BY PJT;
GRANT connect, resource, dba to pjt;

<구직자 Table>

create table applier(ap_id varchar2(20) primary key, 
		ap_pw varchar2(20) NOT NULL,
		ap_name varchar2(20) NOT NULL,
		birth int NOT NULL,
		photo varchar2(100) NOT NULL,
		addr varchar2(300) NOT NULL,
		email varchar2(100) NOT NULL,
		classify varchar2(20),
		salary int);

Q1. ap_id, ap_pw처럼 기업 & 구직자 테이블별 컬럼명 구분하는게 좋을지?
Q2. birth int로? 남녀 성별 확인할 수 있도록 할것인지?
Q3. salary..희망연봉 int로? ..천만원 같은식으로 string?

<구인기업 Table>

create table supplier(sup_id varchar2(20) primary key,
		sup_pw varchar2(20) NOT NULL,
		sup_name varchar2(20) NOT NULL,
		serial int NOT NULL);

<채용공고 DB Table>

create sequence seq_recruit_num
		increment by 1
		nomaxvalue;

create table recruit(recruit_num number primary key,
		title varchar2(40) not null,
		content varchar2(2000) not null,
		intake number not null,
		deadline date not null,
		job varchar2(20) not null
		 );

<추가질문 DB>

create sequence seq_addquest_num
		increment by 1
		nomaxvalue;

create table addquest(addquest_num number primary key,
		question varchar2(60) not null
		);

<추가답변 DB>

create sequence seq_addreply_num
		increment by 1
		nomaxvalue;

create table addreply(addreply_num number primary key,
		reply varchar2(60) not null
		);

<고등학교 학력 DB>

create sequence seq_highschool_num
		increment by 1
		nomaxvalue;

create table highschool(highschool_num number primary key,
		name varchar2(30) not null,
		classify varchar2(20) not null,
		location varchar2(40) not null,
		start_year  number not null,
		fin_year number not null
		);


Q1. 입학연도, 졸업연도 int? string?

<대학교 학력 DB>

create sequence seq_univ_num increment by 1
		nomaxvalue;

create table univ(univ_num number primary key,
		name varchar2(30) not null,
		classify varchar2(20) not null,
		major varchar2(30) not null,
		location varchar2(30) not null,
		grade number not null,
		startyear number not null,
		finyear number not null
		);

<어학 DB>

create sequence seq_language_num 
		increment by 1
		nomaxvalue;

create table language(language_num number primary key,
		title varchar2(40) not null,
		grade varchar2(20) not null,
		getdate date not null
		);

<자격증 DB>

create sequence seq_license_num 
		increment by 1
		nomaxvalue;

create table license(license_num number primary key,
		title varchar2(40) not null,
		getdate date not null,
		institute varchar2(40) not null);


<병역>
create sequence seq_military_num
		increment by 1
		nomaxvalue;

create table military(military_num number primary key,
		yesno char(1) not null,
		Exemption varchar(2),
		rank varchar2(20),
		startdate varchar2(20),
		findate varchar2(20)
		);



오라클은 boolean 이 없다.
char(1) 로 선언 후 1, 0 으로 하면 DB에 값을 입력하면
1 = true
2 = false
boolean useY = rs.getBoolean("use_yn");
할때 인식 됨 

Q1. 병역필여부로, 미필이면, 입대전역일 안뜨게할지? 혹은 자동으로 체크되서 table에 값을 기입시킬지? 고민해봐야할듯. (not null 쓸지 말지?)
Q2. 전역일 입대일 날짜 string? number? date?

<기타 경력>

create sequence seq_etcCareer_num 
		increment by 1
		nomaxvalue;

create table etcCareer(etcCareer_num number primary key,
		title varchar2(20) not null,
		institute varchar2(20) not null,
		 period varchar2(60) not null,
		position varchar2(20) not null,
		content varchar2(300) not null
		);

<회사 경력>

create sequence seq_firmCareer_num
		increment by 1
		nomaxvalue;

create table firmCareer(firmCareer_num number primary key,
		firmname varchar2(20) not null,
		position varchar2(20) not null,
		period varchar2(20) not null,
		content varchar2(20) not null);



<기본 질문 DB>

create sequence seq_basequest_num
		increment by 1
		nomaxvalue;

create table basequest(basequest_num number primary key,
		question varchar2(60) not null
		);

<기본 답변 DB>

create sequence seq_basereply_num
		increment by 1
		nomaxvalue;

create table basereply(basereply_num number primary key,
		reply varchar2(60) not null
		);



<appliy list DB>

create sequence seq_applylist_num
		increment by 1
		nomaxvalue;

//이거못함..

create table applylist(applylist_num number primary key,
		supplier_id varchar2(20),  FOREIGN KEY (supplier_id) REFERENCE applier(ap_id),
		applier_id varchar2(20), foreign key
(applier_id) reference supplier(sup_id));




















