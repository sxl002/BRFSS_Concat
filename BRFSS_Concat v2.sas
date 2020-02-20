/*********************************************************
Program Name: BRFSS_Concat v2

Programmer's Name: Stephen Li

Date Created: 2.18.2020

Purpose: To Concatenate BRFSS data into 1 data file
*********************************************************/

/********************************************************
See readme for potential issues that popped up with 
concatenating datasets.
*********************************************************/

/*******************************
 Clear Output and Log Windows 
********************************/
DM OUTPUT 'clear' continue;
DM LOG    'clear' continue;

/*******************************
 Define SAS Environment Options
********************************/
OPTIONS pageno=1;

/***********************************
 Clear Existing Titles and Footnotes
************************************/
TITLE;
FOOTNOTE;
RUN;

/********************************************************
NOTE: Please replace LIBNAME with filepath where the
datasets are located.
*********************************************************/
LIBNAME BRFSS "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets";




/********************************************************
BRFSS_****: New datasets, modified from DATA**** datasets
DATA****: Original datasets, do not alter
*********************************************************/

/*2008*/
DATA BRFSS.BRFSS_2008;
	length INTVID $5; /*corrects INTVID length differences*/
	set BRFSS.DATA2008;

	MRACEASC_num=input(substr(MRACEASC,1,6),8.); /*converts MRACEASC from Char 6 to Num 8*/
	drop MRACEASC;
	rename MRACEASC_num=MRACEASC;
RUN;

/*Creates 2008 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2008 noprint out=BRFSS.VARIABLELIST_2008 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2008;
	by VARNUM;
RUN;

/*2009*/
DATA BRFSS.BRFSS_2009;
	set BRFSS.DATA2009;
	
	MRACEASC_num=input(substr(MRACEASC,1,6),8.); /*converts MRACEASC from Char 6 to Num 8*/
	drop MRACEASC;
	rename MRACEASC_num=MRACEASC;
RUN;

/*Creates 2009 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2009 noprint out=BRFSS.VARIABLELIST_2009 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2009;
	by VARNUM;
RUN;

/*2010*/
DATA BRFSS.BRFSS_2010;
	set BRFSS.DATA2010;

	MRACEASC_num=input(substr(MRACEASC,1,6),8.); /*converts MRACEASC from Char 6 to Num 8*/
	drop MRACEASC;
	rename MRACEASC_num=MRACEASC;

	RCVFVCH4_char=put(RCVFVCH4,6.); /*converts RCVFVCH$ from Num 8 to Char 6*/
	drop RCVFVCH4;
	rename RCVFVCH4_char=RCVFVCH4;
RUN;

/*Creates 2010 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2010 noprint out=BRFSS.VARIABLELIST_2010 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2010;
	by VARNUM;
RUN;

/*2011*/
DATA BRFSS.BRFSS_2011;
	set BRFSS.DATA2011;
RUN;

/*Creates 2011 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2011 noprint out=BRFSS.VARIABLELIST_2011 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2011;
	by VARNUM;
RUN;

/*2012*/
DATA BRFSS.BRFSS_2012;
	set BRFSS.DATA2012;
RUN;

/*Creates 2012 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2012 noprint out=BRFSS.VARIABLELIST_2012 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2012;
	by VARNUM;
RUN;

/*2013*/
DATA BRFSS.BRFSS_2013;
	set BRFSS.DATA2013;
RUN;

/*Creates 2013 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2013 noprint out=BRFSS.VARIABLELIST_2013 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2013;
	by VARNUM;
RUN;

/*2014*/
DATA BRFSS.BRFSS_2014;
	set BRFSS.DATA2014;
RUN;

/*Creates 2014 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2014 noprint out=BRFSS.VARIABLELIST_2014 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2014;
	by VARNUM;
RUN;

/*2015*/
DATA BRFSS.BRFSS_2015;
	set BRFSS.DATA2015;
RUN;

/*Creates 2015 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2015 noprint out=BRFSS.VARIABLELIST_2015 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2015;
	by VARNUM;
RUN;

/*2016*/
DATA BRFSS.BRFSS_2016;
	set BRFSS.DATA2016;

	SEQNO_num=input(substr(SEQNO,1,10),10.); /*converts SEQNO from Char 10 to Num 10*/
	drop SEQNO;
	rename SEQNO_num=SEQNO;
RUN;

