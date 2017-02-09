<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <!-- META SECTION -->
    <title>Kanbha | આપણું કણભા </title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="Images/favicon.png" type="image/x-icon" />
    <!-- END META SECTION -->
    <link rel="stylesheet" type="text/css" href="css/revolution-slider/extralayers.css"
        media="screen" />
    <link rel="stylesheet" type="text/css" href="css/revolution-slider/settings.css"
        media="screen" />
    <link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
</head>
<body>
    <!-- page container -->
    <div class="page-container">
        <!-- page header -->
        <div class="page-header">
            <%--<marquee width="100%" behavior="ALTERNATE" scrollamount="2" direction="left" style="margin-bottom: 0px;" onmouseover="this.stop();" onmouseout="this.start();">
                <a href="#"  title="booking details" class="rank" style="color:#890208; font-family:Calisto MT; font-size:medium; ">
                <strong>જય સરદાર..જય પાટીદાર &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; પાટીદાર અનામત અંદોલન વિષે..</strong></a>
                </marquee>--%>
            <!-- page header holder -->
            <div class="page-header-holder">
                <!-- page logo -->
                <div class="logo">
                    <a href="Default.aspx">આપણું કણભા - Kanbha.Com</a>
                </div>
                <!-- ./page logo -->
                <!-- search -->
                <div class="search">
                    <%-- <div class="search-button">
                        <span class="fa fa-search"></span>
                    </div>
                    <div class="search-container animated fadeInDown">
                        <form action="#" method="post">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..." />
                            <div class="input-group-btn">
                                <button class="btn btn-primary">
                                    <span class="fa fa-search"></span>
                                </button>
                            </div>
                        </div>
                        </form>
                    </div>--%>
                </div>
                <!-- ./search -->
                <!-- nav mobile bars -->
                <div class="navigation-toggle">
                    <br />
                    <br />
                    <div class="navigation-toggle-button">
                        <span class="fa fa-bars"></span>
                    </div>
                </div>
                <!-- ./nav mobile bars -->
                <!-- navigation -->
                <ul class="navigation">
                    <li><a href="Default.aspx">Home</a> </li>
                    <li><a href="Special/History.aspx">History</a> </li>
                    <li><a href="#">Gallery</a>
                        <ul>
                            <li><a href="Special/Gallery.aspx">General</a></li>
                            <li><a href="Special/NavratriGallery.aspx">નવરાત્રી</a></li>
                            <li><a href="Special/GaneshGallery.aspx">ગણેશ ઉત્સવ</a></li>
                            <li><a href="Special/MedoGallery.aspx">મેળો</a></li>
                            <li><a href="Special/VolleyballGallery.aspx">વોલીબોલ ટુર્નામેન્ટ</a></li>
                        </ul>
                    </li>
                    <li><a href="Special/Members.aspx">Members' Info</a></li>
                    <li><a href="Special/Contactus.aspx">Contact Us</a></li>
                </ul>
                <!-- ./navigation -->
            </div>
            <!-- ./page header holder -->
        </div>
        <!-- ./page header -->
        <!-- page content -->
        <div class="page-content">
            <!-- revolution slider -->
            <form id="form1" runat="server">
            <div class="banner-container">
                <div class="banner">
                    <ul>
                        <asp:Repeater ID="rptr1" runat="server">
                            <ItemTemplate>
                                <li data-transition="fade" data-slotamount="1" data-masterspeed="500" data-saveperformance="on">
                                    <asp:Image ID="imgImage" runat="server" ImageUrl=' <%# "~/"+ Eval("Image") %>' />
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
            <!-- ./revolution slider -->
            <!-- page content wrapper -->
            <!-- ./page content wrapper -->
            <!-- page content wrapper -->
            <div class="page-content-wrap bg-img-1">
                <div class="divider">
                    <div class="box">
                        <span class="fa"></span>
                    </div>
                </div>
                <!-- page content holder -->
                <div class="page-content-holder">
                    <div class="row">
                        <div class="col-md-8 this-animate" data-animate="fadeInLeft">
                            <div class="block-heading block-heading-centralized">
                                <h2 class="heading-underline">
                                    શ્રેષ્ઠ અને સમૃદ્ધ કણભા</h2>
                                <div class="block-heading-text">
                                    <strong>“કણભા” </strong>ગામ અમદાવાદ-કુહા-કપડવંજ રાજ્યધોરી માર્ગ (હાલ અમદાવાદ-ઈન્દોર
                                    નેશનલ હાઇવે પર) અમદાવાદથી પૂર્વે ૧૬ કિમી દુર ખારી નદીના રમણીય પશ્ચિમ તટે વસેલું
                                    છે.કેહવાય છે સને <strong>૧૩૪૩ માં ધમાસણા (કલોલ તાલુકો) થી “શ્રી ઈચ્છાભાઈ પટેલે”</strong>
                                    આવી કણભા ગામ વસાવ્યું હતું. કણ (અનાજ) અને ભૂ (જમીન-પાણી) વગેરેની સવલતવાળી ભૂમિ ઉપર
                                    વસવાથી કદાચ આ ગામનું નામ "કણભા" પડ્યું હશે તો ઘણી લોકવાયકા એવી છે કે <strong>“કણા”</strong>
                                    નામના રબારીએ અહિ સૌ પ્રથમ વસવાટ કર્યો હોવાથી ગામ “કણભા” તરીકે ઓળખાયું.
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 this-animate text-center" data-animate="fadeInRight">
                            <img src="Images/Gate (2).jpg" class="img-responsive-mobile" style="width:350px;" /><%--put 400*285 around pixel--%>
                        </div>
                    </div>
                    <div class="page-content-holder padding-v-20">
                        <div class="text-center">
                            <a href="Special/History.aspx" class="btn btn-primary btn-xl"><span class="fa"></span>
                                Read More</a> <a href="Special/Gallery.aspx" class="btn btn-success btn-xl"><span
                                    class="fa"></span>View Gallery</a>
                        </div>
                    </div>
                </div>
                <!-- ./page content holder -->
            </div>
            <!-- ./page content wrapper -->
            <!-- page content wrapper -->
            <div class="page-content-wrap bg-texture-1 bg-dark light-elements">
                <div class="divider">
                    <div class="box">
                        <span class="fa"></span>
                    </div>
                </div>
                <!-- page content holder -->
                <div class="page-content-holder">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="text-column text-column-centralized tex-column-icon-lg this-animate"
                                data-animate="fadeInLeft">
                                <div class="text-column-icon">
                                    <a href="Special/Panchayat.aspx"><span class="fa fa-support"></span></a>
                                </div>
                                <h4>
                                    <a href="Special/Panchayat.aspx">કણભા ગ્રામ પંચાયત </a>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="text-column text-column-centralized tex-column-icon-lg this-animate"
                                data-animate="fadeInUp">
                                <div class="text-column-icon">
                                    <a href="Special/SpecialPerson.aspx"><span class="fa fa-plus-square"></span></a>
                                </div>
                                <h4>
                                    <a href="#Special/SpecialPerson.aspx">હેલ્થ</a>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="text-column text-column-centralized tex-column-icon-lg this-animate"
                                data-animate="fadeInRight">
                                <div class="text-column-icon">
                                    <a href="UpcomingEvents.aspx"><span class="fa fa-edit"></span></a>
                                </div>
                                <h4>
                                    <a href="Special/Education.aspx">શિક્ષણ</a></h4>
                            </div>
                        </div>
                        <div class="col-md-4" style="margin-left: -17%">
                        </div>
                        <div class="col-md-4">
                            <div class="text-column text-column-centralized tex-column-icon-lg this-animate"
                                data-animate="fadeInUp">
                                <div class="text-column-icon">
                                    <a href="Special/SpecialPerson.aspx"><span class="fa fa-star"></span></a>
                                </div>
                                <h4>
                                    <a href="Special/VyaktiVishesh.aspx">વિશેષ વ્યક્તિગણ અને માર્ગદર્શક</a>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="text-column text-column-centralized tex-column-icon-lg this-animate"
                                data-animate="fadeInRight">
                                <div class="text-column-icon">
                                    <a href="UpcomingEvents.aspx"><span class="fa fa-clock-o"></span></a>
                                </div>
                                <h4>
                                    <a href="UpcomingEvents.aspx">આવનાર ઉત્સવો</a></h4>
                            </div>
                        </div>
                        <%-- <div class="col-md-4" >
                            <div class="text-column text-column-centralized tex-column-icon-lg this-animate"
                                data-animate="fadeInRight">
                                <div class="text-column-icon">
                                    <a href="UpcomingEvents.aspx"><span class="fa fa-plus-square"></span></a>
                                </div>
                                <h4>
                                    <a href="#">હેલ્થ</a></h4>
                               
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="text-column text-column-centralized tex-column-icon-lg this-animate"
                                data-animate="fadeInRight">
                                <div class="text-column-icon">
                                    <a href="#"><span class="fa fa-clipboard"></span></a>
                                </div>
                                <h4>
                                    <a href="UpcomingEvents.aspx">શિક્ષણ</a></h4>
                                
                            </div>
                        </div>--%>
                    </div>
                </div>
                <!-- ./page content holder -->
            </div>
            <!-- ./page content wrapper -->
            <!-- page content wrapper -->
            <div class="page-content-wrap bg-light bg-texture-1">
                <div class="divider">
                    <div class="box">
                        <span class="fa"></span>
                    </div>
                </div>
                <!-- page content holder -->
                <div class="page-content-holder">
                    <div class="quote this-animate" data-animate="fadeInDown">
                        <div class="row">
                            <div class="col-md-9">
                                <h3>
                                    <strong>Kanbha.com</strong> &mdash; ઉપર આપની નોધણી કરવા માટે..</h3>
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="btnsubmit" class="btn btn-primary btn-block btn-lg" runat="server"
                                    Text="Click Here" OnClick="btnsubmit_Click" />
                            </div>
                        </div>
                    </div>
                    <%--   </div>
               
                <div class="page-content-holder">--%>
                    <marquee width="100%" behavior="ALTERNATE" scrollamount="2" direction="right" syle="margin-bottom: 0px">
                    <asp:Repeater ID="rptr2" runat="server">
                    <ItemTemplate>
                     <a href="#"><asp:Image ID="imgImage" runat="server" style="height: 200px; width: 200px;" ImageUrl=' <%# "~/"+ Eval("Image") %>' /></a>&nbsp;&nbsp;
                   </ItemTemplate>
                      </asp:Repeater></marquee>
                </div>
                <!-- ./page content holder -->
            </div>
            </form>
            <!-- ./page content wrapper -->
            <!-- page content wrapper -->
            <div class="page-content-wrap bg-light">
                <!-- page content holder -->
                <%-- <div class="page-content-holder padding-v-20">
                    <div class="text-center">
                        <a href="../html/index.html" class="btn btn-primary btn-xl"><span class="fa fa-eye">
                        </span>Preview</a> <a href="http://themeforest.net/item/atlant-responsive-bootstrap-admin-template/9217590"
                            class="btn btn-success btn-xl"><span class="fa fa-shopping-cart"></span>Purchase</a>
                    </div>
                </div>--%>
                <!-- ./page content holder -->
            </div>
            <!-- ./page content wrapper -->
        </div>
        <!-- ./page content -->
        <!-- page footer -->
        <div class="page-footer">
            <!-- page footer wrap -->
            <%--<div class="page-footer-wrap bg-dark-gray">
                <!-- page footer holder -->
                <div class="page-footer-holder page-footer-holder-main">
                    <div class="row">
                        <!-- about -->
                        <div class="col-md-3">
                            <h3>
                                About Template</h3>
                            <p>
                                Lorem ipsum dolor natoque penatibus et magnis dis parturient montes, nascetur ridiculus
                                mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo
                                luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
                        </div>
                        <!-- ./about -->
                        <!-- quick links -->
                        <div class="col-md-3">
                            <h3>
                                Quick links</h3>
                            <div class="list-links">
                                <a href="#">Home</a> <a href="#">Pages</a> <a href="#">Portfolio</a> <a href="#">Shortcodes</a>
                            </div>
                        </div>
                        <!-- ./quick links -->
                        <!-- recent tweets -->
                        <div class="col-md-3">
                            <h3>
                                Recent Tweets</h3>
                            <div class="list-with-icon small">
                                <div class="item">
                                    <div class="icon">
                                        <span class="fa fa-twitter"></span>
                                    </div>
                                    <div class="text">
                                        <a href="#">@JohnDoe</a> Hello, here is my new front-end template. Check it out
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="icon">
                                        <span class="fa fa-twitter"></span>
                                    </div>
                                    <div class="text">
                                        <a href="#">@Aqvatarius</a> Release of new update for Atlant is done and ready to
                                        use
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="icon">
                                        <span class="fa fa-twitter"></span>
                                    </div>
                                    <div class="text">
                                        <a href="#">@Aqvatarius</a> Check out my new admin template Atlant, it's realy awesome
                                        template
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ./recent tweets -->
                        <!-- contacts -->
                        <div class="col-md-3">
                            <h3>
                                Contacts</h3>
                            <div class="footer-contacts">
                                <div class="fc-row">
                                    <span class="fa fa-home"></span>000 StreetName, Suite 111,<br />
                                    City Name, ST 01234
                                </div>
                                <div class="fc-row">
                                    <span class="fa fa-phone"></span>(123) 456-7890
                                </div>
                                <div class="fc-row">
                                    <span class="fa fa-envelope"></span><strong>John Doe</strong><br>
                                    <a href="mailto:#">johndoe@domain.com</a>
                                </div>
                            </div>
                            <h3>
                                Subscribe</h3>
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Your email" />
                                <div class="input-group-btn">
                                    <button class="btn btn-primary">
                                        <span class="fa fa-paper-plane"></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- ./contacts -->
                    </div>
                </div>
                <!-- ./page footer holder -->
            </div>--%>
            <!-- ./page footer wrap -->
            <!-- page footer wrap -->
            <div class="page-footer-wrap bg-darken-gray">
                <!-- page footer holder -->
                <div class="page-footer-holder">
                    <!-- copyright -->
                    <div class="copyright">
                        &copy; 2015 Powered by <a href="https://www.facebook.com/devashishpatel2910">દેવાશિષ ઘનશ્યામ પટેલ</a> - All Rights Reserved
                    </div>
                    <!-- ./copyright -->
                    <!-- social links -->
                    <div class="social-links">
                        <a href="https://www.facebook.com/groups/kanbharockers420/151274551609640/?notif_t=like"><span class="fa fa-facebook"></span></a>
                    </div>
                    <!-- ./social links -->
                </div>
                <!-- ./page footer holder -->
            </div>
            <!-- ./page footer wrap -->
        </div>
        <!-- ./page footer -->
    </div>
    <!-- ./page container -->
    <!-- page scripts -->
    <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/plugins/mixitup/jquery.mixitup.js"></script>
    <script type="text/javascript" src="js/plugins/appear/jquery.appear.js"></script>
    <script type="text/javascript" src="js/plugins/revolution-slider/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="js/plugins/revolution-slider/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="js/actions.js"></script>
    <script type="text/javascript" src="js/slider.js"></script>
    <!-- ./page scripts -->
</body>
</html>
