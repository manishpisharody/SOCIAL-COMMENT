<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="soc.aspx.cs" Inherits="Sample_Test001.soc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Dashboard" />
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />

    <title>Comment Field</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

           
        <div>




            <section id="container">
                <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
                <!--header start-->
                <header class="header black-bg">
                    <div class="sidebar-toggle-box">
                        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                    </div>
                    <!--logo start-->
                    <a href="index.html" class="logo"><b>DASHGUM FREE</b></a>
                    <!--logo end-->
                    <div class="nav notify-row" id="top_menu">
                        <!--  notification start -->

                        <!--  notification end -->
                    </div>
                    <div class="top-menu">
                        <ul class="nav pull-right top-menu">
                            <li>
                                <asp:LinkButton ID="lnklogout" CssClass="logout" OnClick="lnklogout_Click" runat="server">Logout</asp:LinkButton>
                        </ul>
                    </div>
                </header>
                <!--header end-->

                <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
                <!--sidebar start-->
                <aside>
                    <div id="sidebar" class="nav-collapse ">
                        <!-- sidebar menu start-->
                        <ul class="sidebar-menu" id="nav-accordion">

                            <p class="centered"><a href="profile.html">
                                <img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                            <h5 class="centered">Command System </h5>

                            <li class="mt">
                                <a href="#">
                                    <i class="fa fa-dashboard"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>









                        </ul>
                        <!-- sidebar menu end-->
                    </div>
                </aside>
                <!--sidebar end-->

                <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
                <!--main content start-->
                <section id="main-content">
                    <section class="wrapper site-min-height">
                        <h3><i class="fa fa-angle-right"></i>Blank Page</h3>
                        <div class="row mt">
                            <div class="col-lg-12">
                                <asp:TextBox ID="txtcommand" CssClass="form-control round-form" Height="100" TextMode="MultiLine" runat="server"></asp:TextBox>
                                <br />
                                <div class="col-sm-offset-11">
                                    <asp:Button ID="btnStatus" OnClick="btnStatus_Click" CssClass="btn btn-primary" runat="server" Text="Comment" />
                                </div>
                                <br />

                                <asp:Repeater ID="rptStatus" OnItemDataBound="rptStatus_ItemDataBound" OnItemCommand="rptStatus_ItemCommand" runat="server">

                                    <ItemTemplate>
                                        <div class="row form-group">

                                            <div class="col-sm-12">
                                                <div class="content-panel">
                                                    <h4><i class="fa fa-angle-right"></i><asp:Label ID="Label2" runat="server" Text='<%#Eval("username") %>'></asp:Label></h4>
                                                    <div class="col-sm-offset-10">
                                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                                    </div>
                                                    <section id="unseen">
                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                        <asp:HiddenField ID="hdnPID" Value='<%#Eval("ID") %>' runat="server" />
                                                    </section>
                                                    <div class="col-sm-offset-4">
                                                        <asp:LinkButton ID="lnkStatRep" CommandName="StatRep" runat="server">Reply</asp:LinkButton>
                                                    </div>
                                                    <br />
                                                    <asp:Panel ID="pnlrply" Visible="false" runat="server">
                                                        <asp:TextBox ID="txtStatRep" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <asp:Button ID="btnStatreppost" CssClass="btn btn-primary" CommandName="repstatpost" runat="server" Text="Post" />
                                                        <asp:Button ID="btncancel" CssClass="btn btn-danger" CommandName="repstatcancel" runat="server" Text="Cancel" />
                                                    </asp:Panel>
                                                </div>

                                            </div>
                                        </div>
                                        <%-- child comment --%>

                                        <asp:Repeater ID="rptcomment" OnItemDataBound="rptcomment_ItemDataBound" OnItemCommand="rptcomment_ItemCommand" runat="server">
                                            <ItemTemplate>
                                                <div class="row form-group col-sm-offset-1">

                                                    <div class="col-sm-12">
                                                        <div class="content-panel">
                                                                
                                                            <h4><i class="fa fa-angle-right"></i><asp:Label ID="Label2" runat="server" Text='<%#Eval("username") %>'></asp:Label></h4>
                                                            <div class="col-sm-offset-10">
                                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                                    </div>
                                                            <section id="unseen">
                                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                                <asp:HiddenField ID="hdnPID" Value='<%#Eval("ID") %>' runat="server" />
                                                            </section>
                                                            <div class="col-sm-offset-4">
                                                                <asp:LinkButton ID="lnkStatRep" CommandName="StatRep" runat="server">Reply</asp:LinkButton>
                                                            </div>
                                                            <br />
                                                            <asp:Panel ID="pnlrply" Visible="false" runat="server">
                                                                <asp:TextBox ID="txtStatRep" CssClass="form-control" runat="server"></asp:TextBox>
                                                                <asp:Button ID="btnStatreppost" CssClass="btn btn-primary" CommandName="repstatpost" runat="server" Text="Post" />
                                                                <asp:Button ID="btncancel" CssClass="btn btn-danger" CommandName="repstatcancel" runat="server" Text="Cancel" />
                                                            </asp:Panel>
                                                        </div>

                                                    </div>
                                                </div>

                                                <asp:Repeater ID="rptcommentRep" runat="server">
                                                    <ItemTemplate>
                                                        <div class="row form-group col-sm-offset-2">

                                                            <div class="col-sm-12">
                                                                <div class="content-panel">
                                                                    <h4><i class="fa fa-angle-right"></i><asp:Label ID="Label2" runat="server" Text='<%#Eval("username") %>'></asp:Label></h4>
                                                                    <div class="col-sm-offset-10">
                                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                                    </div>
                                                                    <section id="unseen">
                                                                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                                        <asp:HiddenField ID="hdnPID" Value='<%#Eval("ID") %>' runat="server" />
                                                                    </section>
                                                                    <br />
                                                                    <asp:Panel ID="pnlrply" Visible="false" runat="server">
                                                                        <asp:TextBox ID="txtStatRep" CssClass="form-control" runat="server"></asp:TextBox>
                                                                        <asp:Button ID="btnStatreppost" CssClass="btn btn-primary" CommandName="repstatpost" runat="server" Text="Post" />
                                                                        <asp:Button ID="btncancel" CssClass="btn btn-danger" CommandName="repstatcancel" runat="server" Text="Cancel" />
                                                                    </asp:Panel>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>




                                            </ItemTemplate>
                                        </asp:Repeater>

                                        <%-- end child comment --%>
                                    </ItemTemplate>
                                </asp:Repeater>







                            </div>
                        </div>


                    </section>
                    <! --/wrapper -->
                </section>
                <!-- /MAIN CONTENT -->

                <!--main content end-->
                <!--footer start-->
                <footer class="site-footer">
                    <div class="text-center">
                        2014 - Alvarez.is
              <a href="blank.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
                    </div>
                </footer>
                <!--footer end-->
            </section>




            <!-- js placed at the end of the document so the pages load faster -->
            <script src="assets/js/jquery.js"></script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
            <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
            <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
            <script src="assets/js/jquery.scrollTo.min.js"></script>
            <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


            <!--common script for all pages-->
            <script src="assets/js/common-scripts.js"></script>

            <!--script for this page-->

            <script>
                //custom select box

                $(function () {
                    $('select.styled').customSelect();
                });

            </script>
        </div>
                 </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
