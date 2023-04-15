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
SELECT @crank:=@crank+1, C.course_name, K.F, K.S
FROM COURSE_INFO AS C, (
	SELECT R.course_id, AVG(feedback_rank) AS F, SUM(feedback_rank) AS S
    FROM (SELECT GRADES.* FROM GRADES, STUDENT WHERE GRADES.student_id = STUDENT.student_id AND STUDENT.student_status = '在學' AND GRADES.select_result = '中選') AS R
    GROUP BY R.course_id
    ORDER BY F DESC) AS K
WHERE C.course_id = K.course_id;