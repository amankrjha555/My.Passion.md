
<h2 align="center"> OBJECTIVE </h2>

Make a script to download the google spreadsheet in csv format by using link and extract the required output from the file in the format

#### Name    : 

#### Sum     :

#### Average :

<details>
  <summary> Test Cases </summary>
  
|S.NO|Test Cases|Test Case Description|Expected Result|Test Status|Output|
|:----:|:-----:|:-----:|:-----:|:-----:|:----:|
|1|**Published Url** |Spread sheet link published by using publish to web option from file of spreadsheet and select the .csv format |Url should be published|**PASS** |![Webpublish](https://github.com/amankrjha555/My.Passion.md/blob/main/Variable%20Screenshot%20from%202021-05-11%2022-04-36.png)|
|2|**The path of commands  is declared in Variable** |I declared the path of commands in variables in the configuration file which i used in the script file. |Path of command should be declare in the variable |**PASS**|![variables](https://user-images.githubusercontent.com/82143335/116895709-1cc60500-ac51-11eb-8d94-fbb9faf237a5.PNG)|
|3|**Google spread sheet downloaded in CSV format** |I used wget with -q and -O option with url of the google spread sheet to download in csv format -q option is used for silently downloaded <br/> I used this $WGET $WGETOPT1 $URL1 and $URL2 the value of these variable extracting from the configuration file |Google spreadsheet in csv format should be downloaded |**PASS** |![csvfile](https://user-images.githubusercontent.com/82143335/117102061-1b9df080-ad95-11eb-8d33-9f3866ae3590.PNG)|
|4 |**DISPLAY THE OUTPUT using configuration file** | I used the source of configuration file in the script and run the script  <br/> I used  this to extract the required column (awk -F "," '{print "Name :",$name1, "\n", "Sum :",$average1* z "\n", "Average :",$average1, "\n"}') |Script should be run and display the output |**PASS** |![outpu2](https://user-images.githubusercontent.com/82143335/116898853-872c7480-ac54-11eb-92b5-81bcc2a41a1c.PNG)|
|5|**Redirect the output** |Redirect the output of both sheet in a file  using this **> & >>** |Output should be redirect in the file |**PASS** | |
|6 |**Adding the column in the spreadsheet** |Add the column in the spreadsheet and gives the word to all students |Output should be updated |**PASS** | |
|7 |**Adding the row in the spreadsheet** |Add the row in the spreadsheet and gives the word in all the columns |Output should be updated |**PASS** | |
|8 |**log file** |when script run all logs genrate in log file |log should be genrated successfully in log file |**PASS** |![log](https://user-images.githubusercontent.com/82143335/116899357-12a60580-ac55-11eb-822a-faa3d25cfff6.PNG)|

  </details>
  
  <details>
  <summary> Configuration File </summary>
<h2 align="center"> Configuration file: </h2>
  
  </details>
  
  <details>
  <summary> Script </summary>

<h2 align="center"> Script file: </h2> 

</details>

<details>
  <summary> Log File </summary>
<h2 align="center"> Log file: </h2>


</details>

  
  
  
  
  <h2> Conclusion </h2>
 
 I have completed my given task. The given script is doing its job correctly.

```
     Thank You
```
