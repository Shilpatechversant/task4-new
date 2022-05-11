<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="main-container">
            <h3> Task 4 - [Today's date, current Month in numeric, current month in word, Last friday date, Last day of month]</h3>
            <hr>
            <cfoutput>
                <p>Today's Date : #DateFormat(Now())#</p>           
                <p>Current Month in Numeric : #DateFormat(Now(),"mm")#</p>            
                <p>Current Month in Word : #DateFormat(Now(),"mmmm")#</p>            
                <cfset today=dayofweek(now())>
                <cfset fNum=(6-today)-7>
                <cfset fridayDate=dateAdd("d", fNum, Now())>
                <p>Last Friday Date-#DateFormat(fridayDate)#</p>            
                <cfset sDate=createDate(year(now()), month(now()), 1 )>
                <cfset dEndDate=dateAdd('d', -1, dateAdd('m', 1, sDate ))>
                <p>Last Day of Month: #DateFormat(dEndDate)#</p>                                         
                <cfset fromDate=Now()-1>
                <cfset toDate=Now() - 5> Five Days:         
                <cfloop from="#fromDate#" to="#toDate#" index="i" step=-1>               
                    <cfif DateFormat(i,"dddd") eq "Monday">
                            <p class="green">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>                                                   
                        <cfelseif DateFormat(i,"dddd") eq "Sunday">
                            <p class="red">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>                                                     
                        <cfelseif DateFormat(i,"dddd") eq "Saturday">
                            <p class="red">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Friday">
                            <p class="blue">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Thursday">
                            <p class="black">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Wednesday">
                            <p class="yellow">>#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Tuesday">
                            <p class="orange">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>                                                                       
                    </cfif>
                </cfloop>
            </cfoutput>
        </div>
    </body>
</html>