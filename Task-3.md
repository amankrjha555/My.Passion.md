
<h2 align="center"> OBJECTIVE </h2>

Make a script to download the google spreadsheet in csv format by using link and extract the required output from the file in the format

#### Name    : 

#### Sum     :

#### Average :

<details>
  <summary> Test Cases </summary>
  
|S.NO|Test Cases|Test Case Description|Expected Result|Test Status|Output|
|:----:|:-----:|:-----:|:-----:|:-----:|:----:|
|1|**Published Url** |Spread sheet link published by using publish to web option from file of spreadsheet and select the .csv format |Url should be published|**PASS** |![Webpublish](https://github.com/amankrjha555/My.Passion.md/blob/main/%20publish%20Screenshot%20from%202021-05-12%2003-29-48.png)|
|2|**The path of commands  is declared in Variable** |I declared the path of commands in variables in the configuration file which i used in the script file. |Path of command should be declare in the variable |**PASS**|![variables](https://github.com/amankrjha555/My.Passion.md/blob/main/Variable%20Screenshot%20from%202021-05-11%2022-04-36.png)|
|3|**Google spread sheet downloaded in CSV format** |I used wget with -q and -O option with url of the google spread sheet to download in csv format -q option is used for silently downloaded <br/> I used this $WGET $WGETOPT1 $URL1 and $URL2 the value of these variable extracting from the configuration file |Google spreadsheet in csv format should be downloaded |**PASS** |![csvfile](https://github.com/amankrjha555/My.Passion.md/blob/main/sheet1%20Screenshot%20from%202021-05-11%2022-07-51.png)|
|4 |**DISPLAY THE OUTPUT using configuration file** | I used the source of configuration file in the script and run the script  <br/> I used  this to extract the required column (awk -F "," '{print "Name :",$name1, "\n", "Sum :",$average1* z "\n", "Average :",$average1, "\n"}') |Script should be run and display the output |**PASS** |![outpu2](https://github.com/amankrjha555/My.Passion.md/blob/main/Awk%20Screenshot%20from%202021-05-11%2022-12-06.png)|
|5|**Redirect the output** |Redirect the output of both sheet in a file  using this **> & >>** |Output should be redirect in the file |**PASS** | |
|6 |**Adding the column in the spreadsheet** |Add the column in the spreadsheet and gives the word to all students |Output should be updated |**PASS** | |
|7 |**Adding the row in the spreadsheet** |Add the row in the spreadsheet and gives the word in all the columns |Output should be updated |**PASS** | |
|8 |**log file** |when script run all logs genrate in log file |log should be genrated successfully in log file |**PASS** |![log](https://github.com/amankrjha555/My.Passion.md/blob/main/Log%20Screenshot%20from%202021-05-12%2004-54-43.png)|

  </details>
  
  <details>
  <summary> Configuration File </summary>
<h2 align="center"> Configuration file: </h2>
  
  #This is the main configuration file of script

#=======================================================================================

#Variable declaration of command path which used in script

#wget command is a Linux command line utility that helps us to download the files from the web.

WGET=/usr/bin/wget

#echo command in linux is used to display line of text/stringon terminal.

ECHO=/usr/bin/echo

#mv command renames a file or folder and moves a group of files to a different directory

MV=/usr/bin/mv

#cat command allows us to create single or multiple files, view contain of file, concatenate files and redirect output in terminal or files.

CAT=/usr/bin/cat

#awk command searches files for text containing a pattern. When a line or text matches, awk performs a specific action on that line/text.

AWK=/usr/bin/awk

#tail commandprint the last N number of data of the given input.

TAIL=/usr/bin/tail

#tr is a command for translating or deleting characters.

TR=/usr/bin/tr

#The grep command in unix or linux system is used to print the lines that match a given pattern.

GREP=/usr/bin/grep

#wc Command in Linux Count Number of Lines, Words, and Character.

WC=/usr/bin/wc

#pwd command prints the path of the working directory

PWD=/usr/bin/pwd

#cp command is used to copy files or group of files or directory.

CP=/usr/bin/cp

#date command is used to display the system date and time.

DATE=/usr/bin/date

#===================================================================================

#wget command option

#The download output is not visible so -q is used
#The download output file rename the -O and saved the files

WGETOPT1=-q
WGETOPT2=-O
FILENAME1=/home/amanjha/script/sheet1.csv
FILENAME2=/home/amanjha/script/sheet2.csv

#===================================================================================

#tr command option

#-cd option used for delete the character.

TROPT1=-cd

#====================================================================================

#wc command option

#-c is used ko count the character

WCOPT1=-c

#====================================================================================

#grep command option

#-i option used for displays both uppercase and lowercase results.

GREPOPT1=-i

#====================================================================================

#awk command option

#-F used for the input field separator.

AWKOPT1=-F

#=====================================================================================

#here url used to download the spreadsheet in the format CSV

#Below url01 for download the spreadsheet 1

URL1=https://docs.google.com/spreadsheets/d/e/2PACX-1vRdLEfowPStrCzRulzpf_BzONL2aSdxfOyvNXCeQT47MkmZfkW1DkO2eWg-x88W0VCncCXbtHZeQ9Rg/pub?output=csv

#=====================================================================================

#Below url02 for download the spreadsheet 2

URL2=https://docs.google.com/spreadsheets/d/e/2PACX-1vRnU1CqNO4befK2WxpJ9TvkkQHpTXvcwjZNjikjkdLDBnDiQs_th5VJ6nJi6-BN2kNN55AXlGdAQZxR/pub?output=csv

#======================================================================================

#SRNCOLUMN=SrNo

#INTERCOL=Intern Name

#COLUMN3=Punctuality

#COLUMN4=Time management

#COLUMN5=Attendance

#COLUMN6=Communication

#COLUMN7=Requirement analysis

#COLUMN8=Self Learning

#COLUMN9=Grammatical error

#COLUMN10=Creativity

AVGCOLUMN=Average

avgcolumn=average

#namecolumn=name

#=====================================================================================

#Extra column

NAMECOL=Name

INTERNCOL=Intern

SUMCOL=Sum

AVGCOL=Avg

#====================================================================================

#log file of script

LOG=/home/amanjha/script/script.log

#====================================================================================

#directory for datafile

DATADIR1=/home/amanjha/script/datafile/output
  
  </details>
  
  <details>
  <summary> Script </summary>

<h2 align="center"> Script file: </h2> 

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

</details>

<details>
  <summary> Log File </summary>
<h2 align="center"> Log file: </h2>

Wed May 12 04:33:28 IST 2021 [add 1 in the previous result of commas] 1

Wed May 12 04:33:28 IST 2021 [total commas for extract the Intern name column ]

Wed May 12 04:33:28 IST 2021 [count commas] count the no of commas before the Average 10

Wed May 12 04:33:28 IST 2021 [add 1 in the total no of commas before average column to get the exact average column] 1

Wed May 12 04:33:28 IST 2021 [commas for extract the average column] 11

/usr/bin/date [count commas] count the no of commas before the Intern name 1

Wed May 12 04:36:05 IST 2021 [add 1 in the previous result of commas] 1

Wed May 12 04:36:05 IST 2021 [total commas for extract the Intern name column ] 2

Wed May 12 04:36:05 IST 2021 [count commas] count the no of commas before the Average 10

Wed May 12 04:36:05 IST 2021 [add 1 in the total no of commas before average column to get the exact average column] 1

Wed May 12 04:36:05 IST 2021 [commas for extract the average column] 11

/usr/bin/date [count commas] count the no of commas before the Intern name 1

Wed May 12 04:36:11 IST 2021 [add 1 in the previous result of commas] 1

Wed May 12 04:36:11 IST 2021 [total commas for extract the Intern name column ] 2

Wed May 12 04:36:11 IST 2021 [count commas] count the no of commas before the Average 10

Wed May 12 04:36:11 IST 2021 [add 1 in the total no of commas before average column to get the exact average column] 1

Wed May 12 04:36:11 IST 2021 [commas for extract the average column] 11

/usr/bin/date [count commas] count the no of commas before the Intern name 1

Wed May 12 04:38:31 IST 2021 [add 1 in the previous result of commas] 1

Wed May 12 04:38:31 IST 2021 [total commas for extract the Intern name column ] 2

Wed May 12 04:38:31 IST 2021 [count commas] count the no of commas before the Average 10

Wed May 12 04:38:31 IST 2021 [add 1 in the total no of commas before average column to get the exact average column] 1

Wed May 12 04:38:31 IST 2021 [commas for extract the average column] 11

Wed May 12 04:38:31 IST 2021 [output for sheet 1] successfully print sheet1 the required output

/usr/bin/date [count commas] count the no of commas before the Intern name 1

Wed May 12 04:44:25 IST 2021 [add 1 in the previous result of commas] 1

Wed May 12 04:44:25 IST 2021 [total commas for extract the Intern name column ] 2

Wed May 12 04:44:25 IST 2021 [count commas] count the no of commas before the Average 10

Wed May 12 04:44:25 IST 2021 [add 1 in the total no of commas before average column to get the exact average column] 1

Wed May 12 04:44:25 IST 2021 [commas for extract the average column] 11

Wed May 12 04:44:25 IST 2021 [output for sheet 1] successfully print sheet1 the required output

Wed May 12 04:44:27 IST 2021 [wget command] download the csv file using wget command /usr/bin/wget -q 

Wed May 12 04:44:27 IST 2021 [count comma for intername] count the no of commas before the Intern name 1

Wed May 12 04:44:27 IST 2021 [add 1 in the total no of commas before Intern name column to get the exact Intern name column] 1

Wed May 12 04:44:27 IST 2021 [total commas for intername] download sheet2 csv file using this command 2

Wed May 12 04:44:27 IST 2021 [count commas] count the no of commas before the Average 10

Wed May 12 04:44:27 IST 2021 [add 1 for Average] download sheet2 csv file using this command 1

Wed May 12 04:44:27 IST 2021 [commas for extract the average column] 11

Wed May 12 04:44:27 IST 2021 [output for sheet 2] successfully print sheet2 the required output


</details>

  
  
  
  
  <h2> Conclusion </h2>
 
 I have completed my given task. The given script is doing its job correctly.

```
     Thank You
```
