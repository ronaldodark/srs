<%@ page import="br.com.igead.User" %>
<%@ page import="br.com.igead.Employee" %>
<%@ page import="br.com.igead.Student" %>
<%@ page import="br.com.igead.MaritalStatusEnum" %>

<div class="formname">
    <span>Informações de usuário</span>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userType', 'error')} required">

    <label for="userType">
        <g:message code="user.type.label" default="Tipo de Usuário" />
    </label>
    <g:message code="employee.label" default="Professor" />
    <g:radio class="userTypeSelector" name="userType" checked="true" value="employee" onchange="selectUserType()"/>
    <g:message code="student.label" default="Bolsista" />
    <g:radio class="userTypeSelector" name="userType" value="student" onchange="selectUserType()"/>
</div>

<div class="fieldcontain dynamicField" id="employeeField" ${hasErrors(bean: userInstance, field: 'siape', 'error')} ">
    <label for="siape">
        <g:message code="employee.siape.label" default="SIAPE" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="siape" required="" value="${userInstance?.siape}"/>

</div>

<div class="fieldcontain dynamicField" id="studentField" ${hasErrors(bean: userInstance, field: 'dre', 'error')} style="display: none">
    <label for="siape">
        <g:message code="employee.dre.label" default="DRE" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="siape" required="" value="${userInstance?.dre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="E-mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'institutionalMail', 'error')} ">
	<label for="institutionalMail">
		<g:message code="user.institutionalMail.label" default="E-mail Institucional" />
		
	</label>
	<g:field type="email" name="institutionalMail" value="${userInstance?.institutionalMail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'birthdate', 'error')} ">
	<label for="birthdate">
		<g:message code="user.birthdate.label" default="Data de Nascimento" />
		
	</label>
	<g:datePicker name="birthdate" relativeYears="[0..-150]"  precision="day"  value="${userInstance?.birthdate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="user.cpf.label" default="CPF" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="cpf" name="cpf" type="textField" value="${userInstance?.cpf?:""}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'rg', 'error')} required">
	<label for="rg">
		<g:message code="user.rg.label" default="RG" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="rg" name="rg" type="textField" value="${userInstance?.rg ?:""}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'maritalStatus', 'error')} required">
	<label for="maritalStatus">
		<g:message code="user.maritalStatus.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="maritalStatus" name="maritalStatus" from="${MaritalStatusEnum}" optionValue="name" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="user.sex.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
    <g:select name="sex" from="['M','F']"  />

</div>


