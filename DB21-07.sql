CREATE DATABASE study DEFAULT CHARACTER SET utf8;
use study;

DROP TABLE IF EXISTS subject;
CREATE TABLE subject
 (subjectno CHAR(3) NOT NULL,
  subjectname  NCHAR(12) NOT NULL,
  unit  INT,
  PRIMARY KEY(subjectno),
  CHECK(unit BETWEEN 1 AND 12)
);

DROP TABLE IF EXISTS student;
CREATE TABLE student
 (stdntno CHAR(5) NOT NULL,
  name CHAR(26) NOT NULL,
  major CHAR(30),
  address CHAR(60)
);

DROP TABLE IF EXISTS regist;
CREATE TABLE regist
 (subjectno CHAR(3) NOT NULL,
  stdntno CHAR(5) NOT NULL,
  record     INTEGER,
  PRIMARY  KEY(subjectno,stdntno),
  FOREIGN  KEY(subjectno)
           REFERENCES subject(subjectno)
);

DROP TABLE IF EXISTS task;
CREATE TABLE task
 (subjectno CHAR(3) NOT NULL,
  taskno CHAR(2) NOT NULL,
  taskname CHAR(60)
);

INSERT INTO subject VALUES
 ('001','データベース',2);
INSERT INTO subject VALUES
 ('002','システムプログラム',3);
INSERT INTO subject VALUES
 ('003','セキュリティ',2);

INSERT INTO student VALUES
 ('00001','山田一郎','情報工学','東京都');
INSERT INTO student VALUES
 ('00002','鈴木明','情報工学','茨城県');
INSERT INTO student VALUES
 ('00003','佐藤花子','情報工学','東京都');
INSERT INTO student VALUES
 ('00004','田中太郎','統計学','神奈川県');

INSERT INTO regist VALUES
 ('001','00001',90);
INSERT INTO regist VALUES
 ('001','00002',80);
INSERT INTO regist VALUES
 ('002','00001',90);
INSERT INTO regist VALUES
 ('002','00003',70);
INSERT INTO regist VALUES
 ('003','00001',60);

INSERT INTO task VALUES
 ('001','01','データモデリング');
INSERT INTO task VALUES
 ('001','02','データベース設計');
INSERT INTO task VALUES
 ('001','03','SQL');
INSERT INTO task VALUES
 ('001','01','Cプログラミング');
INSERT INTO task VALUES
 ('002','02','テーブル設計');

