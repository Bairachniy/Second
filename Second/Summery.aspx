<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summery.aspx.cs" Inherits="Second.Summery" %>
<%@ Import Namespace="Second" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <h2>Приглашения</h2>
    <h3>Люди которые были приглашены</h3>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>e-mail</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            
            <%var yesData = ResponseRepository.GetRepository().GetAllResponses().Where(r => r.WillAttend.Value);
                foreach(var rsvp in yesData)
                {
                    string htmlString = String.Format($"<tr><td>{rsvp.Name}</td><td>{rsvp.Email}</td><td>{rsvp.Phone}</td>");
                    Response.Write(htmlString);
                }
                    %>
        </tbody>
    </table>
        <h3>Люди которые туго думают</h3>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>e-mail</th>
                <th>Phone</th>
            </tr>
        </thead>
        <tbody>
            <%= GetNoShowHtml()%>
  
        </tbody>
    </table>
    <form id="form1" runat="server">
        <div>

        </div>
    </form>
</body>
</html>
