<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_14_12.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
</head>
<body>
    <h2 style="text-align:center;color:gray">Fill the Form with your employee</h2>
    <div  style="margin-left:42%;">

        <form id="form1" runat="server">
            
                <br />
                <div class="row g-2 align-items-center">
                    <div class="col-auto">
                        <label for="inputPassword6" class="col-form-label">Name</label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row g-2 align-items-center">
                    <div class="col-auto">
                        <label for="inputPassword6" class="col-form-label">Email&nbsp;</label>
                    </div>
                    <div class="col-auto">
                         <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="row g-2 align-items-center">
                    <div class="col-auto">
                        <label for="inputPassword6" class="col-form-label">Age&nbsp;&nbsp;&nbsp; </label>
                    </div>
                    <div class="col-auto">
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row g-2 align-items-center">
                    <div class="col-auto">
                        <label for="inputPassword6" class="col-form-label">Password&nbsp; </label>
                    </div>
                    <div class="col-auto">
                         <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row g-2 align-items-center">
                    <div class="col-auto">
                        <label class="col-form-label">image &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </label>
                    </div>
                    <div class="col-auto">
                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" aria-describedby="passwordHelpInline"/>
                    </div>
                </div><br /><br />
                <asp:Button class="btn btn-secondary" ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            
        </form>
    </div>

    <p>
            
                <asp:Label ID="Label1" runat="server" Text="Label" Style="display:none"></asp:Label>
            
        </p>

</body>
</html>
