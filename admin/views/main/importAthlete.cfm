<cfoutput>
    <cfif isStruct(rc.athlete.getErrors()) and !StructIsEmpty(rc.athlete.getErrors())>
        <cfdump var="#rc.athlete.save().getErrors()#">
        <p>Oh Crap!</p>
    <cfelseif isStruct(rc.bike.getErrors()) and !StructIsEmpty(rc.bike.getErrors())>
        <cfdump var="#rc.bike.save().getErrors()#">
        <p>Uh Oh!</p>
    <cfelseif isStruct(rc.club.getErrors()) and !StructIsEmpty(rc.club.getErrors())>
        <cfdump var="#rc.club.save().getErrors()#">
        <p>Uh Oh!</p>
    <cfelse>
        <cfdump var="#rc.athlete.getAllValues()#">
        <cfdump var="#rc.athlete.getBikes()#">
            <cfdump var="#rc.athlete.getClubs()#">
    </cfif>
</cfoutput>
