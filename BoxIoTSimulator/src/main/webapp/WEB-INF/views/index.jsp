<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
<style>
.card.card-stats{
    height: 150px;
    width: 135px;
}

i.icone-item{
    margin-top: 20px !important;
    font-size: 90px !important;
}

.card-title{
text-align: center;
}
</style>
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