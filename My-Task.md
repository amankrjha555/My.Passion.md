# What work did you get 
 + We got a google excel sheet in Self Evaluation and Others Evaluation and we copied it.
 + After that we had to find the average of self and others with the formula of the algorithm.
# How to write formulae

* =SUM(COUNTIF(C4:J4,"Excellent")*5,COUNTIF(C4:J4,"Very good")*4,
COUNTIF(C4:J4,"Good")*3,COUNTIF(C4:J4,"Satisfactory")*2, COUNTIF(C4:J4,Fair)*1,
COUNTIF(C4:J4,"Poor")*0)/COUNTA(C4:J4)

# How does the formulae work
+ At first he is sum up all the value.
+ Then he is dividing.
+ Syntax = SUM(COUNTIF(range,"string1")*number1,COUNTIF(range,"string2")*number2)/COUNTA(range)

# Objective of Exercises
+ I learned about the algorithm.
+ I learned about the excel sheet to use.
+ I learned about use the algorithm formula in an Excel sheet.

# How it was Implemented
+ I used sum function 
+ Used countif function
+ Used counta function 
+ Used avergare function 

# Explanation of Implementation
+ The SUM function adds values. 
+ You can add individual values, cell references or ranges or a mix of all three. 
+ For example: =SUM(A2:A10) Adds the values in cells A2:10.

# Test Results

| **SR-No.** | **TEST CASE** | **TEST OUTCOME** | **EXPECTED OUTCOME** | **STATUS** | **REMARKS** |
| --- | --- | --- | --- | --- | ---- |
| **1** | Type the Excellent in Punctuality column. | The Value 5 successfully print in average column when I put the Excellent in Punctuality column. | After put the Excellent  in Punctuality column successfully printed the value 5 in the average column. | **Passed** | Testing has been passed |
| **2** | Type the Very good in Punctuality column | The Value 4 successfully print in average column when i put the Very good in Punctuality column. | After put the Very good  in Punctuality column successfully printed the value 4 in the average column. | **Passed** | Testing has been passed |
| **3** | Type the Good in Punctuality column. | The Value 3 successfully print in average column when I put the Good in Punctuality column. | After put the Good in Punctuality column successfully printed the value 3 in the average column. | **Passed** | Testing has been passed |
| **4** | Type the Satisfactory in Punctuality column | The Value 2 successfully print in average column when i put the Satisfactory in Punctuality column. | After put the Satisfactory in Punctuality column successfully printed the value 2 in the average column. | **Passed** | Testing has been passed |
| **5** | Type the Fair in Punctuality column. | The Value 1 successfully print in average column when I put the Fair in Punctuality column. | After put the Fair  in Punctuality column successfully printed the value 1 in the average column. | **Passed** | Testing has been passed |
| **6** | Type the Very Poor in Punctuality column | The Value 0 successfully print in average column when i put the Poor in Punctuality column. | After put the Poor  in Punctuality column successfully printed the value 1 in the average column. | **Passed** | Testing has been passed |
| **7** | **Similarly i Type the ( (Excellent, Very good, Good, Satisfactory, Fair, Poor)  in (Time management,Attendance,Communication,Requirement analysis,Self Learning,Grammatical error and Creativity) columns.** | **The Value (5,4,3,2,1,0) successfully print in average column when i put the (Excellent, Very good, Good, Satisfactory, Fair, Poor) in (Time management,Attendance,Communication,Requirement analysis,Self Learning,Grammatical error and Creativity)** | **After put the (Excellent, Very good, Good, Satisfactory, Fair, Poor)  in (Time management,Attendance,Communication,Requirement analysis,Self Learning,Grammatical error and Creativity columns successfully printed the value (5, 4, 3, 2, 1, 0) in the average column.** | **Passed** | **Testing has been passed** 


# Conclusion
+ I have done my task.

