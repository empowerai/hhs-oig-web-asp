<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true"
    CodeBehind="fugitive-form.aspx.cs" Inherits="Hotline.fugitive_form" %>

<%@ Register Assembly="WebControlCaptcha" Namespace="WebControlCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="keywords" content="Report Fraud, Office of Inspector General" />
    <meta name="description" content="Report Fraud Online with a simple web form." />
    <title>Report a Fugitive Online | Report Fraud | Office of Inspector General | U.S. Department
        of Health and Human Services</title>
    <meta name="author" content="Office of Inspector General, Department of Health and Human Services" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="apple-touch-icon" href="/images/apple-touch-icon.png" />
    <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />

    <script type="text/javascript" src="/layout/js/jquery-1.4.2.min.js"></script>

    <script src="/layout/js/jquery.updatepanel.js" type="text/javascript"></script>

    <script src="/layout/js/jquery.maskedinput-1.3.min.js" type="text/javascript"></script>

    <script src="/layout/js/jquery.formrestrict.js" type="text/javascript"></script>

    <script src="/layout/js/jquery.alphanumeric.js" type="text/javascript"></script>

    <!--[if IE 6]>
	<link href="/layout/css/style-ie6.css" rel="stylesheet" type="text/css" />
	  <script type="text/javascript" src="/layout/js/ie.js"></script>
	  
	<![endif]-->
    <link rel="stylesheet" href="/layout/css/print.css" media="print" type="text/css" />
    <link href="/layout/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/layout/css/hotline.styles.css" media="all" />
    
<style type="text/css">
<!-- 
.fugitive-table tr {vertical-align:top}
.fugitive-table td {padding:4px;} 
-->
</style>      

    <script language="javascript" type="text/javascript">
