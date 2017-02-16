<%@ Page Title="" Language="C#" MasterPageFile="~/Special/SpecialMasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Special_Contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
      <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="../Default.aspx">Home</a></li>
                    <li class="active">Contact Us</li>
                </ul>
                <!-- END BREADCRUMB -->                
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
               <h2>  <span class="fa fa-phone"></span>&nbsp;   Contact Us :-</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">
                        <div class="col-md-8">                        
                            <!-- START GOOGLE WORLD MAP -->
                            <div class="panel panel-default" style="height:363px;">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Kanbha On Map</h3>
                                </div>
                                <div>
                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7344.660399567627!2d72.72639155!3d23.011645249999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e7d41e813c037%3A0x886cf06b3178aeae!2sKanbha%2C+Gujarat!5e0!3m2!1sen!2sin!4v1443031282766" width="100%" frameborder="0" style="border:0; height:305px;" allowfullscreen></iframe>
                                </div>
                            </div>
                            <!-- END GOOGLE WORLD MAP-->
                        </div> 
                          <div class="col-md-4">                        
                           <div class="panel panel-primary">
                                <div class="panel-body" style="height:319px;">
                                    <h3>Suggetion/Enquiry</h3>
                                    <p>Feel Free To Ask About This Website Or Give Your Suggetions.</p>
                                     <div class="form-group">
                                        <label>Name</label>  
                                       
                                        <asp:TextBox ID="txtName" class="form-control" runat="server"></asp:TextBox>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label>Contact(Mobile/Email)</label>

                                        <asp:TextBox ID="txtContact" class="form-control" runat="server"></asp:TextBox>
                                    </div>       
                                                
                                    <div class="form-group">
                                        <label>Message</label>
                                        <asp:TextBox ID="txtMessage" class="form-control"  runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </div>                                
                                </div>
                               
                                <div class="panel-footer">
                               <strong> <asp:Label ID="lblMsg" runat="server" class="text-danger" Text=""></asp:Label></strong>
                                  <asp:Button ID="btnSend" class="btn btn-success pull-right" runat="server" 
                                        Text="Send" onclick="btnSend_Click" />
                                 
                                  
                                </div>
                            </div>
                    </div>
                                                              
                    

                    <div class="row">
                  <div class="page-title">                    
                    <h3>Designing,Developing & Co-Ordination:</h3>
                </div>
                    
                      <div class="col-md-4">                        
                           <div class="panel panel-default">
                            <div class="panel-body profile">
                                <div class="profile-image">
                                    <img src="../Images/DG.jpg" alt="Nadia Ali" />
                                </div>
                                <div class="profile-data">
                                    <div class="profile-data-name">
                                        દેવાશિષ ઘનશ્યામ પટેલ</div>
                                   
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="contact-info">
                                <p>
                                       
                                        B.E-Computer Science & Engineering</p>
                                    <p>
                                        <small>Mobile</small><br />
                                        (+91) 963-809-4080 </p>
                                    
                                    <p>
                                        <small>Address</small><br />
                                        સાર્વજનિક વિદ્યાલય,કણભા.</p>
                                </div>
                            </div>
                        </div>
                        </div>   
                      
                          <div class="col-md-4">                        
                           <div class="panel panel-default">
                            <div class="panel-body profile">
                                <div class="profile-image">
                                    <img src="../Images/Vivek.jpg" alt="Nadia Ali" />
                                </div>
                                <div class="profile-data">
                                    <div class="profile-data-name">
                                        વિવેક જનકભાઈ પટેલ</div>
                                   
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="contact-info">
                                <p>
                                       
                                        B.C.A</p>
                                    <p>
                                        <small>Mobile</small><br />
                                        (+91) 997-997-4060 ,
                                        (+91) 987-923-4747
                                         </p>
                                    
                                    <p>
                                        <small>Address</small><br />
                                        ઘનશ્યામ નગર સોસાયટી,કણભા.</p>
                                </div>
                            </div>
                        </div>
                        </div>  
                                                              
                    
                    </div>

                    
                </div>
                <!-- PAGE CONTENT WRAPPER -->                                
            </div> 
            </form>           
            <!-- END PAGE CONTENT -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

