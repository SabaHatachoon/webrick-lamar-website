<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="general facts.aspx.cs" Inherits="webrick_lamar_website.general_facts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>general facts</title>
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

        .fact {
            font-size: 20px;
            font-family: Bahnschrift;
        }
        .button {
            font-family: Bahnschrift;
            border-radius: 12px;
        }
        .dropdown {
            font-family: Bahnschrift;
            border-radius: 12px;
        }
        h1 {
            font-family: Bahnschrift;
        }
    </style>
</head>
    <script>
        let tags = [
            "Full Name",
            "Birth Date and Place",
            "Influence",
            "Iconic Songs",
            "Collaborations"
        ];

        let facts = [
            "Kendrick Lamar Duckworth is his full name.0",
            "He was born on June 17, 1987, in Compton, California.1",
            "He is one of the most critically acclaimed and influential rappers of all time.2",
            "Some of Lamar’s most iconic songs include “HUMBLE.”, “Alright.”, “DNA.”, and “Swimming Pools (Drank)”.3",
            "He has collaborated with some of the biggest names in music, including Beyoncé, Rihanna, and Taylor Swift.4",
            "He was inspired to venture into music by Tupac Shakur and Dr. Dre.2",
            "He graduated from Centennial High School in Compton, California, in 2005 as a straight-A student.1",
            "He signed with the independent record label Top Dawg Entertainment in 2005.4",
            "He was formerly known as K. Dot.0",
            "He began to gain major recognition in 2010, after his first retail release, Overly Dedicated.3",
            "In March 2015, Lamar released his third album, To Pimp a Butterfly, which peaked at number one in various countries, including the U.S. and the UK.2"
        ];

        window.onload = function () {
            let dropdown = document.getElementById('DropDownList'); // assuming 'DropDownList' is the id of your dropdown element
            for (let i = 0; i < tags.length; i++) {
                let option = document.createElement('option');
                option.text = tags[i];
                option.value = i.toString();
                dropdown.add(option);
            }
        }

        function onSubmit() {
            let selectedIndex = document.getElementById('DropDownList').selectedIndex;
            let placeHolder = document.getElementById('placeHolder'); // assuming 'placeHolder' is the id of your placeholder element
            placeHolder.innerHTML = ''; // clear the placeholder
            for (let fact of facts) {
                if (fact.charAt(fact.length - 1) === selectedIndex.toString()) {
                    let label = document.createElement('label');
                    label.textContent = fact.substring(0, fact.length - 1);
                    label.className = 'fact';
                    placeHolder.appendChild(label);
                }
            }
        }
    </script>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Facts about Kendrick Lamar</h1>
            <asp:Label Font-Names="Bahnschrift" Font-Size="20px" runat="server" Text="tag:"></asp:Label>
            <asp:DropDownList CssClass="dropdown" ID="DropDownList" runat="server" AutoPostBack="true"></asp:DropDownList>

            <asp:Button CssClass="button" ID="submit" runat="server" Text="search" OnClick="onSubmit"/>
            <p></p>
            <asp:PlaceHolder ID="placeHolder" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
