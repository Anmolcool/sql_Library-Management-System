-- Introduction
/** 
SQL makes it more effortless to interface with databases and structure a management information system. 
SQL Server Integration Services is very useful for huge companies having a huge amount of data to store and manage. 
It is difficult to store and collect data from various departments, but SQL’s visual studio can simplify these services. 
If you wish to become a pro in this programming language and analyze analysis services, you might require to work with basic SQL projects. 
Practicing more on a software analysis SQL project can be very useful to boost your career and let you garner relevant skills. 
This article will throw some light on a few SQL projects for beginners, intermediate, and advanced programmers.


You must acquire many skills to be adept in SQL, like manipulating SQL tables, indexes, databases, and the visual studio. 
Practicing more SQL projects can assist you to acquire multiple skills required to use this programming language professionally. 
Let us take a look at a few of the features of SQL that employers look for:

OLAP is a class of database apps that permits analysts to investigate data quickly with the help of a two-dimensional spreadsheet. 
This skill is essential if you wish to utilize SQL professionally. It allows you to gather numbers to comprehend the requirements of a business.  
PHP is another skill for any SQL developer. 
The proficiency of this tool will drive towards a more effortless way to interact with SQL database programs like MySQL. 
It is used when you need to create websites. 
Database Indexing Skills. Technical professionals can run queries a lot quicker with the help of database indexes. 
Also, these indexes make it more effortless for a query to target the preferred information. 
Comprehensive knowledge of indexes allows you to utilize them efficiently in SQL and lets you become a better software developer.
Joins skills make it effortless for you to collate data from various tables into one. 
Also, it becomes a lot effortless to investigate datasets from various sources. 
Generally, there are four types of joins including left, right, inner, and outer joins. 
Understanding when to utilize each will assist you to grow your SQL skills.
Subqueries are placed within queries or queries that lives within another statement. 
They are primarily used to connect data in various tables. This skill makes it faster to pull data and is very crucial for SQL professionals.


**/

/**
Significance of SQL

SQL allows clients to understand the knowledge bases, which comprise the information fields in the relational databases. 
We should take any huge company owning loads of information, for example. 
Information bases combine and accumulate every piece of information, yet the data must be critical and available. 
SQL comes to your aid here, it turns into a stage linked to both back-end and front-end information bases (PCs and information bases hung on workers).
SQL is one of the PC programming columns. The usage of SQL applies to every information base. 
If one asks why SQL is important, the explanation is very simple: it is the default method to manage information in the data sets, 
and it doesn’t create any difference as to which stage you use. 
Comprehending SQL has always been popular for information base trained professionals. 
Because of the above-mentioned reasons and many other critical specialties about SQL, 
beginners to experts are always on the lookout for project ideas for SQL. 
Thus, we have brought together some easy-to-advanced SQL project ideas. 
The SQL project ideas mentioned in this article are essential as they will assist you to refine your conceptual knowledge of SQL. 
Furthermore, these SQL projects will push your problem-solving skills.
**/
--                                             Library Management System
/**
The concept behind this project is to create a library management system that is capable to issue 
books and let consumers check different books and their titles categorically. 
It keeps track of all the details about the books in the library, their price, status, and the total number of books available in the Library. 
The user will find this automated system easy instead of using the manual writing system.
**/


/**

Features needed –

It has to be user-friendly
You can effortlessly create it in Asp.Net with the help of C# but with SQL queries become handy in extracting the required information
The Library Management System should have an entry for each book along with the details.
**/

create database lib_mang;
use lib_mang;

