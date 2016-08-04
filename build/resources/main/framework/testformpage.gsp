<html>
<body>
<h1>Test Form Page</h1>

<g:form action="submit">
    <g:eachError bean="${sampleVO}">
        <li><g:message error="${it}" /></li>
    </g:eachError>
   <p>Name <g:textField label="Name" name="name" value="${sampleVO.name}"/> </p>
   <p> Hobby <g:textField name="hobby" value="${sampleVO.hobby}"/></p>
   <p> Sport <g:textField name="sport" value="${sampleVO.sport}"/></p>
    <p>Age<g:select name="user.age" from="${18..65}" value="${sampleVO.age}"
              noSelection="['': '-Choose your age-']"/> </p>
    <br/>
    <g:link action="index">main test page</g:link><br/>
    <g:submitButton value="submit" name="submit me"/>
</g:form>
</body>
</html>