// <!CDATA[
        $(document).ready(function() {

            // 508 accessibility for external links
            $('a.exit').focus(function() {
                $(this).after("<a class='disclaimer508' href='/notices/disclaimers.asp'>Click here to review our disclaimers</a>")
            });
            $('a.twitter, .twitter').focus(function() {
                $(this).after("<a class='disclaimer508' href='/notices/disclaimers.asp'>Click here to review our disclaimers.</a>")
            });


            // external links get an image at the end attached that links to a disclaimer page
            $('#bodyContainer a.exit').filter(function() {
                return this.hostname && this.hostname !== location.hostname;
            }).after(' <a href="/notices/disclaimers.asp"><img src="/images/icon_leavesite_gray.gif" class="externalLink" alt="External link" /></a>');

            // image is removed in some instances due to design priority
            $("a.exit ~ img").css({ border: "none", background: "none", position: "relative", top: "0px", padding: "0" })

            // Removes last border/separator css
            $("#nav ul li ul li:last-child").css({ border: "none" })
            $("#enforcementCol dl dd:last-child").css({ border: "none" })
            $("#reportsCol dl dd:last-child").css({ border: "none" })
            $("#nav ul li:first-child a").css({ background: "none" })
            $("#footerBottomContent ul li:last-child").css({ border: "none" })
            $("#footerBottomContent ul li:last-child").css({ border: "none" })
            $("#breadcrumbs ul li:last-child").css({ background: "none" })
            $("#subNav ul li:last-child").css({ border: "none" })
            $("#latestFeed dl dd:last-child").css({ border: "none" })
            $("p ~ ul").css({ margin: "0 0 10px 25px " })
            $("h2 ~ a.exit ~ a").css({ "float": "right " })

            // Removing browser jump on captcha links
            $('.captcha a').click(function() {
                return false;
            });

            // I'm looking for secton
            $('#chooseTopic a').click(function() {
                $("#topicSelection").fadeIn(400)
                return false;
            });
            $('#closeButton').click(function() {
                $('#topicSelection').fadeOut(400)
                return false;
            });

            // Binds enter for I'm looking for section for 508 compliance
            $('#chooseTopic a').bind('keypress', function(e) {
                if (e.keyCode == 13) {
                    $("#topicSelection").show(400)
                }
            });

            //Accordion on the interior pages - e.g. faq pages
            $('.acc_container').hide(); //Hide/close all containers
            //$('.acc_trigger:first').addClass('active').next().show(); //Add "active" class to first 		trigger, then show/open the immediate next container

            //Opens accordion if hash #exclusions is present
            if (window.location.hash) {
                $('h2#exclusions').addClass('active').next().slideDown(600);
            }

            //On Click
            $('.acc_trigger').click(function() {

                if ($(this).next().is(':hidden')) { //If immediate next container is closed...
                    $('.acc_trigger').removeClass('active').next().slideUp(600); //Remove all "active" state and slide up the immediate next container
                    $(this).toggleClass('active').next().slideDown(600); //Add "active" state to clicked trigger and slide down the immediate next container	
                    //$(".acc_trigger").add(function(event){
                    //	 window.location.hash=this.hash;
                    //});					
                }
                else {
                    $(this).removeClass('active').next().slideUp(600)
                }
                return false; //Prevent the browser jump to the link anchor
            });

            // This is a work around to server side selection of the active sub navigation item done with $
            var path = location.pathname.substring(1);
            if (path)
                $('#subNav ul li a[href$="' + path + '"]').attr('class', 'current');

            // third level navigation revealeds
            if ($("#subNav ul ul a").hasClass("current"))
                $("#subNav ul ul a.current").parent().parent().prev("a").addClass("current")
            // fourth level navigation revealeds
            if ($("#subNav ul ul ul a").hasClass("current"))
                $("#subNav ul ul a.current").parent().parent().prev("a").addClass("current")

            // Reveals third level navigation if the a has a class .current
            $("a.current ~ ul").show(400)


            // Reset Font Size
            var originalFontSize = $('#mainBody').css('font-size');
            var originalFontSize1 = $('h2').css('font-size');
            var originalFontSize2 = $('#leftContentInterior').css('font-size');
            var originalFontSize3 = $('#subNav').css('font-size');
            $(".resetFont").click(function() {
                $('#mainBody').css('font-size', originalFontSize);
                $('h2').css('font-size', originalFontSize1);
                $('#leftContentInterior').css('font-size', originalFontSize2);
                $('#subNav').css('font-size', originalFontSize3);

            });
            // Increase Font Size
            $(".increaseFont").click(function() {
                var currentFontSize = $('#mainBody').css('font-size');
                var currentFontSize1 = $('h2').css('font-size');
                var currentFontSize2 = $('#leftContentInterior').css('font-size');
                var currentFontSize3 = $('#subNav').css('font-size');
                var currentFontSizeNum = parseFloat(currentFontSize, 10);
                var newFontSize = currentFontSizeNum * 1.2;
                var newFontSize1 = currentFontSizeNum * 1.7;
                $('#mainBody').css('font-size', newFontSize);
                $('h2').css('font-size', newFontSize1);
                $('#leftContentInterior').css('font-size', newFontSize);
                $('#subNav').css('font-size', newFontSize);
                return false;
            });

            // Decrease Font Size
            $(".decreaseFont").click(function() {
                var currentFontSize = $('#mainBody').css('font-size');
                var currentFontSize1 = $('h2').css('font-size');
                var currentFontSize2 = $('#leftContentInterior').css('font-size');
                var currentFontSize3 = $('#subNav').css('font-size');
                var currentFontSizeNum = parseFloat(currentFontSize, 10);
                var newFontSize = currentFontSizeNum * 0.8;
                var newFontSize1 = currentFontSizeNum * 1;
                $('#mainBody').css('font-size', newFontSize);
                $('h2').css('font-size', newFontSize);
                $('#leftContentInterior').css('font-size', newFontSize);
                $('#subNav').css('font-size', newFontSize);
                return false;
            });

            //Open pdf in new window automatically		
            $(function() {
                $('A, AREA').filter(function() {
                    return (!this.target && (this.href.indexOf(window.location.hostname) == -1 || this.href.match(/\.pdf$/i)));
                }).attr('target', '_blank');
            });

        });
    </script>

