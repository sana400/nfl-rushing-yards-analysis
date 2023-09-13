import excel "C:\Users\Sana\Documents\nflpassingstats.xlsx", sheet("Passing") firstrow 

summarize

/*finding the descriptive stats*/
tabstat AGE COMP TDPASS PASSYDSG PASSRATE, statistics(mean median sd)

/*scatterplot for completion % vs age*/
twoway scatter COMP AGE, name(comp_age) || lfit COMP AGE, ytitle("Completion Percentage") xtitle("Age of Quarterback") title("Completion Percentage of Passes vs QB Age")

/*finding the r value of completion % vs age*/
correlate COMP AGE

/*scatterplot for age vs tdpass*/
twoway scatter TDPASS AGE, name(tdpass_age) || lfit TDPASS AGE, ytitle("Touchdown Passes") xtitle("Age of Quarterback") title("Touchdown Passes vs QB Age")

/*finding the r value of tdpass vs age*/
correlate TDPASS AGE

/*scatterplot for age vs passydsg*/
twoway scatter PASSYDSG AGE, name(passyds_age) || lfit PASSYDSG AGE, ytitle("Passyards/Game") xtitle("Age of Quarterback") title("Passing Yards per Game vs QB Age")

/*finding the r value of passydsg vs age*/
correlate PASSYDSG AGE

/*scatterplot for passrate vs age*/
twoway scatter PASSRATE AGE, name(passrate_age) || lfit PASSRATE AGE, ytitle("Passer Rating") xtitle("Age of Quarterback") title("Passer Rating vs QB Age")

/*finding the r value of passrate vs age*/
correlate PASSRATE AGE

/*histogram of AGE*/
histogram AGE, name(age_hist) bin(10) frequency ytitle("Frequency") xtitle("Age of QB") title("Age of Quarterback - 2020, 2012, 2004")

/*histogram of COMP%*/
histogram COMP, name(comp_hist) bin(10) frequency ytitle("Frequency") xtitle("Completion Percentage") title("Completion Percentage of Passes - 2020, 2012, 2004")

/*histogram of TDPASS*/
histogram TDPASS, name(tdpass_hist) bin(10) frequency ytitle("Frequency") xtitle("Touchdown Passes") title("Touchdown Passes - 2020, 2012, 2004") 

/*histogram of PASSYDSG*/
histogram PASSYDSG, name(passydsg_hist) bin(10) frequency ytitle("Frequency") xtitle("Passing Yards per Game") title("Passing Yards per Game - 2020, 2012, 2004")

/*histogram of PASSRATE*/
histogram PASSRATE, name(passrate_hist) bin(10) frequency ytitle("Frequency") xtitle("Passer Rating") title ("Passer Rating - 2020, 2012, 2004")
