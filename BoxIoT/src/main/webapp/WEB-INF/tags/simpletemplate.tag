<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true"%>
<%@ attribute name="navbar" fragment="true" %>
<%@ attribute name="js_personalizado" fragment="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
     <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
     <link href="${pageContext.request.contextPath}/resources/template/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
     <link href="${pageContext.request.contextPath}/resources/template/vendor/font-awesome/css/font-awesome.css" rel="stylesheet" />
     <link href="${pageContext.request.contextPath}/resources/template2/assets/css/material-dashboard.min.css" rel="stylesheet">
    
    <!-- Documentation extras -->
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="${pageContext.request.contextPath}/resources/template2/assets/assets-for-demo/demo.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/template/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Specific Page Vendor CSS -->
    <link href="${pageContext.request.contextPath}/resources/template/vendor/select2/css/select2.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/template/vendor/select2-bootstrap-theme/select2-bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/template/vendor/pnotify/pnotify.custom.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/template/vendor/jquery-ui/jquery-ui.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/template/vendor/jquery-ui/jquery-ui.theme.css" />
	
	<!-- Theme CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/template/css/sliders.css" />
	
	<style>
	.ui-slider-range.ui-corner-all.ui-widget-header.ui-slider-range-min{
		background: #942bae;
	}
	
	span.select2.select2-container.select2-container--bootstrap.select2-container--focus{
		width:100% !important;
	}
	</style>
    
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8"/>
 <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>BoxIoT | ${title }</title>
<style>
.btn-group.bootstrap-select{
width:300px !important;
}
a.simple-text.logo-normal{
text-align:center !important;
}
.dropbtn {
    background-color: #3498DB;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #2980B9;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 105px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>
</head>
<body>
<div class="wrapper">
        <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
            <!--
                Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

                Tip 2: you can also add an image using data-image tag
            -->
            <div class="logo">
                <a href="" class="simple-text logo-normal">
                    Menu
                </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="nav-item active ">
                        <a class="nav-link" href="${pageContext.request.contextPath}">
                            <i class="material-icons">extension</i>
                            <p>Simulator</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
        
        <nav class="navbar navbar-expand-lg navbar-transparent  navbar-absolute fixed-top">
                <div class="container-fluid">
                    <div class="navbar-wrapper">
                        <a class="navbar-brand" href="">Box IOT Simulador</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span>
                    </button>
<jsp:invoke fragment="navbar"></jsp:invoke>
                </div>
            </nav>
            
	<jsp:invoke fragment="content"></jsp:invoke>
	<!--    <button class="btn btn-rose btn-round" data-toggle="modal" data-target="#myModal10">
                          Small alert modal
                        <div class="ripple-container"></div></button>
                        
                                                <!-- small modal
                        <div class="modal fade modal-mini modal-primary" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    		<div class="modal-dialog modal-small">
                    			<div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
                            </div>
                    				<div class="modal-body">
                    					<p id="msg">Are you sure you want to do this?</p>
                    				</div>
                            <div class="modal-footer justify-content-center">
                              <button type="button" class="btn btn-link" data-dismiss="modal">Never mind</button>
                              <button type="button" class="btn btn-success btn-link">Yes<div class="ripple-container"></div></button>
                            </div>
                    			</div>
                    		</div>
                    	</div>
                        end small modal -->
                        
                        <button id="modal-question" style="display:none" class="" data-toggle="modal" data-target="#myModal">
                        </button>
                        
                                                <!-- Classic Modal -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                          <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                 <!-- <h4 class="modal-title">Mensagem do sistema</h4> -->
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                      <i class="material-icons">clear</i>
                                  </button>
                                </div>
                                <div class="modal-body">
                                    <p id="question"></p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="btn-deny" class="btn btn-link btn-success">Não</button>
                                    <button type="button" id="btn-confirm" class="btn btn-link" data-dismiss="modal">Sim</button>
                                </div>
                            </div>
                        </div>
                    	</div>
                    	<!--  End Modal -->
                    	
                    	<button id="modal-notf" style="display:none" class="" data-toggle="modal" data-target="#myModalNotf">
                        </button>
                        
                                                <!-- Success Modal -->
                        <div class="modal fade" id="myModalNotf" tabindex="-1" role="dialog" aria-labelledby="myModalLabelNotf" aria-hidden="true">
                          <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                 <h4 class="modal-title">Sucesso!</h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                      <i class="material-icons">clear</i>
                                  </button>
                                </div>
                                <div class="modal-body">
                                    <p id="notf"></p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="btn-ok-sucess" class="btn btn-success" data-dismiss="modal">OK</button>
                                </div>
                            </div>
                        </div>
                    	</div>
                    	<!--  End success Modal -->
                    	
                    	<button id="modal-notf-error" style="display:none" class="" data-toggle="modal" data-target="#myModalNotfError">
                        </button>
                        
                                                <!-- Error Modal -->
                        <div class="modal fade" id="myModalNotfError" tabindex="-1" role="dialog" aria-labelledby="myModalLabelNotfError" aria-hidden="true">
                          <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                 <h4 class="modal-title">Ops, algo deu errado!</h4>
                                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                      <i class="material-icons">clear</i>
                                  </button>
                                </div>
                                <div class="modal-body">
                                    <p id="notf-error"></p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" id="btn-ok-error" class="btn btn-danger" data-dismiss="modal">OK</button>
                                </div>
                            </div>
                        </div>
                    	</div>
                    	<!--  End Error Modal -->
	
            <footer class="footer ">
                <div class="container-fluid">
                </div>
            </footer>
        </div>

    </div>
    
    <script src="${pageContext.request.contextPath}/resources/template/vendor/jquery/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/core/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/core/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/bootstrap-material-design.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>

    <!--  Charts Plugin, full documentation here: https://gionkunz.github.io/chartist-js/ -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/chartist.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/chartist.min.js"></script>
    <!-- Library for adding dinamically elements -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/arrive.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/arrive.min.js" type="text/javascript"></script>
    <!--  Notifications Plugin, full documentation here: http://bootstrap-notify.remabledesigns.com/    -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Material Dashboard Core initialisations of plugins and Bootstrap Material Design Library -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/material-dashboard.js"></script>
    <!-- demo init -->
    <script src="${pageContext.request.contextPath}/resources/template2/assets/js/plugins/demo.js"></script>

    <script src="${pageContext.request.contextPath}/resources/template/vendor/select2/js/select2.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/pnotify/pnotify.custom.js"></script>

    <script src="${pageContext.request.contextPath}/resources/template/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/popper/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/bootstrap/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/common/common.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/nanoscroller/nanoscroller.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/magnific-popup/jquery.magnific-popup.js"></script>
    <script src="${pageContext.request.contextPath}/resources/template/vendor/jquery-placeholder/jquery-placeholder.js"></script>
	<script src="${pageContext.request.contextPath}/resources/template/vendor/jquery-ui/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/resources/template/vendor/jqueryui-touch-punch/jqueryui-touch-punch.js"></script>
    
    <jsp:invoke fragment="js_personalizado"></jsp:invoke>
</body>
</html>