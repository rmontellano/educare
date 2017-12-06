<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Educare V2</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="extjs-4.2/resources/css/ext-all-gray.css">
		<script type="text/javascript" src="extjs-4.2/ext-all-debug.js"></script>
		<script type="text/javascript" src="extjs-4.2/locale/ext-lang-es.js"></script>
		<script type="text/javascript" src="app.js"></script>
		<style type="text/css">

				.x-tab-wrap{
					position: absolute;
					display: block;
					padding-left: 20px;
					transform: rotate(90deg);
				}

				.x-tab-button{
					position: absolute;
					display: block;
					padding-left: 0px;
					padding-top: 2px;
				}

			</style>
		<script type="text/javascript">
			var parametrosRecord = {
		         token : "<%out.print(request.getParameter("q"));%>",
		     };
		     //console.info(parametrosRecord);
			/* Ext.onReady(function(){
				var mascaraCarga = Ext.get('loading-mask');
				var carga = Ext.get('loading');

				carga.fadeOut({ duration: 0.2, remove: true});

				mascaraCarga.setOpacity(0.9);
				mascaraCarga.shift({
					xy: carga.getXY(),
					width: carga.getWidth(),
					height: carga.getHeight(),
					remove: true,
					duration: 100,
					opacity: 0.1,
					easing: 'bounceOut'
				});
			}); */

			//window.onbeforeunload = function() { return "You work will be lost."; };

		</script> 
	</head>
	<body>
	<!-- 
	<div id="loading-mask"></div>
	<div id="loading">
		<span id="loading-message"><i class="fa fa-spinner fa-pulse"></i> Cargando .. Espere un momento...</span>
	</div>-->
	</body>
</html>
