<%@ page import="br.com.igead.User" %>

<div class="formname">
    <span>Informações de endereço</span>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'street', 'error')} required">
	<label for="name">
		<g:message code="address.street.label" default="Rua" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="street" required="" value="${userInstance?.address?.street}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'number', 'error')} required">
    <label for="number">
        <g:message code="address.number.label" default="Número" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="number" required="" value="${userInstance?.address?.number}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'complement', 'error')} required">
    <label for="complement">
        <g:message code="address.complement.label" default="Complemento" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="complement" required="" value="${userInstance?.address?.complement}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'district', 'error')} required">
    <label for="district">
        <g:message code="address.district.label" default="Bairro" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="district" required="" value="${userInstance?.address?.district}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'city', 'error')} required">
    <label for="number">
        <g:message code="address.city.label" default="Cidade" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="city" required="" value="${userInstance?.address?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'state', 'error')} required">
    <label for="number">
        <g:message code="address.state.label" default="Estado" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="state" required="" value="${userInstance?.address?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'country', 'error')} required">
    <label for="number">
        <g:message code="address.country.label" default="País" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="country" required="" value="${userInstance?.address?.country}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance.address, field: 'zipcode', 'error')} required">
    <label for="number">
        <g:message code="address.zipcode.label" default="CEP" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="cep" name="zipcode" required="" value="${userInstance?.address?.zipcode}"/>

</div>
