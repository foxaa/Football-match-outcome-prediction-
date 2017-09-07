<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default"%>

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
    <!--<div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Application name</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Contact</a></li>
                    </ul>
                    <asp:LoginView runat="server" ViewStateMode="Disabled">
                        <AnonymousTemplate>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a runat="server" href="~/Account/Register">Register</a></li>
                                <li><a runat="server" href="~/Account/Login">Log in</a></li>
                            </ul>
                        </AnonymousTemplate>
                       
                    </asp:LoginView>
                </div>
            </div>
        </div>-->

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
        <li class="active"><a runat="server" href="~/">Home</a></li>
        <li><a runat="server" href="~/About">About</a></li>  
    	<li><a runat="server" href="~/Contact">Contact</a></li> 

      </ul>
    </div>
  </div>
</nav>
<div class = "container">
  <div class = "row pocetna_content_title">
  Welcome to our football prediction website
  <div class = "row pocetna_content">
  Use the navbar on top to learn something about this project and you can also see our contact info.

  </div>
  </div>
 </div>
    <br />
    <br />
    
<form id="form1" runat="server">


    <div class="unos">
                <strong>Machine Learning Project: Football game winner prediction</strong><br />
       <br />
Average Home team  yellow cards in last 3 games:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" CssClass="pokusaj"></asp:TextBox><br />
        <br />
Average Away team  yellow cards in last 3 games:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="pokusaj"></asp:TextBox><br />
        <br />
Average Home team corners in last 3 games:&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" CssClass="pokusaj"></asp:TextBox><br />
        <br />
Average Away team corners in last 3 games:&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" CssClass="pokusaj"></asp:TextBox><br />
        <br />
Average Home team full time goals in last 3 games:&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" CssClass="pokusaj"></asp:TextBox><br />
        <br />
Average Away team full time goals in last 3 games:&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" CssClass="pokusaj"></asp:TextBox><br />
        <br />
       

        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="pokusaj"/>

        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        <br />
    
    </div>
    
    

    <script>  
        

        var rez = "<%= sas %>";

        var rez2 = "<%= sas2 %>";

        var rez3 = "<%= sas3 %>";

        console.log(rez2);


            //var data = '{"Results":{"output1":{"type":"table","value":{"ColumnNames":["Scored Probabilities for Class \"0\"","Scored Probabilities for Class \"1\"","Scored Probabilities for Class \"2\"","Scored Labels"],"ColumnTypes":["Double","Double","Double","Int32"],"Values":[["0.125","0.625","0.25","1"]]}}}}';



            //var res = data.substring(253, 258);

            var res1 = parseFloat(rez).toFixed(4);
            var res11 = res1 * 100;

            console.log(res11);

            //var res2 = data.substring(261, 266);
            var res2 = parseFloat(rez2).toFixed(4);
            var res22 = res2 * 100;
           

            //var res3 = data.substring(269, 273);
            var res3 = parseFloat(rez3).toFixed(4);
            var res33 = res3 *100;

            //console.log(res2);

            //var su = res * 2;

            //var se = su * 2;

            var data2 = [{ name: "Draw", value: res11 }, { name: "Home win", value: res22 }, { name: "Away win", value: res33 }];

            var width = 500;
            var height = 500;
            var outerRadius = 200;
            var innerRadius = 0;                        var tooltip = d3.select("body")
                .append("div")
                .style("position", "absolute")
                .style("z-index", "10")
                .style("visibility", "hidden")
                .style("background", "#000")
                .text("a simple tooltip");            var color = d3.scale.category20();            var arc = d3.svg.arc()
                .innerRadius(innerRadius)
                .outerRadius(outerRadius);
            var area = d3.select('body')
                .append('svg')
                .attr('align','center')
                .attr('width', width)
                .attr('height', height);

            var pie = d3.layout.pie()
                .value(function (d) { return d.value; });

            var pieArcs = area.selectAll("g.pie")
                 .data(pie(data2))
                 .enter()
                .append("g")
                 .attr("class", "pie")
                 .attr("transform", "translate(" + (width / 2) + ", " + (height /
                2) + ")")                .on("mouseover", function (d) { tooltip.text(d.data.name + ":" + d.value + "%"); return tooltip.style("visibility", "visible"); })                .on("mousemove", function () { return tooltip.style("top", (d3.event.pageY - 10) + "px").style("left", (d3.event.pageX + 10) + "px"); })
                .on("mouseout", function () { return tooltip.style("visibility", "hidden"); })                .on("mouseenter", function (d) { console.log(d.data.name + ":" + d.value) });
                pieArcs.append("path");
            pieArcs.append("path")
                 .attr("fill", function (d, i) { return color(i); })
                 .attr("d", arc);            pieArcs.append("text")
                 .attr("transform", function (d) {
                     return "translate(" + arc.centroid(d)
                    + ")";
                 })
                 .attr("text-anchor", "middle")
                 .text(function (d) { return d.data.name + " " + d.value + "%"; });                            

            //console.log(res);

            //console.log(jsonObject);
            //console.log(data);

            //alert(Results.output1.value.Values[0]);

            //console.log(data.Results.output1.value.Values[0]);

            //console.log(data["Results"]);

        
    </script>
    </form>

</body>
</html>

