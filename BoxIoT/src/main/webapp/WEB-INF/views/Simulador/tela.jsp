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
                                         <div class="card-collapse">
                						 	<div class="card-header" role="tab" id="headingOne">
                  								<h5 class="mb-0">
                    								<a data-toggle="collapse" href="#collapse-${local.id}" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
                      									${local.descricao}
                      									<i class="material-icons">keyboard_arrow_down</i>
                    								</a>
                  								</h5>
                							</div>
											<div id="collapse-${local.id}" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion" style="">
											<h5 style="margin-bottom: 5px;margin-top: 10px;"><b>Itens</b></h5>
												<c:forEach items="${itens}" var="item"><c:if test = "${item.idLocal == local.id}">
      										       <div class="card-body div-item">
                    									<b>Nome Item:</b> ${item.descricao}
                    									<input style="display:none;" name="id_item" class="id_controle_item" type="text" value="${item.id}">
                    									<div class="col-sm-5 checkbox-radios">
                                      						<div class="form-check">
                                          						<label class="form-check-label">
                                              						<input class="form-check-input on" type="radio" name="radio-${item.id}" value="true">
                                              							<label>Ligado <b class="porcentagem">100</b>%</label>
                                              						<span class="circle">
                                                  						<span class="check"></span>
                                              						</span>
                                          						</label>
                                          						<br>
										  						<div class="slider-primary" data-plugin-slider data-plugin-options='{ "value": 100, "range": "min", "max": 100 }' data-plugin-slider-output="#slider-${item.id}">
										  							<input id="slider-${item.id}" name="porcentagem" class="slider-item" type="hidden" value="100" />
									      						</div>
																
                                      						</div>

                                      						<div class="form-check">
                                          						<label class="form-check-label">
                                              						<input class="form-check-input off" type="radio" name="radio-${item.id}" value="false" checked>
                                              							Desligado
                                              								<span class="circle">
                                                  								<span class="check"></span>
                                              								</span>
                                          						</label>
                                      						</div>
                                    					</div>
                  									</div>
      											</c:if>
											</c:forEach>
											</div>
              							</div>
                                    </c:forEach>
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-sm-2">
                            <div class="card card-stats">
                                <div class="card-header card-header-warning card-header-icon">
                                    <p class="card-category"></p>
                                    <h3 class="card-title"><i class="fa fa-lightbulb-o icone-item"></i>
                                        <!-- <small>GB</small> -->
                                    </h3>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                          <div class="col-lg-2 col-md-2 col-sm-2">
                            <div class="card card-stats">
                                <div class="card-header card-header-warning card-header-icon">
                                    <p class="card-category"></p>
                                    <h3 class="card-title"><i class="fa fa-lightbulb-o icone-item"></i>
                                    </h3>
                                </div>
                                <div class="card-footer">
                                    <div class="stats">
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                         </div>
                          </div>
                           </div>
	</jsp:attribute>
</mt:simpletemplate>