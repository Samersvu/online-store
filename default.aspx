<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="test1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background: linear-gradient(#F9F9F9, #EDEDED); /* خلفية متدرجة اللون للصفحة */
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        
        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
        }
        
        .header {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .header h1 {
            font-size: 36px;
            color: #333;
            margin: 0;
        }
        
        .navigation {
            text-align: center;
            margin-bottom: 20px;
        }
        
        .navigation .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-right: 10px;
            background: linear-gradient(#FFD700, #FFA500); /* خلفية متدرجة اللون للأزرار */
            color: #fff;
            text-decoration: none;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        
        .content {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .contact-info {
                 text-align: center;
                 margin-top: 50px;
                 font-size: 18px;
        }

        .contact-info p {
                 margin: 10px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <h1>Online Store</h1>
            </div>
            
            <div class="navigation">
                <a href="home.aspx" class="btn">Home</a>
                <a href="products.aspx"class="btn">Products</a>
                <a href="view_cart.aspx" class="btn">View cart</a>
            </div>
            
           <div class="content">
            <img src="store online.jpg" style="width: 100%; max-width: 600px; height: auto; display: block; margin: 0 auto;">
    
        </div>
        
        </div>

    </form>
        <div class="contact-info">
    <p> Email:<a href="abk.samer2000@gmail.com">abk.samer2000@gmail.com</a></p>
    <p>Phone:+963936517276</p>
</div>
</body>
</html>