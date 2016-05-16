<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>

<%
    /*
     * ELB checks your application's health by periodically
     * sending an HTTP HEAD request to a resource in your application. By
     * default, this is the root or default resource in your application,
     * but can be configured for each environment.
     *
     * Here, we report success as long as the app server is up, but skip
     * generating the whole page since this is a HEAD request only. You
     * can employ more sophisticated health checks in your application.
     */
    if (request.getMethod().equals("HEAD")) return;
%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <title>Bespoke Suits for Dogs! (A sample app for CodeDeploy)</title>
    <meta name="viewport" content="initial-scale=1.0">
    <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
    <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
    <link href='https://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel='stylesheet' href='css/theme.css'>
</head>
<body role="document">
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Bespoke Suits for Dogs</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">Home</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <% if (!((String) request.getAttribute("deploymentGroupName")).contains("Production")) { %>
    <div class="alert alert-info" role="alert">
      <p><strong>AWS CodeDeploy Application:</strong> ${applicationName}</p>
      <p><strong>AWS CodeDeploy Deployment Group:</strong> ${deploymentGroupName}</p>
      <strong>Amazon EC2 Instances associated with this fleet:</strong>
      <ul>
        <% for (final String instance : (List<String>) request.getAttribute("instanceIds")) { %>
          <% if (((Map<String, String>) request.getAttribute("instanceStates")).containsKey(instance)) { %>
            <li> <%= instance %> - Instance Health: <%= ((Map<String, String>) request.getAttribute("instanceStates")).get(instance) %></li>
          <% } else { %>
            <li> <%= instance %> - Instance Health: Unknown</li>
          <% } %>
        <% } %>
      </ul>
    </div>
  <% } %>
  <div class="container theme-showcase" role="main">
    <!-- <% if (((String) request.getAttribute("deploymentGroupName")).contains("Production")) { %>
      <div class="alert alert-dismissible alert-warning">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <h1>Grand Opening!</h1>
        <p>To celebrate our grand opening, this week only all suits are <b>25% off</b> and include <b>free shipping!</b></p>
        <div class="row">
          <h2><center>Transform your dog from silly to stylish!</center></h2>
          <div class="col-sm-4">
            <center><img src="images/sales-lobsterdog.png" style="width:300px;height:360px;"></center>
          </div>
          <div class="col-sm-4" style="font-size: 300px">
            <center>&#8594;</center>
          </div>
          <div class="col-sm-4">
            <center><img src="images/classy-dog1.png" style="width:268px;height:360px;"><center>
          </div>
        </div>
      </div>
    <% } %>-- -->
    <div>
      <h1 align="center" class="cursive_title">Bespoke Suits for Dogs</h1>
      <p align="center" class="tagline"><i>Man's best friend in mans's best threads</i></p>
       <% if (!((String) request.getAttribute("deploymentGroupName")).contains("Production")) { %>
       <!-- <p> Hello Jeremy </p>-->
       <% } %>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/casual-dog2.png" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/fancy-dog3.png" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/alterations-dog4.png" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/100_polyester_tuxedo_halloween_strong_style_color_b82220_large_dog_strong_formal_wear_costume_for_bulldog.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/1pcs-large-dog-wedding-costume-big-dogs-bowknot-suits-jackets-clothes-pet-dog-fashion-coats-pets.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/29b9733b2c0b4eceb44fc5defc1c0569.jpg" style="width:300px;height:300px;">
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/41Zdv7E15fL._SY450_.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/7b74f2d08f6e0721b90131093941058e.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/big-day-dog-tuxedo-bow-tie-collar-2.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/dog-tuxedo_small1.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/dog-tuxedo-jacket-pattern.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/dog3.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/f60806142c3027243baf40f3a0312188.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/Factory-direct-wholesale-pet-clothes-pet-font-b-dog-b-font-four-legged-font-b-trousers.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/fancy-dog3.png" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/mensweardog5.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/meyTVIIfydsWLFJ5fP-v5MQ.jpg" style="width:300px;height:300px;">
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/ngbbs4a9b7cbf8f18a.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/pet-dog-suit122.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/Pinstripes-Little-Pet-Planet1.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/sales-lobsterdog.png" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/Shiba-2.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/suit-dog-work-hard.jpg" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="panel panel-default">
          <div class="panel-body">
            <img src="images/classy-dog1.png" style="width:300px;height:300px;">
          </div>
          <div class="row social">
	          <a class="col-sm-4"><i class="fa fa-3x fa-twitter-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-facebook-square" aria-hidden="true"></i></a>
	          <a class="col-sm-4"><i class="fa fa-3x fa-google-plus-square" aria-hidden="true"></i></a>
	      </div>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
  <script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>
