<html>
<body>
<h1>Test Form Page</h1>

<g:form action="submit">
    <g:eachError bean="${sampleVO}">
        <li><g:message error="${it}" /></li>
    </g:eachError>
   <p> Name (constraints--> nullable: false, blank: false)<g:textField label="Name" name="name" value="${sampleVO.name}"/> </p>
   <p> Hobby (constraints--> nullable: true, blank: true)<g:textField name="hobby" value="${sampleVO.hobby}"/></p>
   <p> Sport  (no constraints)<g:textField name="sport" value="${sampleVO.sport}"/></p>
    <p>Age (no constraints)<g:select name="age" from="${18..65}" value="${sampleVO.age}"
              noSelection="['': '-Choose your age-']"/> </p>
    <br/>
    <g:link action="index">main test page</g:link><br/>
    <g:submitButton value="submit" name="submit me"/>
</g:form>
</body>
</html>