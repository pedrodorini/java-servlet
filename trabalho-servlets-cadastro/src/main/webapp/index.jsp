<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="br.univel.RegisterBean"%>
<%@taglib uri="https://journaldev.com/jsp/tlds/customTag" prefix="ct"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
  body {
    margin: 0 auto;
    background-color: #5647A4;
  }

  * {
    box-sizing: border-box;
  }

  .row {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
  }

  .md-title {
    color: #FA826E;
    text-align: center;
    font-size: 24px;
    margin: 40px 0;
  }

  .l-register-box {
    display: flex;
    flex-flow: column wrap;
    flex-grow: 1;
    align-items: center;
  }

  .md-input {
    height: 35px;
    margin:  5px 15px;
    padding: 0 15px;
    background-color: #6A5FA4;
    border: 1px solid #FA826E;
    color: #FA826E;
    width: 290px;
  }

  ::-webkit-input-placeholder { color: #FA826E; }
  ::-moz-placeholder { color: #FA826E; }
  :-ms-input-placeholder { color: #FA826E; }
  input:-moz-placeholder { color: #FA826E; }

  .md-button {
    height: 35px;
    margin:  5px 15px;
    background-color: transparent;
    border: 1px solid #FA826E;
    color: #FA826E;
    font-size: 14px;
    text-align: center;
    text-transform: uppercase;
    transition: .3s ease;
    position: relative;
    cursor: pointer;
    width: 290px;
  }

  .md-button:before {
    content: '';
    position: absolute;
    right: 0;
    width: 0;
    top: 0;
    height: 100%;
    background-color: #F86E6E;
    transition: .3s ease;
    z-index: -1;
  }

  .md-button:hover {
    color: #5647A4;
  }

  .md-button:hover:before {
    width: 100%;
    left: 0;
    transition: .3s ease;
  }


  .l-list {
    list-style-type: none;
    margin: 15px;
    padding: 0;
  }
  
  .l-list-item {
  	color: #F86E6E;
  }
  </style>
</head>
<body>
    <main class="l-container">
      <h1 class="md-title">Trabalho Servlets e JSP</h1>
      <div class="row">
        <div class="l-register-box">
        	<form action="index" method="POST">
	          <input name="name" type="text" class="md-input" placeholder="Digite um nome">
	          <ct:customTag></ct:customTag>
        	</form>
        </div>
        
        <div class="l-list-container">
          	<ul class="l-list">
				<% if (request.getAttribute("bean") != null) {
					out.println(request.getAttribute("bean"));
				}
				%>
			</ul>
    	</div>
        
      </div>
    </main>
  </body>
</html>