/*Creates 2016 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2016 noprint out=BRFSS.VARIABLELIST_2016 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2016;
	by VARNUM;
RUN;

/*2017*/
DATA BRFSS.BRFSS_2017;
	set BRFSS.DATA2017;
RUN;

/*Creates 2017 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2017 noprint out=BRFSS.VARIABLELIST_2017 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2017;
	by VARNUM;
RUN;

/*2018*/
DATA BRFSS.BRFSS_2018;
	set BRFSS.DATA2018;

	SEQNO_num=input(substr(SEQNO,1,10),10.); /*converts MRACEASC from Char 10 to Num 10*/
	drop SEQNO;
	rename SEQNO_num=SEQNO;
RUN;

/*Creates 2018 variable list*/
PROC CONTENTS data = BRFSS.BRFSS_2018 noprint out=BRFSS.VARIABLELIST_2018 (keep=NAME LABEL VARNUM);
RUN;

PROC SORT data=BRFSS.VARIABLELIST_2018;
	by VARNUM;
RUN;




/********************************************************
Used to check potential errors. Doesn't need to be
uncommented.

*********************************************************/
/*
Proc Print data=BRFSS.BRFSS_2011;
	Var MRACEASC;
Run;

Proc Freq data=BRFSS.BRFSS_2018;
	table SEQNO;
Run;
*/




/********************************************************
Use the below functions to concatenate datasets.
WARNING: Datasets are very large. It is recommended to 
carefully pick and choose what variables to select.

Use VariableLists2008-2018.xlsx in the Codebooks folder
to select what variables you want to keep by selecting
and copying down the variable list, and pasting after the
'keep' statement.
*********************************************************/

/* From 2008 to 2013, inclusive*/
DATA BRFSS.BRFSS_2008_2013;
	set 	BRFSS.BRFSS_2008
			BRFSS.BRFSS_2009
			BRFSS.BRFSS_2010
			BRFSS.BRFSS_2011
			BRFSS.BRFSS_2012
			BRFSS.BRFSS_2013
;
/* what variables you want to include in the dataset*/
	keep 	_STATE
			_GEOSTR
			_DENSTR2
			PRECALL
			REPNUM
			REPDEPTH
			FMONTH
			IDATE
			IMONTH
			IDAY
			IYEAR
			INTVID
			DISPCODE
			SEQNO
			_PSU
			NATTMPTS
			NRECSEL
			NRECSTR
			CTELENUM
			CELLFON
;
RUN;

/*From 2014 to 2018, inclusive*/
DATA BRFSS.BRFSS_2014_2018;
	set 	BRFSS.BRFSS_2014
			BRFSS.BRFSS_2015
			BRFSS.BRFSS_2016
			BRFSS.BRFSS_2017
			BRFSS.BRFSS_2018
;
/*what variables you want to include in the dataset*/
	keep	_STATE
			FMONTH
			IDATE
			IMONTH
			IDAY
			IYEAR
			DISPCODE
			_PSU
			CTELENM1
			PVTRESD1
			COLGHOUS
			STATERE1
			CELLFON4
			LADULT
			NUMADULT
			NUMMEN
			NUMWOMEN
			SAFETIME
			CTELNUM1
			CELLFON5
;
RUN;

/********************************************************
Use below function to export datasets
********************************************************/

/*
PROC EXPORT DATA= BRFSS.BRFSS_COMBINED
            OUTFILE= "*REPLACE WITH FILEPATH HERE*" 
            DBMS=CSV LABEL REPLACE;
     		PUTNAMES=YES;
RUN;
*/

/*Exports the combined datasets to a CSV file*/

PROC EXPORT DATA= BRFSS.BRFSS_2008_2013
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\BRFSS_2008_2013.CSV" 
            DBMS=CSV LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.BRFSS_2014_2018
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\BRFSS_2014_2018.CSV" 
            DBMS=CSV LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

/* Exports variable lists to an Excel file*/

/*
PROC EXPORT DATA= BRFSS.VARIABLELIST_2008
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2008.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2009
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2009.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2010
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2010.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2011
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2011.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2012
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2012.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2013
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2013.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2014
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2014.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2015
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2015.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2016
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2016.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2017
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2017.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;

PROC EXPORT DATA= BRFSS.VARIABLELIST_2018
            OUTFILE= "C:\Users\sli\Documents\Datasets\BRFSS Annual Survey Data\Datasets\variablelist_2018.xlsx" 
            DBMS=XLSX LABEL REPLACE;
     		PUTNAMES=YES;
RUN;
*/
