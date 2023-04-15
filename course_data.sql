CREATE DATABASE `project`;
USE `project`;
/*
DROP TABLE course_data;
CREATE TABLE course_data (
	semester	varchar(4),
	course_no	varchar(5),
	course_name	varchar(255),
	course_type	varchar(10),
	course_room	varchar(20),
	course_building	varchar(20),
	course_time	varchar(20),
	course_credit	INTEGER,
	course_limit	INTEGER,
	course_status	varchar(10),
	course_is_online	varchar(1),
	teacher_name	varchar(20),
	student_name	varchar(20),
	student_dept	varchar(30),
	student_grade	INTEGER,
	student_status	varchar(10),
	student_class	varchar(1),
	select_result	varchar(10),
	course_score	NUMERIC(3,2),
	feedback_rank	INTEGER
);
*/
SELECT course_credit FROM course_data where course_name='微積分';
DROP TABLE `course_data`;
CREATE TABLE course_data (
	semester	varchar(4),
	course_no	varchar(5),
	course_name	varchar(255),
	course_type	varchar(10),
	course_room	varchar(20),
	course_building	varchar(20),
	course_time	varchar(20),
	course_credit	INTEGER,
	course_limit	INTEGER,
	course_status	varchar(10),
	course_is_online	varchar(1),
	teacher_name	varchar(20),
	student_name	varchar(20),
	student_dept	varchar(30),
	student_grade	INTEGER,
	student_status	varchar(10),
	student_class	varchar(1),
	select_result	varchar(10),
	course_score	NUMERIC(3,1),
	feedback_rank	INTEGER
);
SELECT * FROM course_data;
SELECT course_credit FROM course_data where course_name='微積分';
INSERT INTO course_data (semester,course_no,course_name,course_type,course_room,course_building,course_time,course_credit,course_limit,course_status,course_is_online,teacher_name,student_name,student_dept,student_grade,student_class,student_status,select_result,course_score,feedback_rank) VALUES
('1102','A0001','微積分','必修','K205','工程一館','一567','2','50','開課','否','岳飛','張飛','數學系','1','A','在學','中選','77.7','1'),
('1102','A0001','微積分','必修','K205','工程一館','一567','2','50','開課','否','岳飛','孫尚香','數學系','1','A','休學','中選',null,null),
('1102','A0001','微積分','必修','K205','工程一館','一567','2','50','開課','否','岳飛','周瑜','數學系','1','A','在學','中選','56','2'),
('1102','A0001','微積分','必修','K205','工程一館','一567','2','50','開課','否','岳飛','黃蓋','數學系','1','A','在學','中選','34','3'),
('1102','A0001','微積分','必修','K205','工程一館','一567','2','50','開課','否','岳飛','趙雲','數學系','1','A','在學','中選','98','4'),
('1102','A0001','微積分','必修','K205','工程一館','一567','2','50','開課','否','岳飛','關興','數學系','1','A','在學','中選','55','5'),
('1102','A0001','微積分','必修','K205','工程一館','一567','2','50','開課','否','岳飛','夏侯惇','數學系','1','A','在學','中選','67','2'),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','關羽','資訊工程系','1','A','在學','中選','66','3'),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','龐統','資訊工程系','1','A','休學','中選',null,null),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','周瑜','數學系','1','A','在學','中選','93','4'),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','黃蓋','數學系','1','A','在學','中選','65','4'),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','趙雲','數學系','1','A','在學','中選','49','5'),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','夏侯惇','數學系','1','A','在學','中選','78','3'),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','華雄','資訊工程研究所','1','A','退學','中選',null,null),
('1102','A0002','計算機概論','必修','L102','工程五館','二34,五4','3','50','開課','否','陸羽','華陀','資訊工程研究所','1','A','在學','中選','74','5'),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','龐統','資訊工程系','1','A','休學','中選',null,null),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','張飛','數學系','1','A','在學','中選','46','5'),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','黃蓋','數學系','1','A','在學','中選','76','4'),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','關興','數學系','1','A','在學','中選','87','5'),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','劉備','資訊工程研究所','1','A','在學','落選',null,null),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','華雄','資訊工程研究所','1','A','退學','中選',null,null),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','呂布','資訊工程研究所','1','A','在學','中選','76','4'),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','華陀','資訊工程研究所','1','A','在學','中選','80','5'),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','諸葛亮','資訊工程研究所','1','A','在學','中選','78','3'),
('1102','A0003','虛擬實境','選修','E6-A209','工程五館','四567','3','50','開課','否','劉邦','呂蒙','資訊工程研究所','1','A','在學','中選','65','4'),
('1102','A0004','經濟學','必修','I1-018','管理二館','四567','3','50','開課','否','孔丘','龐統','資訊工程系','1','A','休學','落選',null,null),
('1102','A0004','經濟學','必修','I1-018','管理二館','四567','3','50','開課','否','孔丘','張飛','數學系','1','A','在學','中選','56','3'),
('1102','A0004','經濟學','必修','I1-018','管理二館','四567','3','50','開課','否','孔丘','孫尚香','數學系','1','A','休學','中選',null,null),
('1102','A0004','經濟學','必修','I1-018','管理二館','四567','3','50','開課','否','孔丘','黃蓋','數學系','1','A','在學','中選','67.5','5'),
('1102','A0004','經濟學','必修','I1-018','管理二館','四567','3','50','開課','否','孔丘','趙雲','數學系','1','A','在學','中選','78','4'),
('1102','A0004','經濟學','必修','I1-018','管理二館','四567','3','50','開課','否','孔丘','夏侯惇','數學系','1','A','在學','中選','89','2'),
('1102','A0004','經濟學','必修','I1-018','管理二館','四567','3','50','開課','否','孔丘','呂布','資訊工程研究所','1','A','在學','中選','45','5'),
('1102','A0005','統計學','選修','I1-304','管理二館','五234','3','50','開課','否','莊周','關羽','資訊工程系','1','A','在學','中選','68.7','1'),
('1102','A0005','統計學','選修','I1-304','管理二館','五234','3','50','開課','否','莊周','大喬','資訊工程系','1','A','在學','中選','63','4'),
('1102','A0005','統計學','選修','I1-304','管理二館','五234','3','50','開課','否','莊周','甘寧','資訊工程系','1','A','在學','中選','46','5'),
('1102','A0005','統計學','選修','I1-304','管理二館','五234','3','50','開課','否','莊周','孫尚香','數學系','1','A','休學','中選',null,null),
('1102','A0005','統計學','選修','I1-304','管理二館','五234','3','50','開課','否','莊周','周瑜','數學系','1','A','在學','中選','78','2'),
('1102','A0005','統計學','選修','I1-304','管理二館','五234','3','50','開課','否','莊周','黃蓋','數學系','1','A','在學','中選','87','3'),
('1102','A0005','統計學','選修','I1-304','管理二館','五234','3','50','開課','否','莊周','劉備','資訊工程研究所','1','A','在學','中選','96','2'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','關羽','資訊工程系','1','A','在學','中選','76','4'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','龐統','資訊工程系','1','A','休學','中選',null,null),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','司馬昭','資訊工程系','1','A','在學','落選',null,null),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','馬超','資訊工程系','1','A','在學','落選',null,null),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','張飛','數學系','1','A','在學','中選','34','3'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','孫尚香','數學系','1','A','休學','落選',null,null),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','周瑜','數學系','1','A','在學','落選',null,null),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','黃蓋','數學系','1','A','在學','中選','80','4'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','關興','數學系','1','A','在學','中選','62','5'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','夏侯惇','數學系','1','A','在學','中選','60','3'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','劉備','資訊工程研究所','1','A','在學','中選','56','5'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','華雄','資訊工程研究所','1','A','退學','中選',null,null),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','華陀','資訊工程研究所','1','A','在學','中選','98','4'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','諸葛亮','資訊工程研究所','1','A','在學','中選','55','5'),
('1102','A0006','音樂欣賞','選修','O-214','綜教館','三56','2','100','開課','否','巴哈','呂蒙','資訊工程研究所','1','A','在學','中選','78','5'),
('1102','A0007','演算法','選修','L102','工程五館','三234','3','50','開課','否','達文西','張飛','數學系','1','A','在學','落選',null,null),
('1102','A0007','演算法','選修','L102','工程五館','三234','3','50','開課','否','達文西','華雄','資訊工程研究所','1','A','退學','中選',null,null),
('1102','A0007','演算法','選修','L102','工程五館','三234','3','50','開課','否','達文西','呂布','資訊工程研究所','1','A','在學','中選','79','5'),
('1102','A0007','演算法','選修','L102','工程五館','三234','3','50','開課','否','達文西','郭嘉','資訊工程研究所','1','A','在學','中選','87','4'),
('1102','A0007','演算法','選修','L102','工程五館','三234','3','50','開課','否','達文西','華陀','資訊工程研究所','1','A','在學','中選','68','3');
DROP TABLE `GRADES`;
DROP TABLE `STUDENT`;
/*創立學生資訊*/
CREATE TABLE `STUDENT`(
	`student_id` INT AUTO_INCREMENT,
    `student_name` VARCHAR(20),
    `student_dept`	varchar(30),
	`student_grade`	INTEGER,
    `student_class`	varchar(1),
	`student_status` varchar(10),
    PRIMARY KEY(`student_id`)
);
DESCRIBE `STUDENT`;
INSERT INTO `STUDENT` (student_name, student_dept, student_grade, student_class, student_status)
SELECT DISTINCT student_name, student_dept, student_grade, student_class, student_status 
FROM course_data;
SELECT * FROM STUDENT;
/*course_data table add s_id column*/
ALTER TABLE `course_data` ADD `s_id` INT;
UPDATE course_data AS C INNER JOIN STUDENT AS A
ON A.student_name = C.student_name
SET C.s_id = A.student_id;

