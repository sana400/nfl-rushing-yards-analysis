 import excel "C:\Users\Sana\Documents\quaterbacks nfl 2020.xlsx", sheet("Quarterbacks") firstrow clear

codebook, c

gen COMPPER= (COMP/ATT)*100
gen TDPER= (TD/ATT)*100
gen INTPER= (INT/ATT)*100
gen YDSATT= (YDS/ATT)

gen a=((COMP/ATT)-0.3)*5
list a
gen b= ((YDS/ATT)-3)*0.25
gen c= (TD/ATT)*20
gen d= 2.375-((INT/ATT)*25)

*replacing values more than 2.375 with 2.375
replace a=2.375 if a>=2.375
replace b=2.375 if b>=2.375
replace c=2.375 if c>=2.375
replace d=2.375 if d>=2.375

*making values less than zero to be zero
replace d=0 if d<0
replace c=0 if c<0
replace b=0 if b<0
replace a=0 if a<0
gen RATE= ((a+b+c+d)/6)*100

gsort -RATE