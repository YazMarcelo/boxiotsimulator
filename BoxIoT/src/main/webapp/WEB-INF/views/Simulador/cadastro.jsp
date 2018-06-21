<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<mt:simpletemplate title="Cadastro de Local">
	<jsp:attribute name="content">
		<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary">
                        <h4 class="card-title">Cadastrar Local</h4>
                    </div>
                    <div class="card-body">
                    	<form:form method="post" action="/BoxIoT/local" commandName="local">
                            <input type="hidden" name="id_controle" value="" />
                            <h5><b>Campos Obrigatórios</b><b style="color:#ff0000">*</b></h5>


                    		<!--Campos-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                         <label class="bmd-label-floating" for="nome">Descrição<b style="color:#ff0000">*</b></label>
                                         <form:input required="required" path="descricao" class="form-control"/>
										 <form:errors path="descricao" />
                                    </div>
                                </div>
                            </div>

                            <button type="submit" id="btn-salvar" class="btn btn-primary pull-right">Salvar</button>
                            <button type="submit" hidden id="btn-submit" class="btn btn-primary pull-right">Salvar</button>
                            <div class="clearfix"></div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	</jsp:attribute>
</mt:simpletemplate>