SELECT s_id FROM course_data;
SET SQL_SAFE_UPDATES=0; /*Error code 1175*/
/*創立教師資訊*/
DROP TABLE `CLASSROOM_REF`;
DROP TABLE `COURSE_INFO`;
DROP TABLE `TEACHER`;
CREATE TABLE `TEACHER`(
	`teacher_id` INT AUTO_INCREMENT,
    `teacher_name` varchar(20),
    `course_name` varchar(255),
    PRIMARY KEY(`teacher_id`)
);
INSERT INTO `TEACHER` (teacher_name, course_name)
SELECT teacher_name, course_name 
FROM course_data
GROUP BY teacher_name
HAVING COUNT(teacher_name)>0;
SELECT * FROM TEACHER;
/*course_data table add t_id column*/
ALTER TABLE `course_data` ADD `t_id` INT;
UPDATE course_data AS C INNER JOIN TEACHER AS T
ON C.teacher_name = T.teacher_name
SET C.t_id = T.teacher_id;

SELECT t_id FROM course_data;
SELECT teacher_id FROM TEACHER;


/*創立課程資訊*/
DROP TABLE`COURSE_INFO`;
CREATE TABLE `COURSE_INFO`(
	`course_id` INT AUTO_INCREMENT,
	`course_no`	varchar(5),
	`course_name` varchar(255),
    `t_id` INT,
	`course_type` varchar(10),
	/*`course_time` varchar(20),*/
	`course_credit`	INTEGER,
	`course_status`	varchar(10),
	`course_is_online` varchar(1),
    `semester` varchar(4),
    PRIMARY KEY(`course_id`),
    FOREIGN KEY (t_id) REFERENCES TEACHER (teacher_id)
);
DESCRIBE `COURSE_INFO`;
INSERT INTO `COURSE_INFO` (course_no, course_name, t_id, course_type, course_credit, course_status, course_is_online, semester)
SELECT course_no, course_name, t_id, course_type, course_credit, course_status, course_is_online, semester
FROM course_data
GROUP BY course_no
HAVING COUNT(course_no)>0;