/**
Certainly! Here are the detailed descriptions for all eight tables based on the fields and constraints provided earlier, 
along with additional tables to complete the relationships:

### Table: `tbl_book`

- **book_BookID**:
  - **Type**: INT
  - **Description**: Unique identifier for each book.
  - **Constraints**: 
    - Primary key of the table.
    - Auto-incrementing starting at 1.
    - Cannot be NULL.

- **book_Title**:
  - **Type**: VARCHAR(100)
  - **Description**: Title of the book.
  - **Constraints**: 
    - Cannot be NULL.

- **book_PublisherName**:
  - **Type**: VARCHAR(100)
  - **Description**: Name of the publisher.
  - **Constraints**: 
    - Foreign key referencing `publisher_PublisherName` in `tbl_publisher` table.
    - Cascading updates and deletions.
    - Cannot be NULL.

### Table: `tbl_borrower`

- **borrower_CardNo**:
  - **Type**: INT
  - **Description**: Unique identifier for each borrower.
  - **Constraints**: 
    - Primary key of the table.
    - Auto-incrementing starting at 100.
    - Cannot be NULL.

- **borrower_BorrowerName**:
  - **Type**: VARCHAR(100)
  - **Description**: Name of the borrower.
  - **Constraints**: 
    - Cannot be NULL.

- **borrower_BorrowerAddress**:
  - **Type**: VARCHAR(200)
  - **Description**: Address of the borrower.
  - **Constraints**: 
    - Cannot be NULL.

- **borrower_BorrowerPhone**:
  - **Type**: VARCHAR(50)
  - **Description**: Phone number of the borrower.
  - **Constraints**: 
    - Cannot be NULL.

### Table: `tbl_publisher`

- **publisher_PublisherName**:
  - **Type**: VARCHAR(100)
  - **Description**: Name of the publisher.
  - **Constraints**: 
    - Primary key of the table.
    - Cannot be NULL.

### Table: `tbl_author`

- **author_AuthorID**:
  - **Type**: INT
  - **Description**: Unique identifier for each author.
  - **Constraints**: 
    - Primary key of the table.
    - Auto-incrementing starting at 1.
    - Cannot be NULL.

- **author_AuthorName**:
  - **Type**: VARCHAR(100)
  - **Description**: Name of the author.
  - **Constraints**: 
    - Cannot be NULL.

### Table: `tbl_book_author`

- **book_BookID**:
  - **Type**: INT
  - **Description**: Unique identifier for each book.
  - **Constraints**: 
    - Foreign key referencing `book_BookID` in `tbl_book` table.
    - Cannot be NULL.

- **author_AuthorID**:
  - **Type**: INT
  - **Description**: Unique identifier for each author.
  - **Constraints**: 
    - Foreign key referencing `author_AuthorID` in `tbl_author` table.
    - Cannot be NULL.

### Table: `tbl_library_branch`

- **branch_BranchID**:
  - **Type**: INT
  - **Description**: Unique identifier for each library branch.
  - **Constraints**: 
    - Primary key of the table.
    - Auto-incrementing starting at 1.
    - Cannot be NULL.

- **branch_BranchName**:
  - **Type**: VARCHAR(100)
  - **Description**: Name of the library branch.
  - **Constraints**: 
    - Cannot be NULL.

- **branch_BranchAddress**:
  - **Type**: VARCHAR(200)
  - **Description**: Address of the library branch.
  - **Constraints**: 
    - Cannot be NULL.

### Table: `tbl_book_copies`

- **book_BookID**:
  - **Type**: INT
  - **Description**: Unique identifier for each book.
  - **Constraints**: 
    - Foreign key referencing `book_BookID` in `tbl_book` table.
    - Cannot be NULL.

- **branch_BranchID**:
  - **Type**: INT
  - **Description**: Unique identifier for each library branch.
  - **Constraints**: 
    - Foreign key referencing `branch_BranchID` in `tbl_library_branch` table.
    - Cannot be NULL.

- **No_of_Copies**:
  - **Type**: INT
  - **Description**: Number of copies of the book available at the library branch.
  - **Constraints**: 
    - Cannot be NULL.


### Table: `tbl_book_loans`

- **loan_LoanID**:
  - **Type**: INT
  - **Description**: Unique identifier for each loan.
  - **Constraints**: 
    - Primary key of the table.
    - Auto-incrementing starting at 1.
    - Cannot be NULL.

- **book_BookID**:
  - **Type**: INT
  - **Description**: Unique identifier for each book.
  - **Constraints**: 
    - Foreign key referencing `book_BookID` in `tbl_book` table.
    - Cannot be NULL.

- **branch_BranchID**:
  - **Type**: INT
  - **Description**: Unique identifier for each library branch.
  - **Constraints**: 
    - Foreign key referencing `branch_BranchID` in `tbl_library_branch` table.
    - Cannot be NULL.

- **borrower_CardNo**:
  - **Type**: INT
  - **Description**: Unique identifier for each borrower.
  - **Constraints**: 
    - Foreign key referencing `borrower_CardNo` in `tbl_borrower` table.
    - Cannot be NULL.

- **DateOut**:
  - **Type**: DATE
  - **Description**: Date when the book was borrowed.
  - **Constraints**: 
    - Cannot be NULL.

- **DueDate**:
  - **Type**: DATE
  - **Description**: Date when the book is due to be returned.
  - **Constraints**: 
    - Cannot be NULL.

- **DateIn**:
  - **Type**: DATE
  - **Description**: Date when the book was returned.
  - **Constraints**: 
    - Can be NULL (since the book may not be returned yet).
   **/ 
    
