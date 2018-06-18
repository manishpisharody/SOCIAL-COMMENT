<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sample_Test001.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Dashboard" />
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />

    <title>Login</title>
   
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />

      <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

      <!-- Custom styles for this template -->
      <link href="assets/css/style.css" rel="stylesheet" />
      <link href="assets/css/style-responsive.css" rel="stylesheet" />
 <!--external css-->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" class="form-login" runat="server">
    <div>

          <div id="login-page">
              
	  	<div class="container" >
	  	<div class="col-sm-3">
		     
		        <h2 class="form-login-heading">sign in now</h2>
		        <div class="login-wrap">
		               <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtInput" placeholder="User ID" CssClass="form-control" runat="server"></asp:TextBox>
		            <br>
		           
                      <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password" CssClass="form-control" runat="server"></asp:TextBox>
		            <label class="checkbox">
		                <span class="pull-right">
                            <asp:LinkButton ID="lnksign" PostBackUrl="~/Register.aspx" runat="server">Sign up</asp:LinkButton>
		
		                </span>
		            </label>
                    <asp:Button ID="btnlogin" OnClick="btnlogin_Click" CssClass="btn btn-theme btn-block" runat="server" Text="Sign in" />
		           
		            <hr>
		            
		           </div>
		        </div>  
		
		        </div>
		
		          <!-- Modal -->
		         
		          <!-- modal -->
		
		     
	  	</div>
	 
    </div>
    </form>


     <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>
</body>
</html>
