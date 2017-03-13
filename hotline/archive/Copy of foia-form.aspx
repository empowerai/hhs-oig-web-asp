<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="foia-form.aspx.cs" Inherits="Hotline.foia_form" %>

<%@ Register Assembly="WebControlCaptcha" Namespace="WebControlCaptcha" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="keywords" content="Report Fraud, Office of Inspector General" />
    <meta name="description" content="Report Fraud Online with a simple web form." />
    <title>Submit a FOIA Request | Freedom of Information Act (FOIA) | Office of Inspector General | U.S. Department
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
    
    
    

    
<style type="text/css">
.form-float {float:left; margin-right:20px;}
select {font-size:12px} 
#CheckBoxList1 td, #CheckBoxList2 td {padding-bottom:10px;}
label[for=CheckBoxList1_0],
label[for=CheckBoxList1_1],
label[for=CheckBoxList1_2],
label[for=CheckBoxList2_0],
label[for=CheckBoxList2_1],
label[for=CheckBoxList2_2]
 {display:inline !important;}
.radio-text {padding-left:6px; vertical-align:1px;}
#oc_uploadInput table td input[type=file] {margin-bottom:10px;}
</style>
    

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
                            <li><a href="http://oig.hhs.gov/foia/">FOIA</a>
                            </li>
                            <li>Submit a FOIA Request</li>
                        </ul>
                    </div>
                    <!-- breadcrumbs end -->
                    <form id="form1" runat="server">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div id="leftContentInterior">
                        <h1>
                            Submit a FOIA Request</h1>
                        <div id="fieldWrapper">
                            <div runat="server" id="summary" class="step" Visible="true">
                                <p>Make a request by completing the form below.  You may also contact us <a href="#contact">by mail
                    or fax</a>.</p>
                            </div>
                            
                            
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
<ContentTemplate>
<div class="input">
                                    
                              
                                    


<table width="100%" cellpadding="0" cellspacing="0" border="1" class="fugitive-table">

<tr>
<td>


<div class="form-float">
<label for="title">Title:</label>
    <select id="title" name="title" runat="server" style="margin-bottom:15px;">
        <option label="Choose Title" value="">Choose Title</option>
        <option label="Mr." value="Mr.">Mr.</option>
        <option label="Mrs." value="Mrs.">Mrs.</option>
        <option label="Ms" value="Ms">Ms</option>
        <option label="Miss" value="Miss">Miss</option>
    </select>
</div>

<br clear="all" />

<div class="form-float">
<label for="address">First name:</label>
<input runat="server" type="text" class="required" name="first_name" id="first_name" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ErrorMessage="This field is required" ControlToValidate="first_name"></asp:RequiredFieldValidator>
&nbsp;</div>
           
<div class="form-float">
<label for="address">Middle initial:</label>
<input runat="server" type="text" class="required" name="middle_initial" id="middle_initial" />
</div>

<br clear="all" />

<div class="form-float">
<label for="last_name">Last name:</label>
<input runat="server" type="text" class="required" name="last_name" id="last_name" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ErrorMessage="This field is required" ControlToValidate="last_name"></asp:RequiredFieldValidator>
</div>
                                                     
<div class="form-float frm-spacer">
<label for="organization">Organization/Affil.:</label>
<input runat="server" class="required" type="text" name="organization" id="organization" /><br /><asp:RequiredFieldValidator 
        ID="RequiredFieldValidator7" runat="server" 
        ErrorMessage="This field is required" ControlToValidate="organization"></asp:RequiredFieldValidator>
&nbsp;</div>

<br clear="all" />

<div class="form-float">
<label for="address">Address 1:</label><input runat="server" class="required" type="text" name="address" 
id="address" /><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="This field is required" ControlToValidate="address"></asp:RequiredFieldValidator>
</div>

<div class="form-float">
<label for="address2">Address 2:</label><input runat="server" class="required" type="text" name="address2" 
id="address2" /><br />&nbsp;
</div>

<br clear="all" />

<div class="form-float">
<label for="city">
City:</label><input runat="server" class="required" type="text" name="city"
id="city" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
        ErrorMessage="This field is required" ControlToValidate="city"></asp:RequiredFieldValidator>
</div>

