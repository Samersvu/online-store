<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="test1.products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        body {
                background-color: #f8f8f8; /* تحديد لون الخلفية*/
             font-family: Arial, sans-serif; /* تحديد نوع الخط*/
                color: #333; /* تحديد لون النص*/
        }

        .auto-style1 {
             width: 100%;
            margin: 0 auto; /* تحديد هامش الصفحة */
            border: 1px solid #ccc; /* تحديد حدود الجدول */
            box-shadow: 0 2px 4px rgba(0, 0, 0, .1); /* تحديد تأثير الظل */
        }

        h1 {
              margin-top: 20px; /* تحديد هامش أعلى لعنوان الصفحة */
                text-align: center; /* تحديد محاذاة النص */
             font-size: 24px; /* تحديد حجم الخط */
        }

       td {
            padding: 10px; /* تحديد التباعد بين خلايا الجدول */
             text-align: center; /* تحديد محاذاة النص */
       }

        a img {
             border: none; /* إزالة حدود الصورة */
        }

      a {
            text-decoration: none; /* إزالة تحتية النص */
             color: #333; /* تحديد لون النص */
      }

      a:hover {
                 text-decoration: underline; /* تحديد تأثير عند تحويم الماوس */
      }

    </style>
</head>

<body style="align-content:center">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Repeater ID="rep" runat="server">
            <HeaderTemplate>
                <table class="auto-style1" style="align-content:center; width:500px" >
        <tr>
            <td ><h1>List of Products</h1></td>
        </tr>
      
            </HeaderTemplate>
            <ItemTemplate>
              <tr>
               <td><a href="description.aspx?id=<%# Eval("Id") %>"><img src=" <%#Eval("image") %>" height="100" width="100" /></a></td></tr>
               <tr>   <td><%#Eval("prod_name") %></td></tr>
               <tr>   <td><%#Eval("price") %></td></tr>
               <tr>   <td>--------------------</td></tr>  

            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
