<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>GFT</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
	</head>
	<body id="top">
				
		<div class="wrapper row0">
		
		</div>
				
		<div class="wrapper row1">
		  <header id="header" class="clear">
		    <div id="logo" class="fl_left">
		      <h1><a href="index.html">GFT Starter Lab</a></h1>
		      <p>START Winter Edition 2016</p>
		    </div>
		  </header>
		</div>
		
		
		<div class="wrapper row2">
		  <div class="rounded">
		    <nav id="mainav" class="clear">
		      <ul class="clear">
		        <li class="active"><a href="#">Aulas Java</a></li>
		        <li><a class="drop" href="#">Semana 1</a>
		          <ul>
				    <li><a href="pages/full-width.html">Introdução Aplicaões WEB</a></li>
		            <li><a href="pages/gallery.html">HTML 5 / CSS</a></li>
		            <li><a href="pages/portfolio.html">JavaScript</a></li>           
		          </ul>
		        </li>
		        <li><a class="drop" href="#">Semana 2</a>
		          <ul>
		            <li><a href="#">Linguagem e Plataforma Java</a></li>
		            <li><a class="drop" href="#">Ferramentas de Apoio</a>
		              <ul>
		                <li><a href="#">Maven</a></li>
		                <li><a href="#">Compilação</a></li>
						<li><a href="#">Testes Junit</a></li>
						<li><a href="#">Debug</a></li>
		              </ul>
		            </li>
					<li><a href="#">Modificadores e Tipos Primitivos</a></li>
					<li><a href="#">Orientação a Objeto</a></li>
					<li><a href="#">Arrays e Collections</a></li>		
		          </ul>
		        </li>
				
				<li><a class="drop" href="#">Semana 3</a>
		         <ul>
		            <li><a href="#">Interpretação de Java Stacktrace</a></li>
					<li><a href="#">Tratamento de Exceções</a></li>
					<li><a href="#">Java IO</a></li>
		            <li><a class="drop" href="#">Formatação de Datas e Números</a>
		              <ul>
		                <li><a href="#">Date / Calendar</a></li>
		                <li><a href="#">DateFormat</a></li>
						<li><a href="#">Big Decimal</a></li>				
		              </ul>			  
		            </li>			
				</ul>
		        </li>
				
				<li><a class="drop" href="#">Semana 4</a>
		          <ul>
		            <li><a href="#">Introdução ao Servlet</a></li>
		            <li><a class="drop" href="#">Design Patterns</a>
		              <ul>
		              <li><a href="#">Intro. Design Patterns</a></li>
		                <li><a href="#">Intro. Spring MVC</a></li>          
						<li><a href="#"> Modelagem em Camadas</a></li>				
		              </ul>			  
		            </li>			
					<li><a href="#">JavaScript AJAX</a></li>
					<li><a href="#">JSP, JSTL</a></li>
					<li><a href="#">Threads</a></li>	
		          </ul>
		        </li>
				
				<li><a class="drop" href="#">Semana 5</a>
		          <ul>           
		            <li><a class="drop" href="#">Conexão de Banco de Dados</a>
		              <ul>
		                <li><a href="#">JDBC</a></li>
		                <li><a href="#">Pool de Conexões</a></li>
					  </ul>
		            </li>
					<li><a href="#">JDBC Template</a></li>
					<li><a href="#">Java Web app + JDBC Template</a></li>
					<li><a class="drop" href="#">Restful WebServices</a>
					<ul>
					  <li><a href="../REST/contact/contactsXML">Contatos XML Response (Exercício)</a></li>
					  <li><a href="../REST/contact/contactsJSON">Contatos JSON Response (Exercício)</a></li>
		              <li><a href="../REST/city/calculateXML?city1=MANAUS&city2=RIO%20DE%20JANEIRO">DistanceCity XML (Exercício)</a></li>
		              <li><a href="../REST/city/calculateJSON?city1=MANAUS&city2=RIO%20DE%20JANEIRO">DistanceCity JSON (Exercício)</a></li>   
									
		              </ul>			
					</li>
					 </ul>
		        </li>
				
			    <li><a href="#">Ajuda</a></li>
			    
		      </ul>
		    </nav>
		  </div>
		</div>
		
		
		<div class="wrapper">
		  <div id="slider">
		    <div id="slide-wrapper" class="rounded clear"> 
		    		      
		      <figure id="slide-1"><a class="view" href="#"><img src="images/demo/foto-sorocaba.jpg" alt=""></a></figure>
		      
		    </div>
		     <ul id="slide-tabs">
		        <li><a href="contacts">Exercício Final (Lista de Contatos)</a></li>
		        <li><a href="#slide-1">Material Oracle</a></li>
		        <li><a href="#slide-1">Material Agile Center</a></li>
				</ul>
		  </div>
		  
		</div>
		
		<div class="wrapper row4">
		
		</div>
		
		<div class="wrapper row5">
		  <div id="copyright" class="clear"> 
		    <!-- ################################################################################################ -->
		    <p class="fl_right"><a target="_blank" href="http://www.gft.com/br" title="GFT">GFT Brasil</a></p>
		    <!-- ################################################################################################ --> 
		  </div>
		</div>
		
		<!-- JAVASCRIPTS --> 
		
		<script src="layout/scripts/jquery.min.js"></script> 
		<script src="layout/scripts/jquery.fitvids.min.js"></script> 
		<script src="layout/scripts/jquery.mobilemenu.js"></script> 
		<script src="layout/scripts/tabslet/jquery.tabslet.min.js"></script>
	</body>
</html>