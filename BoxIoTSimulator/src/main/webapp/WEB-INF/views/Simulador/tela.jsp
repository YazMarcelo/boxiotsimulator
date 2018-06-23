<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<mt:simpletemplate title="Dashboard">
<jsp:attribute name="navbar">
<!-- Navbar -->
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <form class="navbar-form">
                            <div class="input-group no-border">
                                <input type="text" value="" class="form-control" placeholder="Search..."/>
                                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                    <i class="material-icons">search</i>
                                    <div class="ripple-container"></div>
                                </button>
                            </div>
                        </form>
                        <ul class="navbar-nav">
                            
                        </ul>
                    </div>
            <!-- End Navbar -->
</jsp:attribute>
	<jsp:attribute name="content">
	            <div class="content">
                <div class="container-fluid">
                <c:forEach items="${locais}" var="local">
                <h4>${local.descricao}</h4>
                      <div class="row">
                      <c:forEach items="${itens}" var="item">
                      	<c:if test="${item.idLocal == local.id}">
                      		
                      	<div class="col-lg-2 col-md-2 col-sm-2">
                            <div class="card card-stats">
                                <div class="card-header card-header-warning card-header-icon">
                                    <p class="card-category"></p>
                                    <h3 class="card-title"><i id="icone-${item.id}" class="fa fa-lightbulb-o icone-item"></i>
                                        <!-- <small>GB</small> -->
                                    </h3>
                                </div>
                                <div class="card-footer">
                                <span style="color:white">${item.descricao}</span>
                                    <div class="stats">
                                    </div>
                                </div>
                            </div>
                        </div>
                      	</c:if>
                      </c:forEach>
  					</div>
                                    </c:forEach>
                    
                          </div>
                           </div>
	</jsp:attribute>
	<jsp:attribute name="js_personalizado">
	    <script src="${pageContext.request.contextPath}/resources/scripts/consulta.js"></script>
	</jsp:attribute>
</mt:simpletemplate>