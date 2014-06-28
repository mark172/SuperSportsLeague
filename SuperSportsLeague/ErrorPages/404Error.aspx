<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404Error.aspx.cs" Inherits="SuperSportsLeague.ErrorPages._404Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />

    <title>500 - Internal Server Error</title>

    <link href="/css/errorPages.css" rel="stylesheet" />
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <script src="/js/jquery.min.js"></script>
    <script src="/js/wordsearch-resize.js"></script>


</head>
<body>

    <script type="text/javascript">
        $(function () {
            /* 4 */ $(this).delay(1500).queue(function () { $(".one").addClass("selected"); $(this).dequeue(); })
            /* 0 */.delay(500).queue(function () { $(".two").addClass("selected"); $(this).dequeue(); })
            /* 4 */.delay(500).queue(function () { $(".three").addClass("selected"); $(this).dequeue(); })

            /* P */.delay(500).queue(function () { $(".four").addClass("selected"); $(this).dequeue(); })
            /* A */.delay(500).queue(function () { $(".five").addClass("selected"); $(this).dequeue(); })
            /* G */.delay(500).queue(function () { $(".six").addClass("selected"); $(this).dequeue(); })
            /* E */.delay(500).queue(function () { $(".seven").addClass("selected"); $(this).dequeue(); })

            /* N */.delay(500).queue(function () { $(".eight").addClass("selected"); $(this).dequeue(); })
            /* O */.delay(500).queue(function () { $(".nine").addClass("selected"); $(this).dequeue(); })
            /* T */.delay(500).queue(function () { $(".ten").addClass("selected"); $(this).dequeue(); })

            /* F */.delay(500).queue(function () { $(".eleven").addClass("selected"); $(this).dequeue(); })
            /* O */.delay(500).queue(function () { $(".twelve").addClass("selected"); $(this).dequeue(); })
            /* U */.delay(500).queue(function () { $(".thirteen").addClass("selected"); $(this).dequeue(); })
            /* N */.delay(500).queue(function () { $(".fourteen").addClass("selected"); $(this).dequeue(); })
            /* D */.delay(500).queue(function () { $(".fifteen").addClass("selected"); $(this).dequeue(); });


        });
	</script>

    <div id="wrap">

        <!-- === WORDSEARCH === -->
        <div id="wordsearch">
            <ul>
                <li>F</li>
                <li>Q</li>
                <li>U</li>
                <li>T</li>
                <li>G</li>
                <li>O</li>
                <li>B</li>
                <li>X</li>
                <li>D</li>
                <li>G</li>
                <li>U</li>
                <li>P</li>
                <li class="one">4</li>
                <li class="two">0</li>
                <li class="three">4</li>
                <li>W</li>
                <li>R</li>
                <li>E</li>
                <li>V</li>
                <li>I</li>
                <li>K</li>
                <li>N</li>
                <li>Y</li>
                <li>C</li>
                <li>A</li>
                <li>S</li>
                <li class="four">p</li>
                <li class="five">a</li>
                <li class="six">g</li>
                <li class="seven">e</li>
                <li>O</li>
                <li>I</li>
                <li>F</li>
                <li class="eight">n</li>
                <li class="nine">o</li>
                <li class="ten">t</li>
                <li>J</li>
                <li>G</li>
                <li>K</li>
                <li>T</li>
                <li>Y</li>
                <li>B</li>
                <li>X</li>
                <li>P</li>
                <li>O</li>
                <li>K</li>
                <li>A</li>
                <li>Q</li>
                <li>H</li>
                <li class="eleven">f</li>
                <li class="twelve">o</li>
                <li class="thirteen">u</li>
                <li class="fourteen">n</li>
                <li class="fifteen">d</li>
                <li>J</li>
                <li>U</li>
                <li>Y</li>
                <li>T</li>
                <li>N</li>
                <li>K</li>
                <li>S</li>
                <li>Q</li>
                <li>V</li>
                <li>Y</li>
            </ul>
        </div>

        <!-- === MAIN TEXT CONTENT === -->
        <div id="main-content">
            <h1>We couldn't find what you were looking for.</h1>
            <p>Unfortunately the page you were looking for could not be found. It may be temporarily unavailable, moved or no longer exist.</p>
            <p>Check the URL you entered for any mistakes and try again.</p>

            <!-- === SEARCH FORM === -->
            <%--<div id="search">
                <form>
                    <input type="text" placeholder="Search" />
                    <button type="submit" class="input-search">
                        <i class="fa fa-search"></i>
                    </button>
                </form>
            </div>--%>

            <!-- === NAVIGATION BUTTONS === -->
            <div id="navigation">
                <asp:HyperLink ID="HyperLink1" CssClass="navigation" NavigateUrl="~/Index.aspx" runat="server">Home</asp:HyperLink>
            </div>


        </div>

    </div>

</body>
</html>
