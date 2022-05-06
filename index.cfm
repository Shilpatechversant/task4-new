<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="main-container">
            <h3> Task 4 - [Today's date, current Month in numeric, current month in word, Last friday date, Last day of month]</h3>
            <hr>
            <p>
                <cfoutput>Today's Date : #DateFormat(Now())#</cfoutput>
            </p>
            <p>
                <cfoutput>Current Month in Numeric : #DateFormat(Now(),"mm")#</cfoutput>
            </p>
            <p>
                <cfoutput>Current Month in Word : #DateFormat(Now(),"mmmm")#</cfoutput>
            </p>
            <cfset today=dayofweek(now())>
                <cfset fNum=(6-today)-7>
                    <cfset fridayDate=dateAdd("d", fNum, Now())>
                        <p>
                            <cfoutput>Last Friday Date-#DateFormat(fridayDate)#</cfoutput>
                        </p>
                        <cfset sDate=createDate(year(now()), month(now()), 1 )>
                            <cfset dEndDate=dateAdd('d', -1, dateAdd('m', 1, sDate ))>
                                <p>Last Day of Month: <cfoutput>#DateFormat(dEndDate)#</cfoutput>
                                </p>
                                <cfset fromDate=Now()-1>
                                    <cfset toDate=Now() - 5> Five Days: 
                                    <cfloop from="#fromDate#" to="#toDate#" index="i" step=-1>
                                            <p>
                                                <cfif DateFormat(i,"dddd") eq "Monday">
                                                    <p class="green">
                                                        <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput>
                                                    </p>
                                                    <cfelseif DateFormat(i,"dddd") eq "Sunday">
                                                        <p class="red">
                                                            <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput>
                                                        </p>
                                                        <cfelseif DateFormat(i,"dddd") eq "Saturday">
                                                            <p class="red">
                                                                <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput>
                                                            </p>
                                                            <cfelseif DateFormat(i,"dddd") eq "Friday">
                                                                <p class="blue">
                                                                    <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput>
                                                                </p>
                                                                <cfelseif DateFormat(i,"dddd") eq "Thursday">
                                                                    <p class="black">
                                                                        <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput>
                                                                    </p>
                                                                    <cfelseif DateFormat(i,"dddd") eq "Wednesday">
                                                                        <p class="yellow">
                                                                            <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput>
                                                                        </p>
                                                                        <cfelseif DateFormat(i,"dddd") eq "Tuesday">
                                                                            <p class="orange">
                                                                                <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput>
                                                                            </p>
                                                </cfif>
                                        </cfloop>
        </div>
    </body>
</html>