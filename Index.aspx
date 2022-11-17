<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Share+Tech+Mono' rel='stylesheet' type='text/css'>
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="plugins/select2/select2.min.css">
    <!-- JQuery Datepicker -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- DateTimePicker CSS -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css" />--%>
    <style type="text/css">
        #form1 {
            height: 450px;
        }

        .auto-style1 {
            width: 52%;
            height: 180px;
        }

        .auto-style3 {
            width: 176px;
        }

        .auto-style5 {
            width: 176px;
            height: 25px;
        }

        .auto-style6 {
            width: 181px;
        }

        .auto-style7 {
            width: 181px;
            height: 25px;
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="title">PCP MIDYEAR CONVENTION 2022</div>
        <div class="content">
            <form id="form1" runat="server" action="#">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Lastname</span>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your lastname" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    
                    </div>
                    <div>
                    <asp:Button ID="Button2" runat="server" Text="Search" value="test" OnClick="Button2_Click" />
                        </div>
                    <div class="input-box">
                        <span class="details">Firstname</span>
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter your firstname"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Specialization</span>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your specialization"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Institution</span>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter your institution" ></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Contact No</span>
                        <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter your number" ></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Email Address</span>
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter your email address" ></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">PRC Number</span>
                        <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter your PRC number" ></asp:TextBox>
                    </div>
                </div>
                <div class="button">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" value="Register" />
                </div>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Adobe Devanagari" Font-Size="Medium" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Adobe Devanagari" Font-Size="Medium" ForeColor="Green"></asp:Label>
                <br>
                <%--<div class="gender-details">
                    <input type="radio" name="gender" id="dot-1">
                    <input type="radio" name="gender" id="dot-2">
                    <input type="radio" name="gender" id="dot-3">
                    <span class="gender-title">Gender</span>
                    <div class="category">
                        <label for="dot-1">
                            <span class="dot one"></span>
                            <span class="gender">Male</span>
                        </label>
                        <label for="dot-2">
                            <span class="dot two"></span>
                            <span class="gender">Female</span>
                        </label>
                        <label for="dot-3">
                            <span class="dot three"></span>
                            <span class="gender">Prefer not to say</span>
                        </label>
                    </div>
                </div>--%>
            </form>
        </div>
    </div>


</body>
</html>
