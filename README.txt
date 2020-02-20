BRFSS Procedure:
Data obtained from the Behavioral Risk Factor Surveillance System Annual Survey Data (https://www.cdc.gov/brfss/annual_data/annual_data.htm)
Used the SAS files provided by the BRFSS to convert the provided data in ASCII formats into permanent SAS datasets. Files used are provided.
-Variables names were given data labels through files provided by the BRFSS.

********************************
* HOW TO COMBINE SAS DATASETS: *
********************************
1. Download the BRFSS Data in ASCII Format from the BRFSS website (https://www.cdc.gov/brfss/annual_data/annual_data.htm)
2. Download all of the SAS Resources Files.
3. Open the SASOUT SAS program and follow isntructions to convert the data from ASCII to a permanent SAS Dataset.
4. Put all the SAS datasets into one folder.
5. Use BRFSS_Concat.sas to combine datasets. 

Modifications made to the datasets:
2008: INTVID length set to 5, MRACEASC converted from Char 6 to Num 8.
2009: MRACEASC converted from Char 6 to Num 8.
2010: MRACEASC converted from Char 6 to Num 8 RCVFVCH4 converted from Num 8 to Char 6.
2016: SEQNO converted from Char 10 to Num 10.
2018: SEQNO converted from Char 10 to Num 10.

Issues that occurred when trying to concatenate datasets but were resolved:
2008 2009: INTVID multiple lengths specified (solved by correcting intvid length)
2008 2010: INTVID multiple lengths specified (solved)
2008 2011: MRACEASC (2008 Char 6) (2011 Num 8)defined as both character and numeric (solved by converting 2008 MRACEASC to num)
2008 2012: MRACEASC defined as both character and numeric (solved)
2008 2013: No issue
2008 2014: No issue
2008 2015: No issue
2008 2016: SEQNO (2008 Num 8) (2016 Char 10) (2018 Char 10) has been defined as both character and numeric (solved)
2008 2017: No issue
2008 2018: SEQNO has been defined as both character and numeric (solved)

2009 2010: No issue
2009 2011: MRACEASC defined as both character and numeric (solved)
2009 2012: MRACEASC defined as both character and numeric (solved)
2009 2013: no issue
2009 2014: no issue
2009 2015: no issue
2009 2016: SEQNO has been defined as both character and numeric (solved)
2009 2017: no issue
2009 2018: SEQNO has been defined as both character and numeric (solved)

2010 2011: RCVFVCH4 (2010 Num 8) (2011 Char 6) has been defined as both character and numeric (solved by converting 2010 RCVFVCH4 to character)
2010 2012: RCVFVCH4 (2010 Num 8) (2012 Char 6) has been defined as both character and numeric (solved)
2010 2013: no issue
2010 2014: no issue
2010 2015: no issue
2010 2016: no issue
2010 2017: no issue
2010 2018: no issue

2011 2012: no issue
2011 2013: no issue
2011 2014: no issue
2011 2015: no issue
2011 2016: no issue
2011 2017: no issue
2011 2018: no issue

2012 2013: no issue
2012 2014: no issue
2012 2015: no issue
2012 2016: no issue
2012 2017: no issue
2012 2018: no issue

2013 2014: no issue
2013 2015: no issue
2013 2016: no issue
2013 2017: no issue
2013 2018: no issue

2014 2015: no issue
2014 2016: no issue
2014 2017: no issue
2014 2018: no issue

2015 2016: no issue
2015 2017: no issue
2015 2018: no issue

2016 2017: no issue
2016 2018: no issue

2017 2018: no issue