<!--===============  [ MOBILE MEDIA QUERIES ]  ===============-->
<!--#include virtual="/layout/mobile-queries.asp" -->
<!--===============  [ /MOBILE MEDIA QUERIES ]  ===============-->


</head>
<body>
<div id="bodyContainer" class="mobilized">


<!--===============  [ MOBILE BANNER ]  ===============-->
<!--#include virtual="/layout/mobile-banner.asp" -->
<!--===============  [ /MOBILE BANNER ]  ===============-->
    
    
        <div id="textReset">
            <!-- #include virtual="/layout/header.asp" -->
            <div id="mainBody">
                <div id="leftSideInterior">
                    <div id="breadcrumbs">
                        <ul>
                            <li><a href="http://oig.hhs.gov/">Home</a> </li>
                            <li><a href="http://oig.hhs.gov/fraud/index.asp">Fraud</a> </li>
                            <li><a href="http://oig.hhs.gov/fraud/report-fraud/index.asp">OIG Most Wanted Fugitives</a>
                            </li>
                            <li>Report a Fugitive </li>
                        </ul>
                    </div>
                    <!-- breadcrumbs end -->
                    <form id="form1" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div id="leftContentInterior">
                        <h1>
                            Report a Fugitive</h1>
                        <div id="fieldWrapper">
                            <div runat="server" id="summary" class="step" Visible="true">
                                <p>
                                    Report a fugitve by using the form below or call, toll-free, 1-888-476-4453.</p>
                            </div>
                            &nbsp;
                            <div runat="server" id="Success" class="congrats">
								 <asp:Label ID="lblSuccess" runat="server" Visible="false"></asp:Label>
								
								 </div>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
 <ContentTemplate>
                                    <div class="input">
                                    
                                    
                                    
                                    
                                    
                                    

<style type="text/css">
<!-- 
.form-float {float:left; margin-right:20px;}
-->
</style>

<table width="100%" cellpadding="0" cellspacing="0" border="1" class="fugitive-table">

<tr>
<td>


<div class="form-float">
<label for="name_used">Name Used:</label>
<input runat="server" type="text" name="name_used" class="required" id="name_used" />
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name_used"
ErrorMessage="This Field is Required"></asp:RequiredFieldValidator>
</div>


<div class="form-float">
<label for="address">Address/Location:</label>
<input runat="server" type="text" class="required" name="address" id="address" />
</div>

<br clear="all" />
                                                                
<div class="form-float frm-spacer">
<label for="city">City (nearest city):</label>
<input runat="server" class="required" type="text" name="city" id="city" /><br />&nbsp;
</div>

<div class="form-float">
<label for="state">
State/Province:</label><input runat="server" class="required" type="text" name="state" 
id="state" /><br />&nbsp;
</div>


<br clear="all" />

<div class="form-float">
<label for="country">
Country:</label><input runat="server" class="required" type="text" name="country"
id="country" /><br />&nbsp;
</div>

<div class="form-float">
<label for="lastseen">
Last Seen: (mm/dd/yyyy)</label><input runat="server" maxlength="11" type="text" name="phone" 
id="lastseen" /><br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
ControlToValidate="lastseen" 
ErrorMessage="Please enter a valid date/approx. date" 
ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$"></asp:RegularExpressionValidator>
</div>


<br clear="all" />

<div class="form-float">
<label for="age">
Approx. Age:</label><input runat="server" type="text" name="age" 
id="age" /><br />&nbsp;
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
ErrorMessage="Please enter a valid age" ControlToValidate="age" 
ValidationExpression="^\d{2,3}$"></asp:RegularExpressionValidator>
</div>


<div class="form-float">
<label for="height">
Approx. Height (ft/in):</label><input type="text" runat="server" name="height" 
id="height" /><br />&nbsp;
</div>


<br clear="all" />

<div class="form-float">
<label for="weight">
Approx. Weight:</label><input id="weight" runat="server" name="weight"
type="text" /><br />&nbsp;
</div>