<div class="form-float">
<label for="state">
State:</label><select runat="server" class="required" name="state" id="state">
                        <option value="">Please Select</option>
                        <option value="AL">Alabama </option>
                        <option value="AK">Alaska</option>
                        <option value="AZ">Arizona</option>
                        <option value="AR">Arkansas</option>
                        <option value="CA">California</option>
                        <option value="CO">Colorado</option>
                        <option value="CT">Connecticut</option>
                        <option value="DE">Delaware</option>
                        <option value="DC">District of Columbia</option>
                        <option value="FL">Florida</option>
                        <option value="GA">Georgia</option>
                        <option value="HI">Hawaii</option>
                        <option value="ID">Idaho</option>
                        <option value="IL">Illinois</option>
                        <option value="IN">Indiana</option>
                        <option value="IA">Iowa</option>
                        <option value="KS">Kansas</option>
                        <option value="KY">Kentucky</option>
                        <option value="LA">Louisiana</option>
                        <option value="ME">Maine</option>
                        <option value="MD">Maryland</option>
                        <option value="MA">Massachusetts</option>
                        <option value="MI">Michigan</option>
                        <option value="MN">Minnesota</option>
                        <option value="MS">Mississippi</option>
                        <option value="MO">Missouri</option>
                        <option value="MT">Montana</option>
                        <option value="NE">Nebraska</option>
                        <option value="NV">Nevada</option>
                        <option value="NH">New Hampshire</option>
                        <option value="NJ">New Jersey</option>
                        <option value="NM">New Mexico</option>
                        <option value="NY">New York</option>
                        <option value="NC">North Carolina</option>
                        <option value="ND">North Dakota</option>
                        <option value="OH">Ohio</option>
                        <option value="OK">Oklahoma</option>
                        <option value="OR">Oregon</option>
                        <option value="PA">Pennsylvania</option>
                        <option value="RI">Rhode Island</option>
                        <option value="SC">South Carolina</option>
                        <option value="SD">South Dakota</option>
                        <option value="TN">Tennessee</option>
                        <option value="TX">Texas</option>
                        <option value="UT">Utah</option>
                        <option value="VT">Vermont</option>
                        <option value="VA">Virginia</option>
                        <option value="WA">Washington</option>
                        <option value="WV">West Virginia</option>
                        <option value="WI">Wisconsin</option>
                        <option value="WY">Wyoming</option>
                    </select>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
        runat="server" ErrorMessage="This field is required"
                        ControlToValidate="state"></asp:RequiredFieldValidator>
                <br />
</div>


<br clear="all" />

<div class="form-float">
<label for="zip_code">
Zip code:</label><input runat="server" type="text" name="zip_code" 
id="zip_code" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server" ErrorMessage="This field is required"
                        ControlToValidate="zip_code"></asp:RequiredFieldValidator>
    <br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
ErrorMessage="Please enter a valid zip code" ControlToValidate="zip_code" 
ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
    <br />
</div>


<div class="form-float">
<label for="daytime_phone">
    Daytime phone: (000-000-0000)</label><input type="text" runat="server" name="daytime_phone" 
id="daytime_phone" /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
        ControlToValidate="daytime_phone" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
        ControlToValidate="daytime_phone" 
        ErrorMessage="Please enter a valid phone number" 
        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
</div>


<br clear="all" />

<div class="form-float">
<label for="fax_number">
Fax number:</label><input id="fax_number" runat="server" name="fax_number"
type="text" /><br />&nbsp;
</div>


<div class="form-float">
<label for="email_address">
Email address:</label><input runat="server" type="text" name="email_address" 
id="email_address" /><br />    
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="email_address" ErrorMessage="Please enter a valid email address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</div>

<br clear="all" />


<div id="divcomments" runat="server" visible="true">
 <h2>Description of the Documents Requested</h2>
            <p>
                Although you do not have to give a document's title, you should identify the documents
                that you want as specifically as possible to increase the likelihood that the agency
                will be able to locate them. Any facts you can furnish about the time, authors,
                events, subjects, and other details of the documents will be helpful to the agency
                in deciding where to search and in determining which records respond to your request,
                saving you and the government time and money.
            </p>
            <p>
                Please list, as clearly as possible, the name of the document(s), the type of document(s),
                and any other specifics you may have that will identify the documents you seek.

