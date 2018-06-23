$(document).ready(function(){
	setInterval(() => {
		ligando()
	}, 1000);
});

function ligando(){
	{ $.ajax({
        url: "/BoxIoTSimulator/simulador/recuperar",
        async: false,
        complete: function (resultado) {
        	var str = resultado.responseText;
        	var inicio = str.indexOf("/views/") + 7;
        	var fim = str.indexOf(".jsp");
        	var str2 = str.substring(inicio, fim);
        	
        	$(".icone-item").each(function(){
        		if((""+str2).includes(($(this).attr("id")+"").split('-')[1])){
        			$(this).css("color","red");
        		}else{
        			$(this).css("color","#3c4858");
        		}
        	});
        	
        }
    }); }
}