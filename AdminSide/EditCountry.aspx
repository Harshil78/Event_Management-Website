﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditCountry.aspx.cs" Inherits="AdminSide_EditCountry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form id="form1" runat="server">
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>


<asp:updatepanel ID="Updatepanel1" runat="server">
<ContentTemplate>
<div>
    
     <div class="modal-header">
            <h4 class="modal-tittle">Edit Country</h4>
            <a href="#"  class="close" data-dismiss="modal">&times;</a>
        </div>
        <div class="modal-body" style="text-align:left">
            <div class="container" >
      
                
                    <div >
                            <asp:label ID="lblCountryName" class="" runat="server" text="Country">Country:-</asp:label><br />
                             <asp:TextBox ID="TxtCountryName"  placeholder="Enter Country Name" class="form-control" runat="server" Required></asp:TextBox><br />
                            
                               <asp:Image ID="Image1" runat="server" Width="150" Height="150" /><br /><br />

                             <asp:label ID="LblImage" class="" runat="server" text="Image">Image:-</asp:label><br />
                             <asp:FileUpload ID="ImageUpload"  runat="server" />
                            
                     </div>
                
                           <br />   
               <asp:Button ID="BtnEdit" class="form-control btn btn-success  "   runat="server" 
                        Text="Edit" onclick="BtnEdit_Click" />
              
                
         </div>
        <div class="modal-footer">
             <button type="button" class="btn btn-danger " data-dismiss="modal">Close</button>
     </div>
    
     
    </div>
    </div>
    </ContentTemplate>
</asp:updatepanel>

    </form>
</body>
</html>