<div runat="server" id="YourInfo" class="step" visible="true">
<h4>Date Range</h4>
</div>

<div class="form-float">
<label for="start_date">
    Start date: (mm/dd/yyyy)</label><input id="start_date" runat="server" name="start_date"
type="text" /><br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
ControlToValidate="start_date" 
ErrorMessage="Please enter a valid date" 
ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$"></asp:RegularExpressionValidator>
</div>


<div class="form-float">
<label for="end_date">
    End date: (mm/dd/yyyy)</label><input runat="server" type="text" name="end_date" 
id="end_date" /><br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
ControlToValidate="end_date" 
ErrorMessage="Please enter a valid date" 
ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$"></asp:RegularExpressionValidator>
</div>

<br clear="all" />
                

<h4>Document Description</h4>
<textarea ID="documentDiscriptions" runat="server" rows="5"></textarea>
<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="documentDiscriptions" 
        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
        <br /></p>
</div>




<h2 style="margin-top:20px;">Payment of fees</h2>
            <p>Select the amount you are willing to reimburse the agency for fees incurred which
                exceed $25.00.</p>
                
                <asp:RadioButtonList ID="CheckBoxList1" runat="server" 
                    RepeatDirection="Vertical">
                    <asp:ListItem>$26.00  - $100.00</asp:ListItem>
                    <asp:ListItem>$101.00 - $250.00</asp:ListItem>
                    <asp:ListItem>$251.00 - $500.00</asp:ListItem>
                </asp:RadioButtonList>                



<h2 style="margin-top:20px;">Receipt of Documents</h2>
            <p>
                How would you like to receive your documents? <span class="file_type"></span></p>               
                
                <asp:RadioButtonList ID="CheckBoxList2" runat="server" RepeatDirection="Vertical">
                    <asp:ListItem>Paper</asp:ListItem>
                    <asp:ListItem>CD</asp:ListItem>
                    <asp:ListItem>Email (if documents are more than 5MB. they will be provided on a CD.)</asp:ListItem>
                </asp:RadioButtonList>
<h2 style="margin-top:20px; padding-bottom:5px;">Attachments</h2> 
   <div runat="server" id="oc_uploadInput">									
	    <label for="oc_fileupload" style="padding-top:0;padding-bottom:10px;">You may upload files that support your request.  Acceptable file types are text (such as .doc, .pdf, .rtf, .txt) and graphic files (such as .jpg, .gif).  Due to security issues, OIG Hotline Operations cannot accept .zip files.</label>
	 <table>
        <tr><td>
	    <asp:FileUpload ID="oc_fileupload1" runat="server" EnableViewState="true" />
        </td></tr>									
	    <tr><td>
	    <asp:FileUpload ID="oc_fileupload2" runat="server" EnableViewState="true" />
        </td></tr>
        <tr><td>
        <asp:FileUpload ID="oc_fileupload3" runat="server" EnableViewState="true" />
        </td></tr>
        <tr><td>
        <asp:FileUpload ID="oc_fileupload4" runat="server" EnableViewState="true" />
        </td></tr>
        <tr><td>
        <asp:FileUpload ID="oc_fileupload5" runat="server" EnableViewState="true" />
        </td></tr>
     </table>								      
       <asp:Label ID="lblUpload" runat="server" CssClass="sizeLimit" visible="false"></asp:Label>
       <label>Files and total file size may not exceed 10 MB.</label>
      </div>
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
            <asp:Button runat="server" ID="btnSubmit" Text="Submit Request" CssClass="navigation_button"
                Visible="true" OnClick="btnSubmit_Click" /></div>
                                    
                                    
           <div class="contentSeparator"></div>
           <h2 id="contact">Mail or Fax Your Request</h2>
            <p>
                OIG Freedom of Information Officer<br />
                Cohen Building, Suite 1062<br />
                Department of Health and Human Services<br />
                330 Independence Ave, S.W.<br />
                Washington, D.C. 20201<br />
                Fax: 202-205-4030</p>                                 
                                    
                        </div>
                    </div>
                    <!-- leftContentInterior ends -->
                </div>
                <!-- leftSideInterior ends -->
                <div id="rightSide">
                 <!-- #include virtual="/layout/im-looking-for.asp" -->
				<!-- #include virtual="/layout/sub-navigation/subnavigation-foia.asp" -->
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
