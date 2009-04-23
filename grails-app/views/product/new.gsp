<html>
<head>
    <title><g:message code="scrumtime.title"/></title>
    <meta name="layout" content="managementProduct"/>
</head>
<body>
<div style="margin-top:8px;padding-bottom:16px;width:100%;text-align:left;border:#999 solid 1px;">
    <div style="text-align:left;border-bottom:#999 solid 1px;background-color:#c6d5ec;">
        <span style="padding-left:6px">New Product</span>
    </div>
    <g:hasErrors bean="${product}">
        <div class="errors">
            <g:renderErrors bean="${product}" field="name" as="list"/>
            <g:renderErrors bean="${product}" field="description" as="list"/>
        </div>
    </g:hasErrors>
    <table style="margin-left:40px;margin-top:20px" cellpadding="0" cellspacing="0" border="0">
        <g:form controller="product">
            <tr>
                <td colspan="2" style="font-size:12px">Name</td>
            </tr>
            <tr>
                <td colspan="2"><input name='name' maxlength="120" tabindex="2"
                    style="width:500px;color:#333;"
                    value="${product?.name?.encodeAsHTML()}"/></td>
            </tr>
            <tr>
                <td colspan="2" style="vertical-align:top;width:100px;font-size:12px;padding-top:8px">Description</td>
            </tr>
            <tr>
                <td colspan="2"><textarea tabindex="10" name='description' cols="30" rows="5"
                    style="width:500px;height:50px;font-family:arial;font-size:13px">${product?.description?.encodeAsHTML()}</textarea></td>
            </tr>
            <tr>
                <td style="text-align:right;padding-top:6px;padding-right:16px;width:425px"><g:hiddenField name="savePressed" value="true"/><g:actionSubmit value="Save" action="createNew" style="width:60px"/></td>
                <td style="text-align:right;padding-top:6px;"><g:actionSubmit value="Cancel" action="index" style="width:60px"/></td>
            </tr>
        </g:form>
    </table>
</div>
</body>
</html>

            