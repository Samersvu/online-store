<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="description.aspx.cs" Inherits="test1.description" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 133px;
        }
        .auto-style4 {
            width: 116px;
        }
        body {
            background-color:darkkhaki; /* تحديد لون الخلفية */
             font-family: Arial, sans-serif; /* تحديد نوع الخط */
             color: #333; /* تحديد لون النص */
        }

form {
  margin: 20px auto; /* تحديد هامش الصفحة */
  background-color: #fff; /* تحديد لون الخلفية */
  padding: 20px; /* تحديد التباعد بين العناصر */
  box-shadow: 0 2px 4px rgba(0, 0, 0, .1); /* تحديد تأثير الظل */
}

div.product {
  height: 300px; /* تحديد ارتفاع العنصر */
  width: 600px; /* تحديد عرض العنصر */
  border: 1px solid #ccc; /* تحديد حدود العنصر */
  margin-bottom: 20px; /* تحديد هامش أسفل */
}

div.image {
  height: 300px; /* تحديد ارتفاع العنصر */
  width: 200px; /* تحديد عرض العنصر */
  border-right: 1px solid #ccc; /* تحديد حدود العنصر */
  float: left; /* تحديد تمرير العنصر إلى اليسار */
}

div.details {
  height: 300px; /* تحديد ارتفاع العنصر */
  width: 395px; /* تحديد عرض العنصر */
  float: left; /* تحديد تمرير العنصر إلى اليسار */
  padding: 20px; /* تحديد التباعد بين العناصر */
}

div.details h2 {
  font-size: 24px; /* تحديد حجم الخط */
  margin-top: 0; /* إزالة هامش أعلى النص */
}

div.details p {
  font-size: 18px; /* تحديد حجم الخط */
  margin: 0; /* إزالة هامش النص */
}

button {
  background-color: #4CAF50; /* تحديد لون الخلفية */
  color: #fff; /* تحديد لون النص */
  border: none; /* إزالة حدود الزر */
  padding: 10px 20px; /* تحديد التباعد بين العناصر */
  font-size: 18px; /* تحديد حجم الخط */
  cursor: pointer; /* تحديد تأثير المؤشر */
  margin-top: 20px; /* تحديد هامش أعلى */
}

button:hover {
  background-color: #3e8e41; /* تحديد لون الخلفية عند تحويم المؤشر */
}
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <br />
       
        <asp:Repeater ID="rep" runat="server">
            <HeaderTemplate>
               
      
            </HeaderTemplate>
         <ItemTemplate>
    <div style="height:300px;width:600px;border-style:solid; border-width:1px;">
        <div style="height:300px;width:200px;border-style:solid; border-width:1px;float:left">
            <img src="<%# Eval("image") %>" style="height:300px; width:200px;" />
        </div>
        <div style="height:300px;width:395px;border-style:solid; border-width:1px;float:left">
            Product name:<%# Eval("prod_name") %><br />Description : <%# Eval("desc") %><br />
            Price : <%# Eval("price") %><br />
        </div>
    </div>
</ItemTemplate>
            <FooterTemplate>
             
            </FooterTemplate>
        </asp:Repeater><br />
        <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="Button1_Click" />
    </form>
</body>
</html>
