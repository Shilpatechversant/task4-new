<cffunction  name="display_message" hint="Show text based on number">
<cfset tes_num=#arguments.test_num# >

<cfloop index="i" from="3" to=#arguments.test_num#>
  
        <cfif i mod 3 eq 0>
            <cfoutput>
  #i#<br />
          </cfoutput>
        </cfif>
            <cfcontinue>
</cfloop>







</cffunction>