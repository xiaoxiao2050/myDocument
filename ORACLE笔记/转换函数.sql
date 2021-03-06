

EMPNO ENAME      JOB         MGR HIREDATE          SAL      COMM DEPTNO
----- ---------- --------- ----- ----------- --------- --------- ------
 7369 SMITH      CLERK      7902 1980/12/17     800.00               20
 7499 ALLEN      SALESMAN   7698 1981/2/20     1600.00    300.00     30
 7521 WARD       SALESMAN   7698 1981/2/22     1250.00    500.00     30
 7566 JONES      MANAGER    7839 1981/4/2      2975.00               20
 7654 MARTIN     SALESMAN   7698 1981/9/28     1250.00   1400.00     30
 7698 BLAKE      MANAGER    7839 1981/5/1      2850.00               30
 7782 CLARK      MANAGER    7839 1981/6/9      2450.00               10
 7839 KING       PRESIDENT       1981/11/17    5000.00               10
 7844 TURNER     SALESMAN   7698 1981/9/8      1500.00      0.00     30
 7900 JAMES      CLERK      7698 1981/12/3      950.00               30
 7902 FORD       ANALYST    7566 1981/12/3     3000.00               20
 7934 MILLER     CLERK      7782 1982/1/23     1300.00               10
 1234 SHUNPING   MANAGER         1983/1/1      2342.34     66.66     10

13 rows selected


ENAME      TO_CHAR(HIREDATE,'YYYY-MM-DDHH
---------- ------------------------------
SMITH      1980-12-17 00:00:00
ALLEN      1981-02-20 00:00:00
WARD       1981-02-22 00:00:00
JONES      1981-04-02 00:00:00
MARTIN     1981-09-28 00:00:00
BLAKE      1981-05-01 00:00:00
CLARK      1981-06-09 00:00:00
KING       1981-11-17 00:00:00
TURNER     1981-09-08 00:00:00
JAMES      1981-12-03 00:00:00
FORD       1981-12-03 00:00:00
MILLER     1982-01-23 00:00:00
SHUNPING   1983-01-01 00:00:00

13 rows selected


select ename, to_char(hiredate,'yyyy-mm-dd hh24:mi:ss'),to_char(sal,L99999.99) from emp

ORA-00907: ȱʧ������


ENAME      TO_CHAR(HIREDATE,'YYYY-MM-DDHH TO_CHAR(SAL,'L99999.99')
---------- ------------------------------ ------------------------
SMITH      1980-12-17 00:00:00                       ��800.00
ALLEN      1981-02-20 00:00:00                      ��1600.00
WARD       1981-02-22 00:00:00                      ��1250.00
JONES      1981-04-02 00:00:00                      ��2975.00
MARTIN     1981-09-28 00:00:00                      ��1250.00
BLAKE      1981-05-01 00:00:00                      ��2850.00
CLARK      1981-06-09 00:00:00                      ��2450.00
KING       1981-11-17 00:00:00                      ��5000.00
TURNER     1981-09-08 00:00:00                      ��1500.00
JAMES      1981-12-03 00:00:00                       ��950.00
FORD       1981-12-03 00:00:00                      ��3000.00
MILLER     1982-01-23 00:00:00                      ��1300.00
SHUNPING   1983-01-01 00:00:00                      ��2342.34

13 rows selected

Name     Type         Nullable Default Comments 
-------- ------------ -------- ------- -------- 
EMPNO    NUMBER(4)                              
ENAME    VARCHAR2(10) Y                         
JOB      VARCHAR2(9)  Y                         
MGR      NUMBER(4)    Y                         
HIREDATE DATE         Y                         
SAL      NUMBER(7,2)  Y                         
COMM     NUMBER(7,2)  Y                         
DEPTNO   NUMBER(2)    Y                         


ENAME      TO_CHAR(HIREDATE,'YYYY-MM-DDHH TO_CHAR(SAL,'L99,999.99')
---------- ------------------------------ -------------------------
SMITH      1980-12-17 00:00:00                        ��800.00
ALLEN      1981-02-20 00:00:00                      ��1,600.00
WARD       1981-02-22 00:00:00                      ��1,250.00
JONES      1981-04-02 00:00:00                      ��2,975.00
MARTIN     1981-09-28 00:00:00                      ��1,250.00
BLAKE      1981-05-01 00:00:00                      ��2,850.00
CLARK      1981-06-09 00:00:00                      ��2,450.00
KING       1981-11-17 00:00:00                      ��5,000.00
TURNER     1981-09-08 00:00:00                      ��1,500.00
JAMES      1981-12-03 00:00:00                        ��950.00
FORD       1981-12-03 00:00:00                      ��3,000.00
MILLER     1982-01-23 00:00:00                      ��1,300.00
SHUNPING   1983-01-01 00:00:00                      ��2,342.34

13 rows selected


ENAME      TO_CHAR(HIREDATE,'YYYY-MM-DDHH TO_CHAR(SAL,'C99,999.99')
---------- ------------------------------ -------------------------
SMITH      1980-12-17 00:00:00                    CNY800.00
ALLEN      1981-02-20 00:00:00                  CNY1,600.00
WARD       1981-02-22 00:00:00                  CNY1,250.00
JONES      1981-04-02 00:00:00                  CNY2,975.00
MARTIN     1981-09-28 00:00:00                  CNY1,250.00
BLAKE      1981-05-01 00:00:00                  CNY2,850.00
CLARK      1981-06-09 00:00:00                  CNY2,450.00
KING       1981-11-17 00:00:00                  CNY5,000.00
TURNER     1981-09-08 00:00:00                  CNY1,500.00
JAMES      1981-12-03 00:00:00                    CNY950.00
FORD       1981-12-03 00:00:00                  CNY3,000.00
MILLER     1982-01-23 00:00:00                  CNY1,300.00
SHUNPING   1983-01-01 00:00:00                  CNY2,342.34

13 rows selected


ENAME      TO_CHAR(HIREDATE,'YYYY-MM-DDHH TO_CHAR(SAL,'$99,999.99')
---------- ------------------------------ -------------------------
SMITH      1980-12-17 00:00:00                $800.00
ALLEN      1981-02-20 00:00:00              $1,600.00
WARD       1981-02-22 00:00:00              $1,250.00
JONES      1981-04-02 00:00:00              $2,975.00
MARTIN     1981-09-28 00:00:00              $1,250.00
BLAKE      1981-05-01 00:00:00              $2,850.00
CLARK      1981-06-09 00:00:00              $2,450.00
KING       1981-11-17 00:00:00              $5,000.00
TURNER     1981-09-08 00:00:00              $1,500.00
JAMES      1981-12-03 00:00:00                $950.00
FORD       1981-12-03 00:00:00              $3,000.00
MILLER     1982-01-23 00:00:00              $1,300.00
SHUNPING   1983-01-01 00:00:00              $2,342.34

13 rows selected


EMPNO ENAME      JOB         MGR HIREDATE          SAL      COMM DEPTNO
----- ---------- --------- ----- ----------- --------- --------- ------
 7369 SMITH      CLERK      7902 1980/12/17     800.00               20


TO_DATE('1999-1-21','YYYY-MM-D
------------------------------
1999/1/21

