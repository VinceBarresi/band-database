create database test;

use test;

create table person 
  (pnum			 varchar(9)  	primary key, 		
   managernum	 varchar(9) 	not null,
   lastname		 varchar(30)	not null,		
   firstname	 varchar(30)	not null,
   live_in_city	 varchar(30),
   live_in_state varchar(30));
  
  
 create table band
  (bnum			varchar(9) 		primary key,	
   bname		varchar(20) 	not null,
   date_formed  varchar(30)  	not null,		 
   salary    	decimal(8), 
   managernum	varchar(9),
   gname		varchar(16));

create table instrument
  (inum			varchar(30)		primary key,
  iname			varchar(30) 	not null,
  pnum			varchar(9)		not null,	
  ins_type	    varchar(30)		not null,
  manufacturer  varchar(30)		not null);
   
create table song
  (snum			varchar(20) 	primary key,
   sname		varchar(30)     not null,
   bname    	varchar(20) 	not null,
   aname     	varchar(30) 	not null,
   descr		varchar(256),
   popularity	integer(5),
   gname		varchar(16)		not null);
  
 create table album
  (anum 		varchar(10) 	primary key, 
   aname    	varchar(30)		not null,
   bname		varchar(20) 	not null,
   descr		varchar(256),
   snum			varchar(20) 	not null,
   sname		varchar(30)   	not null,
   gname		varchar(16)    	not null);
 	
create table event
  (enumb		varchar(30) primary key,
   bname		varchar(30) not null,
   ev_date		varchar(30) not null,
   lname    	varchar(30) not null,
   lcity		varchar(20)	not null,
   lstate		varchar(20)	not null);
   
 create table location
  (lnum			varchar(4)  primary key,
   enumb		varchar(30) 	not null,
   lcity		varchar(20)	not null,
   lstate		varchar(20)	not null);
   
  create table setlist
  (listnum		varchar(30)	primary key,
   enumb		varchar(30) not null,
   bnum			varchar(9)	not null,
   lname		varchar(30) not null);
  
   
   