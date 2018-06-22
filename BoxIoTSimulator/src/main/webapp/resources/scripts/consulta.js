$(document).ready(function(){
	setTimeout(function(){ $.ajax({
        url: "/BoxIoTSimulator/simulador/recuperar",
        async: false,
        complete: function (resultado) {
        	var str = resultado.responseText;
        	var inicio = str.indexOf("/views/") + 7;
        	var fim = str.indexOf(".jsp");
        	var str2 = str.substring(inicio, fim);
        	for(var i = 0; i < str2.split(";").length; i++){
        		$("#icone-"+(str2.split(";")[i]+"").split(",")[0]).css("color","red")
        	}
        	alert(str2);
        }
    }); }, 200);
	
});