/*course_data table add c_id column*/
ALTER TABLE `course_data` ADD `c_id` INT;
UPDATE course_data AS C INNER JOIN COURSE_INFO AS I
ON C.course_name = I.course_name
SET C.c_id = I.course_id;
SELECT c_id FROM course_data;
SELECT c_id, t_id FROM course_data;

DROP TABLE `COURSE_TIME`;
CREATE TABLE `COURSE_TIME`(
	`id` INT AUTO_INCREMENT,
    `course_id` INT,
	`course_no` varchar(5),
    `course_time` varchar(20),
    PRIMARY KEY (`id`),
    FOREIGN KEY (course_id) REFERENCES COURSE_INFO (course_id)
);
INSERT INTO `COURSE_TIME` (course_id, course_no, course_time)
SELECT c_id, course_no, SUBSTRING_INDEX(SUBSTRING_INDEX(A.course_time, ',', B.HELP_TOPIC_ID+1), ',', -1) course_time
FROM (
SELECT c_id, course_no, course_name, s_id, t_id, course_type, course_time, course_credit, course_status, course_is_online, semester
FROM course_data
GROUP BY course_no
HAVING COUNT(course_no)>0) AS A
INNER JOIN mysql.HELP_TOPIC AS B
ON B.HELP_TOPIC_ID < (length(A.course_time) - length(replace(A.course_time, ',', ''))+1)
ORDER BY A.course_no;

