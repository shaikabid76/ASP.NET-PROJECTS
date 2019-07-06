<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personaldetails.aspx.cs" Inherits="ASPPersonaldetails.Personaldetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>personal details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <h4>Personal Details&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblresult" runat="server"></asp:Label>
        </h4>
    </div>
        <asp:Label ID="firstname" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvfirst" runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter firstname" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lastname" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvlastname" runat="server" ControlToValidate="txtlastname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="City" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvcity" runat="server" ControlToValidate="txtcity" ErrorMessage="enter the city" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rffvcity" runat="server" ControlToValidate="txtcity" ErrorMessage="RangeValidator" MaximumValue="kurnool" MinimumValue="kur">Enter the cityname crtly as kurnoll</asp:RangeValidator>
        <br />
        <br />
&nbsp;<asp:Label ID="email" runat="server" Text="EmailAdress"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="enter the email adress" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rfvnewemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter the valid email" ForeColor="#333300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="txtpass" runat="server" Text="password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtpassord" runat="server" Height="18px" Width="110px"></asp:TextBox>
        <asp:CustomValidator ID="rffvlastname" runat="server" ControlToValidate="txtpassord" ErrorMessage="enter the crt lastname btwn 8-12" OnServerValidate="rffvlastname_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        <asp:Label ID="txtconpass" runat="server" Text="confirmpassword"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtconfirm" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="pass" runat="server" ControlToCompare="txtpassord" ControlToValidate="txtconfirm" ErrorMessage="CompareValidator">*</asp:CompareValidator>
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="register" runat="server" OnClick="register_Click" Text="Register" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="cancel" runat="server" Text="Cancel" />
    </form>
</body>
</html>