<div class="form-float">
<label for="eyecolor">
Eye Color:</label><input runat="server" type="text" name="eyecolor" 
id="eyecolor" /><br />&nbsp;
</div>


<br clear="all" />

<div class="form-float">
<label for="hair">
Hair Style/Color:</label><input runat="server" name="hair" type="text" 
id="hair" /><br />&nbsp;
</div>

<div class="form-float">
<label for="language">
Language/Accent:</label><input id="language" runat="server" name="language" type="text" /><br />&nbsp;
</div>
<br />

<br clear="all" />

<div class="form-float">
<label for="race">
Race:</label><input id="race" runat="server" name="race" type="text" /><br />&nbsp;
</div>

<div class="form-float">
<label for="vehicle">
Vehicle:</label><input id="vehicle" runat="server" name="vehicle" type="text" /><br />&nbsp;
</div>


<br clear="all" />

<div class="form-float">
<label for="tattoo">
Tattoos/Scars:</label><input id="tattoo" runat="server" name="tattoo" type="text" /><br />&nbsp;
</div>

<div class="form-float">
<label for="clothing">
Clothing:</label><input id="clothing" runat="server" name="clothing" type="text" /><br />&nbsp;
</div>


<br clear="all" />

<div class="form-float">
<label for="confidence">
Confidence Level (0-100%):</label><input id="confidence" runat="server" name="confidence"
type="text" />    <br />&nbsp;                                                    
</div>

<br clear="all" />

<div id="divcomments" runat="server" visible="true">
<label for="comments">Additional Comments/Description:</label>
<textarea id="comments" runat="server" rows="5"></textarea>                                              
</div>



<h2 style="margin-top:15px;">
Your Contact Information (Optional)</h2>

<div runat="server" id="YourInfo" class="step" visible="true">
<p>
You are not required to provide your contact information. However, leaving your contact information would allow us to obtain additional information if necessary.</p>
</div>

<label for="r_name">
Name:</label><input id="r_name" runat="server" name="r_name" type="text" />

<label for="r_phone">
Phone:</label><input id="r_phone" runat="server" name="r_phone" type="text" />


<label for="r_email">
Email:</label><input id="r_email" runat="server" name="r_email" type="text" /><span id="emailspan"></span>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
ControlToValidate="r_email" ErrorMessage="Please enter a valid email address" 
ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


</td></tr>

</table>
</div>


                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div runat="server" id="captcha">
                                &nbsp;<cc1:CaptchaControl ID="CaptchaControl1" runat="server" />
                                <asp:Label ID="lblCaptchaError" Visible="false" ForeColor="Red" runat="server" Text="Wrong code entered, please try again"></asp:Label>
                            </div>
                            <div style="margin-top: 10px">
                                <asp:Button runat="server" ID="btnSubmit" Text="Submit Report" CssClass="navigation_button"
                                    Visible="true" OnClick="btnSubmit_Click" /></div>
                        </div>
                    </div>
                    <!-- leftContentInterior ends -->
                </div>
                <!-- leftSideInterior ends -->
                <div id="rightSide">
                 <!-- #include virtual="/layout/im-looking-for.asp" -->
				<!-- #include virtual="/layout/sub-navigation/subnavigation-fraud.asp" -->
				<!-- #include virtual="/layout/exclusions-database.asp" -->
				<!-- #include virtual="/layout/report-fraud.asp" -->
                    <div class="clearPadding">
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <!-- rightSide ends -->
                <div class="clear">
                </div>
            </div>
            <!-- mainBody ends -->
        </div>
        <!-- textReset ends -->
    </div>
    <!-- bodyContainer ends -->
    <div id="footerContainer">
    <!-- #include virtual="/layout/footer-top.asp"-->
    </div>
    <!-- footerContainer ends -->
    <div id="footerBottomContainer">
    <!--  #include virtual="/layout/footer-bottom.asp" -->
    </div>
    <!-- footerBottomContainer -->
                        </form>
</body>
</html>