SELECT * FROM COURSE_TIME;
/*INSERT INTO `COURSE_INFO` (course_no, course_name, s_id, t_id, course_type, course_time, course_credit, course_status, course_is_online, semester)
SELECT course_no, course_name, s_id, t_id, course_type, SUBSTRING_INDEX(SUBSTRING_INDEX(A.course_time, ',', B.HELP_TOPIC_ID+1), ',', -1) course_time, course_credit, course_status, course_is_online, semester
FROM (
SELECT course_no, course_name, s_id, t_id, course_type, course_time, course_credit, course_status, course_is_online, semester
FROM course_data
GROUP BY course_no
HAVING COUNT(course_no)>0) AS A
INNER JOIN mysql.HELP_TOPIC AS B
ON B.HELP_TOPIC_ID < (length(A.course_time) - length(replace(A.course_time, ',', ''))+1)
ORDER BY A.course_no;*/
SELECT * FROM COURSE_INFO; 
SELECT * FROM course_data;
/*解決multi-value的問題(二34,五4)*/
/*
SELECT course_no, course_name, s_id, t_id, course_type, course_time, course_credit, course_status, course_is_online, semester
FROM course_data
GROUP BY course_no
HAVING COUNT(course_no)>0;
*/



/*
SELECT @@SESSION.sql_mode;
SET sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
*/
DROP TABLE `CLASSROOM_INFO`;
CREATE TABLE `CLASSROOM_INFO`(
	`course_room` varchar(20),
	`course_building` varchar(20),
	`course_limit` INTEGER,
    PRIMARY KEY(`course_room`)
);
INSERT INTO `CLASSROOM_INFO` (course_room, course_building, course_limit)
SELECT course_room, course_building, course_limit
FROM course_data
GROUP BY course_room
HAVING COUNT(course_room)>0;
SELECT * FROM CLASSROOM_INFO;

DROP TABLE `CLASSROOM_REF`;
CREATE TABLE `CLASSROOM_REF`(
	`course_id` INT,
    `course_room` varchar(20),
    PRIMARY KEY(course_id, course_room),
    FOREIGN KEY (course_id) REFERENCES COURSE_INFO (course_id),
    FOREIGN KEY (course_room) REFERENCES CLASSROOM_INFO (course_room)
);
INSERT INTO `CLASSROOM_REF` (course_id, course_room)
SELECT DISTINCT A.course_id, B.course_room
FROM course_data AS C, COURSE_INFO AS A, CLASSROOM_INFO AS B
WHERE A.course_name = C.course_name AND B.course_room = C.course_room;
SELECT * FROM CLASSROOM_REF;

DROP TABLE `GRADES`;
CREATE TABLE `GRADES`(
	course_id INT,
    student_id INT,
    select_result	varchar(10),
	course_score	NUMERIC(3,1),
	feedback_rank	INTEGER,
    PRIMARY KEY(course_id, student_id),
    FOREIGN KEY (course_id) REFERENCES COURSE_INFO(course_id),
    FOREIGN KEY (student_id) REFERENCES STUDENT(student_id)
);
INSERT INTO `GRADES` (course_id, student_id, select_result, course_score, feedback_rank)
SELECT B.course_id, A.student_id, C.select_result, C.course_score, C.feedback_rank
FROM course_data AS C, STUDENT AS A, COURSE_INFO AS B
WHERE C.s_id = A.student_id AND C.course_name = B.course_name;

SELECT * FROM course_data;
SELECT * FROM STUDENT;
SELECT * FROM COURSE_INFO;

