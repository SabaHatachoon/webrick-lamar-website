<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webrick_lamar_website.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
        <style>
        body {
            position: relative;
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
        }

            body::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-image: url(Img/tpab_background.jpg);
                background-size: cover;
                filter: blur(10px);
                z-index: -1;
            }

       #middleRectangle1 {
           background-color: black;
           height: 1100px;
           bottom: 0%;
           width: 600px;
           position: absolute;
           top: 0%;
           left: 35%;
           z-index: 0;
       }
       p {
           color: ghostwhite;
           font-family: Bahnschrift;
       }
       #title {
           font-size: 45px;
           color: ghostwhite;
           font-family: Bahnschrift;
           z-index: 1;
           position: absolute;
           top: 1%;
           left: 35%;
       }
       .textBox{
           border-radius: 5px;
           margin-bottom: 3px;
           width: 410px;
           height: 35px;
           background-color: transparent;
           font-size: 17px;
           font-family: Bahnschrift;
       }
       .inputFields {
           display: flex;
           flex-direction: column;
           position: absolute;
           top: 13%;
           left: 16%;
           font-family: Bahnschrift;
       }
       .radioButtonList {
           color: ghostwhite;
           font-family: Bahnschrift;
       }
       
       .submitButton{
               border-color: black;
               border-radius: 5px;
               background-color: transparent;
               color: ghostwhite;
               font-family: Bahnschrift;
               font-size: 15px;
               margin-left: 124px;
               margin-top: 5px;
       }
       .submitButton:hover{
           cursor: pointer;
       }
    </style>

</head>
<body>
    <form id="form1" runat="server">
 <div>
            <div>
        <div id="middleRectangle1">
        <h1 id="title">
            Login
        </h1>
        <div class="inputFields">
            <div>
               <p>username:</p>
               <asp:TextBox runat="server" CssClass="textBox" ID="userName"></asp:TextBox>
            </div>

       

     

            <div>
                <p>password:</p>
                <asp:TextBox runat="server" CssClass="textBox" ID="password"></asp:TextBox>
            </div>




   
       

            
            <asp:Button runat="server" Text="Login" OnClick="submit" CssClass="submitButton" ID="submitButton" Height="31px" Width="165px"/>
        </div>
        </div>
                </div>
            </div>
    </form>
</body>
</html>
