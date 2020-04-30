<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Second.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Pronuke's Birthday</h1>
            <p>The best PARTY на районе </p>
        </div>
        <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
        <div>
            <label>Your Name</label><input type="text" id="name" runat="server"/>
        </div>
        <div>
            <label>Your email</label><input type="text" id="email" runat="server"/>
        </div>
        <div>
            <label>Your phone</label><input type="text" id="phone" runat="server" />
        </div>
        <div>
            <label>Тебя ждать?</label>
            <select id="willattend" runat="server">
                <option value="">отвечай...</option>
                <option value="true">Ага</option>
                <option value="false">Я подумаю</option>
            </select>
        </div>
        <div>
            <button type="submit" >Отправить приглашение</button>
        </div>
    </form>
</body>
</html>