SELECT * FROM STUDENT;
SELECT * FROM TEACHER;
SELECT * FROM COURSE_INFO;
SELECT * FROM COURSE_TIME;
SELECT * FROM CLASSROOM_INFO;
SELECT * FROM CLASSROOM_REF;
SELECT * FROM GRADES;


/*1. 1102學期的「A0001微積分」，因故上課地點要由K205修改到K210大教室，該怎麼做？*/
/*修改COURSE_REF*/
INSERT INTO CLASSROOM_INFO (course_room, course_building, course_limit)
VALUES ('K210', '工程一館', '50');
UPDATE CLASSROOM_REF
SET `course_room` = 'K210'
WHERE course_id = (SELECT course_id FROM COURSE_INFO WHERE course_no = 'A0001' AND course_name = '微積分');

/*2.請列出1102學期的「A0002計算機概論」的修課名單（點名表）*/
SELECT S.*
FROM STUDENT AS S, GRADES AS G
WHERE S.student_id = G.student_id AND S.student_status = '在學' AND G.select_result = '中選' AND course_id = (SELECT course_id FROM COURSE_INFO WHERE course_no = 'A0002' AND course_name = '計算機概論');

/*3.請列出1102學期，成績不及格的修課學生資料（大學部：低於60分、碩博：70分）*/
/*選出所有“學期成績總平均不及格”的學生資料*/
SELECT S.*
FROM STUDENT AS S
WHERE S.student_id in (
	SELECT R.student_id
    FROM (SELECT GRADES.* FROM GRADES, STUDENT WHERE GRADES.student_id = STUDENT.student_id AND (STUDENT.student_dept LIKE '%系') AND STUDENT.student_status = '在學' AND GRADES.select_result = '中選') AS R
    GROUP BY R.student_id
    HAVING AVG(course_score)<60
	) OR S.student_id IN ( 
    SELECT R.student_id
    FROM (SELECT GRADES.* FROM GRADES, STUDENT WHERE GRADES.student_id = STUDENT.student_id AND (STUDENT.student_dept LIKE '%所') AND STUDENT.student_status = '在學' AND GRADES.select_result = '中選') AS R
    GROUP BY R.student_id
    HAVING AVG(course_score)<70
    );
/*FROM CHEN's code*/
/*選出所有“單科有不及格”的學生資料*/
SELECT S.*
FROM STUDENT AS S
WHERE S.student_id in (
	SELECT R.student_id
    FROM (SELECT GRADES.* FROM GRADES, STUDENT WHERE GRADES.student_id = STUDENT.student_id 
          AND STUDENT.student_status = '在學' AND GRADES.select_result = '中選' AND ( (STUDENT.student_dept LIKE '%研究所%' AND GRADES.course_score < 70) OR GRADES.course_score < 60) ) AS R
    GROUP BY R.student_id
);
/*->CHECK
SELECT student_id, AVG(course_score)
FROM GRADES 
GROUP BY student_id
*/

/*4.以中選比例（中選人次/加選人次x100）推測1102學期受學生歡迎的熱門加選課程？*/
SET @a=0,@b=0;
SELECT R.*
FROM (
SELECT C.course_id, C.course_name,
(SELECT @a:=COUNT(*) AS P FROM GRADES AS W WHERE W.course_id = C.course_id AND W.select_result = '中選') AS pick,
(SELECT @b:=COUNT(*) AS U FROM GRADES AS Y WHERE Y.course_id = C.course_id AND Y.select_result = '落選') AS unpick,
(@a/(@a+@b))*100 AS picking_rate
FROM COURSE_INFO AS C
) AS R
ORDER BY R.picking_rate DESC;

/*5.請列出1102學期「線上課程」教學品量平均分數及總分，找出大受好評的線上課程*/
SET @crank=0;
SELECT @crank:=@crank+1 AS ranking, C.course_name, K.F, K.S
FROM COURSE_INFO AS C, (
	SELECT R.course_id, AVG(feedback_rank) AS F, SUM(feedback_rank) AS S
    FROM (SELECT GRADES.* FROM GRADES, STUDENT WHERE GRADES.student_id = STUDENT.student_id AND STUDENT.student_status = '在學' AND GRADES.select_result = '中選') AS R
    GROUP BY R.course_id
    ORDER BY F DESC) AS K
WHERE C.course_id = K.course_id;
