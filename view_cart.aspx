<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_cart.aspx.cs" Inherits="test1.view_cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 163px;
        }
        .auto-style3 {
            width: 1020px;
        }
        .auto-style4 {
            width: 1021px;
        }
        .auto-style5 {
            width: 763px;
        }
        body {
                 background-color: #f2f2f2; /* تحديد لون الخلفية*/
                 font-family: Arial, sans-serif; /* تحديد نوع الخط*/
                 color: #333; /* تحديد لون النص*/
        }

        table {
                 border-collapse: collapse; /* تحديد اندماج حدود الجدول */
                    margin: 20px auto; /* تحديد هامش الصفحة */
                     background-color: #fff; /* تحديد لون الخلفية للجدول */
                     box-shadow: 0 2px 4px rgba(0, 0, 0, .1); /* تحديد تأثير الظل */
        }

        td {
             padding: 10px; /* تحديد التباعد بين خلايا الجدول */
              text-align: center; /* تحديد محاذاة النص */
             vertical-align: middle; /* تحديد محاذاة النص عموديًا */
        }

        a {
             text-decoration: none; /* إزالة تحتية النص */
                 color: #333; /* تحديد لون النص */
        }

        a:hover {
                    text-decoration: underline; /* تحديد تأثير عند تحويم الماوس */
        }

        img {
             max-width: 100%; /* تحديد أقصى عرض للصور */
             height: auto; /* تحديد ارتفاع الصورة بشكل تلقائي */
        }

.auto-style1 {
  margin: 20px auto; /* تحديد هامش الصفحة */
  background-color: #f2f2f2; /* تحديد لون الخلفية */
  padding: 20px; /* تحديد التباعد بين العناصر */
  box-shadow: 0 2px 4px rgba(0, 0, 0, .1); /* تحديد تأثير الظل */
}

.auto-style2 {
  font-weight: bold; /* تحديد سمك الخط */
}

.auto-style3 {
  width: 100%; /* تحديد عرض العنصر */
  margin-bottom: 10px; /* تحديد هامش أسفل */
}

.auto-style4 {
  width: 100%; /* تحديد عرض العنصر */
  text-align: right; /* تحديد محاذاة النص */
  font-size: 18px; /* تحديد حجم الخط */
}

.auto-style5 {
  width: 100%; /* تحديد عرض العنصر */
  margin-top: 10px; /* تحديد هامش أعلى */
}
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
           <table>
           <tr><td ><img src="545454.jpg" /><asp:LinkButton ID="LinkButton1" runat="server" OnClick="cart_click">Your cart is</asp:LinkButton> </td></tr>
           <tr>
               <td class="auto-style4"><asp:Label ID="countlbl" runat="server" Text=""></asp:Label></td>
               </tr>
               <tr>
               <td class="auto-style3"><asp:Label ID="pricelbl" runat="server" Text=""></asp:Label></td>
               </tr>
        
           </table>
            <asp:DataList ID="dl" runat="server">
                <HeaderTemplate>
                    <table>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><img src="<%# Eval("image") %>" height="100" width="100" /></td>
                        <td><%# Eval("name") %></td>
                        <td><%# Eval("price") %></td>
                        <td><%# Eval("desc") %></td>
                        
                        <td><a href="delete.aspx?id=<%# Eval("id") %>">Delete</a></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                </table>
                </FooterTemplate>
            </asp:DataList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" Width="214px" />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="namelbl" runat="server" Font-Bold="True" Text="Enter your name :" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="nametxt" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="countrylbl" runat="server" Font-Bold="True" Text="Choose your country :" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="countrydp" runat="server" Visible="False">
                        <asp:ListItem>Syria</asp:ListItem>
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>Iraq</asp:ListItem>
                        <asp:ListItem>Jordan</asp:ListItem>
                        <asp:ListItem>Türkiye</asp:ListItem>
                        <asp:ListItem>Morocco</asp:ListItem>
                        <asp:ListItem>Saudi Arabia</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="continue" Visible="False" Width="209px" />
                </td>
            </tr>
        </table>
    </form>
    
</body>
</html>