/* ======================= TABLES ========================*/


	CREATE TABLE tbl_publisher (
		publisher_PublisherName VARCHAR(100) PRIMARY KEY NOT NULL,
		publisher_PublisherAddress VARCHAR(200) NOT NULL,
		publisher_PublisherPhone VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_book (
		book_BookID INT PRIMARY KEY NOT NULL auto_increment,
		book_Title VARCHAR(100) NOT NULL,
		book_PublisherName VARCHAR(100) NOT NULL,
        CONSTRAINT fk_publisher_name1 FOREIGN KEY(book_PublisherName) REFERENCES tbl_publisher(publisher_PublisherName) 
        ON UPDATE CASCADE ON DELETE CASCADE
	);

	CREATE TABLE tbl_library_branch (
		library_branch_BranchID INT PRIMARY KEY NOT NULL auto_increment,
		library_branch_BranchName VARCHAR(100) NOT NULL,
		library_branch_BranchAddress VARCHAR(200) NOT NULL
	);

	SELECT * FROM tbl_library_branch;

	CREATE TABLE tbl_borrower (
		borrower_CardNo INT PRIMARY KEY NOT NULL auto_increment,
		borrower_BorrowerName VARCHAR(100) NOT NULL,
		borrower_BorrowerAddress VARCHAR(200) NOT NULL,
		borrower_BorrowerPhone VARCHAR(50) NOT NULL
	);
    
    alter table tbl_borrower auto_increment = 100;

	SELECT * FROM tbl_borrower;

	CREATE TABLE tbl_book_loans (
		book_loans_LoansID INT PRIMARY KEY NOT NULL auto_increment,
		book_loans_BookID INT NOT NULL,
        CONSTRAINT fk_book_id1 FOREIGN KEY(book_loans_BookID) REFERENCES tbl_book(book_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
		book_loans_BranchID INT NOT NULL,
        CONSTRAINT fk_branch_id1 FOREIGN KEY(book_loans_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID) 
        ON UPDATE CASCADE ON DELETE CASCADE,
		book_loans_CardNo INT NOT NULL, 
        CONSTRAINT fk_cardno FOREIGN KEY(book_loans_CardNo) REFERENCES tbl_borrower(borrower_CardNo) ON UPDATE CASCADE ON DELETE CASCADE,
		book_loans_DateOut VARCHAR(50) NOT NULL,
		book_loans_DueDate VARCHAR(50) NOT NULL
	);

	SELECT * FROM tbl_book_loans;
		/* Use GETDATE() to retrieve the date values for Date out. Use DATEADD for the DueDate*/
	 
	CREATE TABLE tbl_book_copies (
		book_copies_CopiesID INT PRIMARY KEY NOT NULL auto_increment,
		book_copies_BookID INT NOT NULL,
        CONSTRAINT fk_book_id2 FOREIGN KEY(book_copies_BookID) REFERENCES tbl_book(book_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
		book_copies_BranchID INT NOT NULL, 
        CONSTRAINT fk_branch_id2 FOREIGN KEY(book_copies_BranchID) REFERENCES tbl_library_branch(library_branch_BranchID) 
        ON UPDATE CASCADE ON DELETE CASCADE,
		book_copies_No_Of_Copies INT NOT NULL
	);

	SELECT * FROM tbl_book_copies;

	CREATE TABLE tbl_book_authors (
		book_authors_AuthorID INT PRIMARY KEY NOT NULL auto_increment,
		book_authors_BookID INT NOT NULL,
        CONSTRAINT fk_book_id3 FOREIGN KEY(book_authors_BookID) REFERENCES tbl_book(book_BookID) ON UPDATE CASCADE ON DELETE CASCADE,
		book_authors_AuthorName VARCHAR(50) NOT NULL
	);

	SELECT * FROM tbl_book_authors;
    

/*======================== END TABLES ======================*/


/*==================== POPULATING TABLES ======================*/
	
	INSERT INTO tbl_publisher
		(publisher_PublisherName, publisher_PublisherAddress, publisher_PublisherPhone)
		VALUES
		('DAW Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Viking','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Signet Books','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Chilton Books','Not Available','Not Available'),
		('George Allen & Unwin','83 Alexander Ln, Crows Nest NSW 2065, Australia','+61-2-8425-0100'),
		('Alfred A. Knopf','The Knopf Doubleday Group Domestic Rights, 1745 Broadway, New York, NY 10019','212-940-7390'),		
		('Bloomsbury','Bloomsbury Publishing Inc., 1385 Broadway, 5th Floor, New York, NY 10018','212-419-5300'),
		('Shinchosa','Oga Bldg. 8, 2-5-4 Sarugaku-cho, Chiyoda-ku, Tokyo 101-0064 Japan','+81-3-5577-6507'),
		('Harper and Row','HarperCollins Publishers, 195 Broadway, New York, NY 10007','212-207-7000'),
		('Pan Books','175 Fifth Avenue, New York, NY 10010','646-307-5745'),
		('Chalto & Windus','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Harcourt Brace Jovanovich','3 Park Ave, New York, NY 10016','212-420-5800'),
		('W.W. Norton',' W. W. Norton & Company, Inc., 500 Fifth Avenue, New York, New York 10110','212-354-5500'),
		('Scholastic','557 Broadway, New York, NY 10012','800-724-6527'),
		('Bantam','375 Hudson Street, New York, NY 10014','212-366-2000'),
		('Picador USA','175 Fifth Avenue, New York, NY 10010','646-307-5745')		
	;

	SELECT * FROM tbl_publisher;

	INSERT INTO tbl_book
		(book_Title, book_PublisherName)
		VALUES 
		('The Name of the Wind', 'DAW Books'),
		('It', 'Viking'),
		('The Green Mile', 'Signet Books'),
		('Dune', 'Chilton Books'),
		('The Hobbit', 'George Allen & Unwin'),
		('Eragon', 'Alfred A. Knopf'),
		('A Wise Mans Fear', 'DAW Books'),
		('Harry Potter and the Philosophers Stone', 'Bloomsbury'),
		('Hard Boiled Wonderland and The End of the World', 'Shinchosa'),
		('The Giving Tree', 'Harper and Row'),
		('The Hitchhikers Guide to the Galaxy', 'Pan Books'),
		('Brave New World', 'Chalto & Windus'),
		('The Princess Bride', 'Harcourt Brace Jovanovich'),
		('Fight Club', 'W.W. Norton'),
		('Holes', 'Scholastic'),
		('Harry Potter and the Chamber of Secrets', 'Bloomsbury'),
		('Harry Potter and the Prisoner of Azkaban', 'Bloomsbury'),
		('The Fellowship of the Ring', 'George Allen & Unwin'),
		('A Game of Thrones', 'Bantam'),
		('The Lost Tribe', 'Picador USA');

	SELECT * FROM tbl_book WHERE book_PublisherName = 'George Allen & Unwin';

	INSERT INTO tbl_library_branch
		(library_branch_BranchName, library_branch_BranchAddress)
		VALUES
		('Sharpstown','32 Corner Road, New York, NY 10012'),
		('Central','491 3rd Street, New York, NY 10014'),
		('Saline','40 State Street, Saline, MI 48176'),
		('Ann Arbor','101 South University, Ann Arbor, MI 48104');

	/*UPDATE tbl_library_branch
	SET library_branch_BranchName = 'Central'
	WHERE library_branch_BranchID = 2;*/
	
	SELECT * FROM tbl_library_branch;

	INSERT INTO tbl_borrower
		(borrower_BorrowerName, borrower_BorrowerAddress, borrower_BorrowerPhone)
		VALUES
		('Joe Smith','1321 4th Street, New York, NY 10014','212-312-1234'),
		('Jane Smith','1321 4th Street, New York, NY 10014','212-931-4124'),
		('Tom Li','981 Main Street, Ann Arbor, MI 48104','734-902-7455'),
		('Angela Thompson','2212 Green Avenue, Ann Arbor, MI 48104','313-591-2122'),
		('Harry Emnace','121 Park Drive, Ann Arbor, MI 48104','412-512-5522'),
		('Tom Haverford','23 75th Street, New York, NY 10014','212-631-3418'),
		('Haley Jackson','231 52nd Avenue New York, NY 10014','212-419-9935'),
		('Michael Horford','653 Glen Avenue, Ann Arbor, MI 48104','734-998-1513');
	
	SELECT * FROM tbl_borrower;

	INSERT INTO tbl_book_loans
		(book_loans_BookID, book_loans_BranchID, book_loans_CardNo, book_loans_DateOut, book_loans_DueDate)
		VALUES
		('1','1','100','1/1/18','2/2/18'),
		('2','1','100','1/1/18','2/2/18'),
		('3','1','100','1/1/18','2/2/18'),
		('4','1','100','1/1/18','2/2/18'),
		('5','1','102','1/3/18','2/3/18'),
		('6','1','102','1/3/18','2/3/18'),
		('7','1','102','1/3/18','2/3/18'),
		('8','1','102','1/3/18','2/3/18'),
		('9','1','102','1/3/18','2/3/18'),
		('11','1','102','1/3/18','2/3/18'),
		('12','2','105','12/12/17','1/12/18'),
		('10','2','105','12/12/17','1/12/17'),
		('20','2','105','2/3/18','3/3/18'),
		('18','2','105','1/5/18','2/5/18'),
		('19','2','105','1/5/18','2/5/18'),
		('19','2','100','1/3/18','2/3/18'),
		('11','2','106','1/7/18','2/7/18'),
		('1','2','106','1/7/18','2/7/18'),
		('2','2','100','1/7/18','2/7/18'),
		('3','2','100','1/7/18','2/7/18'),
		('5','2','105','12/12/17','1/12/18'),
		('4','3','103','1/9/18','2/9/18'),
		('7','3','102','1/3/18','2/3/18'),
		('17','3','102','1/3/18','2/3/18'),
		('16','3','104','1/3/18','2/3/18'),
		('15','3','104','1/3/18','2/3/18'),
		('15','3','107','1/3/18','2/3/18'),
		('14','3','104','1/3/18','2/3/18'),
		('13','3','107','1/3/18','2/3/18'),
		('13','3','102','1/3/18','2/3/18'),
		('19','3','102','12/12/17','1/12/18'),
		('20','4','103','1/3/18','2/3/18'),
		('1','4','102','1/12/18','2/12/18'),
		('3','4','107','1/3/18','2/3/18'),
		('18','4','107','1/3/18','2/3/18'),
		('12','4','102','1/4/18','2/4/18'),
		('11','4','103','1/15/18','2/15/18'),
		('9','4','103','1/15/18','2/15/18'),
		('7','4','107','1/1/18','2/2/18'),
		('4','4','103','1/1/18','2/2/18'),
		('1','4','103','2/2/17','3/2/18'),
		('20','4','103','1/3/18','2/3/18'),
		('1','4','102','1/12/18','2/12/18'),
		('3','4','107','1/13/18','2/13/18'),
		('18','4','107','1/13/18','2/13/18'),
		('12','4','102','1/14/18','2/14/18'),
		('11','4','103','1/15/18','2/15/18'),
		('9','4','103','1/15/18','2/15/18'),
		('7','4','107','1/19/18','2/19/18'),
		('4','4','103','1/19/18','2/19/18'),
		('1','4','103','1/22/18','2/22/18');

		
	SELECT * FROM tbl_book_loans;

	INSERT INTO tbl_book_copies
		(book_copies_BookID, book_copies_BranchID, book_copies_No_Of_Copies)
		VALUES
		('1','1','5'),
		('2','1','5'),
		('3','1','5'),
		('4','1','5'),
		('5','1','5'),
		('6','1','5'),
		('7','1','5'),
		('8','1','5'),
		('9','1','5'),
		('10','1','5'),
		('11','1','5'),
		('12','1','5'),
		('13','1','5'),
		('14','1','5'),
		('15','1','5'),
		('16','1','5'),
		('17','1','5'),
		('18','1','5'),
		('19','1','5'),
		('20','1','5'),
		('1','2','5'),
		('2','2','5'),
		('3','2','5'),
		('4','2','5'),
		('5','2','5'),
		('6','2','5'),
		('7','2','5'),
		('8','2','5'),
		('9','2','5'),
		('10','2','5'),
		('11','2','5'),
		('12','2','5'),
		('13','2','5'),
		('14','2','5'),
		('15','2','5'),
		('16','2','5'),
		('17','2','5'),
		('18','2','5'),
		('19','2','5'),
		('20','2','5'),
		('1','3','5'),
		('2','3','5'),
		('3','3','5'),
		('4','3','5'),
		('5','3','5'),
		('6','3','5'),
		('7','3','5'),
		('8','3','5'),
		('9','3','5'),
		('10','3','5'),
		('11','3','5'),
		('12','3','5'),
		('13','3','5'),
		('14','3','5'),
		('15','3','5'),
		('16','3','5'),
		('17','3','5'),
		('18','3','5'),
		('19','3','5'),
		('20','3','5'),
		('1','4','5'),
		('2','4','5'),
		('3','4','5'),
		('4','4','5'),
		('5','4','5'),
		('6','4','5'),
		('7','4','5'),
		('8','4','5'),
		('9','4','5'),
		('10','4','5'),
		('11','4','5'),
		('12','4','5'),
		('13','4','5'),
		('14','4','5'),
		('15','4','5'),
		('16','4','5'),
		('17','4','5'),
		('18','4','5'),
		('19','4','5'),
		('20','4','5');

	SELECT * FROM tbl_book_copies;
 

	INSERT INTO tbl_book_authors
		(book_authors_BookID,book_authors_AuthorName)
		VALUES
		('1','Patrick Rothfuss'),
		('2','Stephen King'),
		('3','Stephen King'),
		('4','Frank Herbert'),
		('5','J.R.R. Tolkien'),
		('6','Christopher Paolini'),
		('6','Patrick Rothfuss'),
		('8','J.K. Rowling'),
		('9','Haruki Murakami'),
		('10','Shel Silverstein'),
		('11','Douglas Adams'),
		('12','Aldous Huxley'),
		('13','William Goldman'),
		('14','Chuck Palahniuk'),
		('15','Louis Sachar'),
		('16','J.K. Rowling'),
		('17','J.K. Rowling'),
		('18','J.R.R. Tolkien'),
		('19','George R.R. Martin'),
		('20','Mark Lee');

	SELECT * FROM tbl_book_authors;
	/*============================== END POPULATING TABLES ==============================*/
    
    
    /* =================== STORED PROCEDURE QUERY QUESTIONS =================================== */

select *from tbl_publisher;
select *from tbl_book;
select *from tbl_library_branch;
select *from tbl_borrower;
select *from tbl_borrower;
select *from tbl_book_loans;
select *from tbl_book_copies;
select *from tbl_book_authors;
/* #1- How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"? */

-- library branch
    
    select *from tbl_book
    where book_Title = 'The Lost Tribe';
    
    SELECT *, 
       COUNT(book_BookID) OVER (PARTITION BY book_Title) AS book_copies
FROM tbl_book
WHERE book_Title = 'The Lost Tribe';

-- book_BookID, book_Title, book_PublisherName
-- 	20	The Lost Tribe	Picador USA

select library_branch_BranchID 
from tbl_library_branch
where library_branch_BranchName = 'Sharpstown';

-- Sharpstown = 1

select *from tbl_book_copies;

select book_copies_BookID, book_copies_BranchID, book_copies_No_Of_Copies
from tbl_book_copies
where book_copies_BookID = 20 and book_copies_BranchID = 1;

-- 	book_copies_BookID	book_copies_BranchID	book_copies_No_Of_Copies
--	       20	                       1	                     5


/* #2- How many copies of the book titled "The Lost Tribe" are owned by each library branch? */
select *from tbl_book;
select *
from tbl_book
where book_Title = 'The Lost Tribe'; 

select *from tbl_book;
select *from tbl_library_branch;
select *from tbl_book_copies;
select *from tbl_book_authors;


-- book_BookID, book_Title, book_PublisherName
-- 	20	The Lost Tribe	Picador USA

select *
from tbl_book_copies
where book_copies_BookID = 20;

/*book_copies_CopiesID, book_copies_BookID, book_copies_BranchID, book_copies_No_Of_Copies
20	20	1	5
40	20	2	5
60	20	3	5
80	20	4	5   */

-- 5 copies from each branch			

/* #3- Retrieve the names of all borrowers who do not have any books checked out. */
-- (this means name of all the borrow how return the book)
select *from tbl_borrower;
select *from tbl_book_loans;  /*this tells the borrower how still not return the book*/

SELECT distinct E.borrower_BorrowerName 
FROM tbl_borrower E inner join tbl_book_loans Es 
where E.borrower_CardNo != Es.book_loans_CardNo;


DELIMITER //

CREATE PROCEDURE NoLoans()
BEGIN
    SELECT borrower_BorrowerName 
    FROM tbl_borrower b
    WHERE NOT EXISTS (						
        SELECT 1
        FROM tbl_book_loans bl				
        WHERE bl.book_loans_CardNo = b.borrower_CardNo
    );
END //

DELIMITER ;
/* SELECT 1 Explanation:SELECT 1 simply means that the subquery will 
    return a row with the constant value 1 for each row in 
    tbl_book_loans that matches the condition.
The value 1 itself is not used in the main query’s result; rather, 
it is used to check the presence of matching rows.   */
drop procedure NoLoans;
CALL NoLoans();

select *from tbl_book;
select 1
from tbl_book
where book_BookID = 20;



/* #4- For each book that is loaned out from the "Sharpstown" 
branch and whose DueDate is today('2/3/18'), retrieve the book title, 
the borrower's name, and the borrower's address.  */

select *from tbl_book;
select *from tbl_borrower;
select *from tbl_book_loans;
select *from tbl_book_copies;
select *from tbl_book_authors;
select *from tbl_library_branch;

select distinct B.book_Title, Br.borrower_BorrowerName, Br.borrower_BorrowerAddress 
from tbl_book_loans L
inner join tbl_borrower Br
inner join tbl_book B
where L.book_loans_BranchID = 1
and str_to_date(L.book_loans_DueDate, '%d/%m/%y') = str_to_date('2/3/18', '%d/%m/%yy');

delete from tbl_book_loans 
where book_loans_LoansID is NULL;

DELETE FROM tbl_book_loans 
WHERE book_loans_LoansID IS NULL;

/* #5- For each library branch, retrieve the branch name and 
the total number of books loaned out from that branch.  */
select *from tbl_library_branch;
select *from tbl_book_loans;


SELECT B.library_branch_BranchName, COUNT(L.book_loans_BookID) AS count_book
FROM tbl_library_branch B
INNER JOIN tbl_book_loans L ON L.book_loans_BranchID = B.library_branch_BranchID
GROUP BY B.library_branch_BranchID;



/* #6- Retrieve the names, addresses, and number of books checked 
out for all borrowers who have more than five books checked out. */
select *from tbl_borrower;  -- books has taken
select *from tbl_book_loans; -- books not return

select B.borrower_BorrowerName, B.borrower_BorrowerAddress, B.borrower_BorrowerPhone,
count(distinct L.book_loans_BookID) as count_book
from tbl_borrower B
inner join tbl_book_loans L 
where B.borrower_CardNo = L.book_loans_CardNo
group by L.book_loans_CardNo
having count(distinct book_loans_BookID) > 5;


/* #7- For each book authored by "Stephen King", retrieve the title and 
the number of copies owned by the library branch whose name is "Central".*/

select *from tbl_book_copies;
select *from tbl_book;
select *from tbl_book_authors;
select *from tbl_library_branch;

select distinct B.book_Title, C.book_copies_No_Of_Copies, Ba.book_authors_AuthorName
from tbl_book B
inner join tbl_book_authors Ba
inner join tbl_book_copies C 
inner join tbl_library_branch L 
where Ba.book_authors_AuthorName = 'Stephen King' 
and L.library_branch_BranchID = 2;
