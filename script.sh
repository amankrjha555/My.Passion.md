#!/bin/bash

PWD=`/usr/bin/pwd`

#Here we given the path of configuration file using source command
#if condition is true then print error in sheet otherwise go to the else.
#Here wget command is used to download spreadsheet 1 with the help of url
#Here the exact column  Intern Name is found.
#Here $CAT is used to show the contents of a file.
#GREP is used to find the row with a specific name.
#-i is used to find letters whether the letter is in upercase or in lowercase.
#Here tr command is used to translate and delete characters.
#Here wc -c command is used to count commas.
#The below command  shows the total number of commas.
#ADD1 is used to add 1 to the total number of commas.
#PLUS1 is used to get the exact column no.
#Here $ cat is used to show the contents of a file.
#$TAIL -n + 4 is used to not show the beginning 4 line of the file.
#$AWK is used to extract the required column and print the Name Sum and Average.
#Extracting value from average1 $ PLUS1
#extracting value from name1 $ PLUS2
#Extracting value from x $ value1

source $PWD/script.conf

if [ $URL1 = 0 ]

then

$ECHO "This error for sheet1"

else

$ECHO "==================First sheet output==================="

$ECHO "==================First sheet output===================" > $DATADIR1


$WGET $WGETOPT1 $URL1 $WGETOPT2 $FILENAME1

COUNT1=$($CAT $FILENAME1 | $GREP $GREPOPT1 $NAMECOL | $AWK -F "$INTERNCOL" '{print $1}'|$TR $TROPT1 , | $WC $WCOPT1)

$ECHO "$DATE [count commas] count the no of commas before the Intern name $COUNT1" >> "$LOG" #Collect logs in log file

ADD1=1

$ECHO "$(date) [add 1 in the previous result of commas] $ADD1" >> "$LOG" #Collect logs in log file


PLUS1=$((COUNT1+ADD1))

$ECHO "$(date) [total commas for extract the Intern name column ] $PLUS1" >> "$LOG" #Collect logs in log file

$ECHO "Afetr adding 1 total commas before Intern Name column $PLUS1"

COUNT2=$($CAT $FILENAME1 | $GREP $GREPOPT1 $avgcolumn | $AWK $AWKOPT1 "$AVGCOLUMN" '{print $1}'|$TR $TROPT1 , | $WC $WCOPT1)

$ECHO "$(date) [count commas] count the no of commas before the Average $COUNT2" >> "$LOG" #Collect logs in log file

ADD2=1

$ECHO "$(date) [add 1 in the total no of commas before average column to get the exact average column] $ADD2" >> "$LOG" #Collect logs in log file

PLUS2=$((COUNT2+ADD2))

$ECHO "$(date) [commas for extract the average column] $PLUS2" >> "$LOG" #Collect logs in log file

$ECHO "After adding 1 total commas before Average column $PLUS2"

#=====================================================================================================================#
$ECHO "Without adding 1 total commas before Intern Name $COUNT1"

$ECHO "Without adding 1 total commas before Average $COUNT2"

AUTOMUL=$((COUNT2-COUNT1))

$ECHO "diffrence of Intern name and Average$AUTOMUL"

VAL1=1

ACTVAL=$((AUTOMUL-VAL1))

$ECHO "pls multiply by this numbere=$ACTVAL"

#========================================================================================================================#

$CAT $FILENAME1 | $TAIL -n+5 | awk -F "," '{print "Name : ",$name1, "\n", "Sum : ",$average1*z, "\n", "Avg : ",$average1, "\n"}' name1=$PLUS1 average1=$PLUS2 z=$ACTVAL

$ECHO "$(date) [output for sheet 1] successfully print sheet1 the required output" >> "$LOG" #Collect logs in log file

output1=`$CAT $FILENAME1 | $TAIL -n+5 | awk -F "," '{print "Name : ",$name1, "\n", "Sum : ",$average1*z, "\n", "Avg : ",$average1, "\n"}' name1=$PLUS1 average1=$PLUS2 z=$ACTVAL`


$ECHO "$output1" >> $DATADIR1

fi

###############################################################################################################################################################


if [ $URL2 = 0 ]

then

$ECHO "This error for sheet2"

else

$ECHO "==================Second sheet output==================="

$ECHO "==================Second sheet output===================" >> $DATADIR1


$WGET $WGETOPT1 $URL2 $WGETOPT2 $FILENAME2

$ECHO "$(date) [wget command] download the csv file using wget command $WGET $WGETOPT1 $MYURL02" >> "$LOG" #Collect logs in log file

COUNT11=$($CAT $FILENAME2 | $GREP $GREPOPT1 $NAMECOL | $AWK $AWKOPT1 "Intern Name" '{print $1}'|$TR $TROPT1 , | $WC $WCOPT1)

$ECHO "$(date) [count comma for intername] count the no of commas before the Intern name $COUNT11" >> "$LOG" #Collect logs in log file

ADD11=1

$ECHO "$(date) [add 1 in the total no of commas before Intern name column to get the exact Intern name column] $ADD11" >> "$LOG"

PLUS11=$((COUNT11+ADD11))

$ECHO "$(date) [total commas for intername] download sheet2 csv file using this command $PLUS11" >> "$LOG" #Collect logs in log file

$ECHO "Afetr adding 1 total commas before Intern Name column $PLUS11"

COUNT22=$($CAT $FILENAME2 | $GREP $GREPOPT1 $avgcolumn | $AWK $AWKOPT1 "$AVGCOLUMN" '{print $1}'|$TR $TROPT1 , | $WC $WCOPT1)

$ECHO "$(date) [count commas] count the no of commas before the Average $COUNT22" >> "$LOG" #Collect logs in log file

ADD22=1

$ECHO "$(date) [add 1 for Average] download sheet2 csv file using this command $ADD22" >> "$LOG" #Collect logs in log file

PLUS22=$((COUNT22+ADD22))

$ECHO "$(date) [commas for extract the average column] $PLUS22" >> "$LOG" #Collect logs in log file

$ECHO "After adding 1 total commas before Average column $PLUS22"

#========================================================================================================================#

$ECHO "Without adding 1 total commas before Intern Name $COUNT11"

$ECHO "Without adding 1 total commas before Average $COUNT22"

AUTOMUL1=$((COUNT22-COUNT11))

$ECHO "diffrence of Intern name and Average$AUTOMUL1"

VAL2=1

ACTVAL1=$((AUTOMUL1-VAL2))

$ECHO "pls multiply by this numbere=$ACTVAL1"

#========================================================================================================================#

$CAT $FILENAME2 | $TAIL -n+5 | awk -F "," '{print "Name : ",$name1, "\n", "SUM : ",$average1*s, "\n", "Avg : ",$average1, "\n"}' name1=$PLUS11 average1=$PLUS22 s=$ACTVAL1

output2=`$CAT $FILENAME2 | $TAIL -n+5 | awk -F "," '{print "Name : ",$name1, "\n", "SUM : ",$average1*s, "\n", "Avg : ",$average1, "\n"}' name1=$PLUS11 average1=$PLUS22 s=$ACTVAL1`

$ECHO "$output2" >> $DATADIR1

$ECHO "$(date) [output for sheet 2] successfully print sheet2 the required output" >> "$LOG" #Collect logs in log file

fi
