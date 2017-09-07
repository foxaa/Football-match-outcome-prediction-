<%@ Page Title="Contact" Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication3.Contact" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">




<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

     <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Football prediction</title>

     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    //<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>  
    <!-- If you don't have the files saved locally, make sure to link it in CodePen, just like you linked the CSS. -->

    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    
    <!--Include Your Style Sheets next -->
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">

    <script src=http://d3js.org/d3.v2.min.js type="text/javascript" charset="utf-8"></script>
    
    
    
</head>
<body>

<div class="conteiner-fluid">
<div class="row top_page_row">
<div class="col-md-2">
<img src="https://s16.postimg.org/hnw7xast1/logo2.png" alt="Responsive image" class="logo" />
</div>
<div class="col-md-9"><p class="title">Football winner prediction</p>
</div>
</div>
</div>
<nav class="navbar navbar-inverse" id="sa">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">RUAP project</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav" id="lista">
        <li><a runat="server" href="~/">Home</a></li>
        <li><a runat="server" href="~/About">About</a></li>  
    	<li class="active"><a runat="server" href="~/Contact">Contact</a></li> 

      </ul>
    </div>
  </div>
</nav>




<div class = "container">
  <div class = "row pocetna_content_title">
  Our contact page


  </div>
 </div>
    <br />
    <br />
    <br />



    <address style="text-align:center";>
        <strong style="font-size:20px">Team member:</strong><a href="mailto:mumiljanovic@etfos.hr" style="font-size:20px">mumiljanovic@etfos.hr</a><br />
        <strong style="font-size:20px">Team member:</strong> <a href="mailto:abasic@etfos.hr" style="font-size:20px">abasic@etfos.hr</a>
    </address>

    </body>
    </html>