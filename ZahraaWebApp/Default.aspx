<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ZahraaWebApp.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Zahraa Web App</title>
    <style>
        body { font-family: Arial; text-align: center; background: #eee; }
        .box { background: white; padding: 50px; margin: 50px auto; width: 50%; border-radius: 10px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h1>مرحباً بك في موقعنا الجديد! 🚀</h1>
            <p>هذا الموقع تم بناؤه باستخدام Visual Studio 2017</p>
            <asp:Label ID="lblStatus" runat="server" Text="جاري فحص الاتصال بالقاعدة..." ForeColor="Blue"></asp:Label>
        </div>
    </form>
</body>
</html>