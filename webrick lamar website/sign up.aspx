<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign up.aspx.cs" Inherits="webrick_lamar_website.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sign up</title>
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
    <script>
        function submit() {
            let num = 0;

            if (document.getElementById('userName').value === "")
                num++;
            if (document.getElementById('firstName').value === "")
                num++;
            if (document.getElementById('lastName').value === "")
                num++;
            if (document.getElementById('password').value === "")
                num++;
            if (document.getElementById('sexChoice').selectedIndex === -1)
                num++;
            if (document.getElementById('state').selectedIndex === 0)
                num++;
            if (document.getElementById('termsOfConditions').checked)
                num++;

            const errorMessage = document.getElementById('errorMessage');

            if (num > 4)
                errorMessage.textContent = "ahhhhh almost nothing is filled, ";
            else if (num < 4 && num > 0)
                errorMessage.textContent = `almost there buddy, ${num} more to go!, `;

            if (num == 7)
                errorMessage.textContent += "oops something is wrong.";
            else
                errorMessage.textContent += "check the terms of conditions!!!!";
        }
    </script>
    <form id="form1" runat="server">
        <div>
            <div>
        <div id="middleRectangle1">
        <h1 id="title">
            sign up
        </h1>
        <div class="inputFields">
            <div>
               <p>username:</p>
               <asp:TextBox runat="server" CssClass="textBox" ID="userName"></asp:TextBox>
            </div>

            <div>
                <p>first name:</p>
               <asp:TextBox runat="server" CssClass="textBox" ID="firstName"></asp:TextBox>
            </div>

            <div>
                <p>last name:</p>
               <asp:TextBox runat="server" CssClass="textBox" ID="lastName"></asp:TextBox>
            </div>


            <div>
                <p>password:</p>
                <asp:TextBox runat="server" CssClass="textBox" ID="password"></asp:TextBox>
            </div>

            <div>
                <p>sex:</p>
                <asp:RadioButtonList ID="sexChoise" CssClass="radioButtonList" runat="server">
                    <asp:ListItem>male</asp:ListItem>
                    <asp:ListItem>female</asp:ListItem>
                    <asp:ListItem>other</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div>
                <p>i am...</p>
                <asp:DropDownList ID="state" runat="server" CssClass="textBox">
                    <asp:ListItem>a new listener</asp:ListItem>
                    <asp:ListItem>a casual listener</asp:ListItem>
                    <asp:ListItem>a fan</asp:ListItem>
                    <asp:ListItem>an OG fan</asp:ListItem>
                </asp:DropDownList>
            </div>
            <p></p>
            <div>
                <asp:CheckBox ID="CheckBox1" Text="I listen to other rapers" ForeColor="GhostWhite" runat="server" />
            </div>
            <p></p>
            <div>
                <asp:CheckBox ID="termsOfConditions" Text="I agree to the terms of conditions" ForeColor="GhostWhite" runat="server" />
            </div>

            <asp:Label ID="errorMessage" runat="server" Width="400px" Height="23px" style="margin-top: 25px; font-family: Bahnschrift; color: ghostwhite;"></asp:Label>
            <asp:Button runat="server" Text="submit" OnClick="submit" CssClass="submitButton" ID="submitButton" Height="31px" Width="165px"/>
        </div>
        </div>
                </div>
            </div>
    </form>
</body>
</html>
