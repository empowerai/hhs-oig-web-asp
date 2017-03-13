<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report-fraud-web-form.aspx.cs" Inherits="Hotline.report_fraud_web_form" %>

<%@ Register assembly="WebControlCaptcha" namespace="WebControlCaptcha" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>

<meta name="keywords" content="Report Fraud, Office of Inspector General" />
<meta name="description" content="Report Fraud Online with a simple web form." />
<title>Report Fraud Online | Report Fraud | Office of Inspector General | U.S. Department of Health and Human Services</title>
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

        function btnAttachMore_Click() 
        {
            //document.getElementById("moreFileUpload").style.visibility = "visible";

            document.getElementById("Panel1").style.visibility = "visible";
        } 




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

            $('#UpdatePanel1').panelUpdated(function() {
            $('#first_name').alpha({ allow: " " });
                $('#last_name').alpha({ allow: " " });
                $('#city').alpha({ allow: " " });
                $('#zip').numeric();
                            
                $('#phone').mask("(999) 999-9999");
                $('#cell_phone').mask("(999) 999-9999");

                $("#email").blur(function() {
                    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var emailaddress = $("#email").val();
                    if (!emailReg.test(emailaddress))
                        $("#emailspan").html('<font color="#cc0000">Please enter valid Email address</font>');
                    else
                        $("#emailspan").html('<font color="#cc0000"></font>');
                });          
            });
            $('#UpdatePanel2').panelUpdated(function() {

                $('#allegation_person_first_name').alpha({ allow: " " });
                $('#allegation_person_last_name').alpha({ allow: " " });
                $('#allegation_person_middle_name').alpha({ allow: " " });
                $('#allegation_person_employer').alphanumeric({ allow: " " });
                $('#allegation_person_nickname').alphanumeric({ allow: " " });
                $('#allegation_person_title').alpha({ allow: " " });
                $('#allegation_person_city').alpha();
                $('#allegation_person_zip').numeric();

                $('#allegation_business_name').alpha({ allow: " " });
                $('#allegation_business_city').alpha({ allow: " " });
                $('#allegation_business_zip').numeric();

            
                $('#allegation_person_dob').mask("99/99/9999");
                $('#allegation_person_ssn').mask("999-99-9999");
                $('#allegation_person_home_phone').mask("(999)-999-9999");
                $('#allegation_person_business_phone').mask("(999)-999-9999");
                $('#allegation_person_cell_phone').mask("(999)-999-9999");
                $('#allegation_business_business_phone').mask("(999)-999-9999");
                $('#allegation_business_cell_phone').mask("(999)-999-9999");
            });
            $('#updatePanel3').panelUpdated(function() {

                $('#witness_person_first_name').alpha({ allow: " " });
                $('#witness_person_last_name').alpha({ allow: " " });
                $('#witness_person_middle_name').alpha({ allow: " " });
                $('#witness_person_nickname').alpha({ allow: " " });

                $('#qocc_victim_first').alpha({ allow: " " });
                $('#qocc_victim_last').alpha({ allow: " " });
                $('#qocc_victim_middle').alpha({ allow: " " });
                $('#qocc_victim_nickname').alpha({ allow: " " });
                $('#qocc_victim_city').alpha();
                $('#qocc_victim_zip').numeric();
                $('#qocc_witness_person_first_name').alpha({ allow: " " });
                $('#qocc_witness_person_last_name').alpha({ allow: " " });
                $('#qocc_witness_person_middle_name').alpha({ allow: " " });
                $('#qocc_witness_person_nickname').alpha({ allow: " " });

                $('#gcfc_witness_person_first_name').alpha({ allow: " " });
                $('#gcfc_witness_person_last_name').alpha({ allow: " " });
                $('#gcfc_witness_person_middle_name').alpha({ allow: " " });
                $('#gcfc_witness_person_nickname').alpha({ allow: " " });

                $('#cac_witness_person_first_name').alpha({ allow: " " });
                $('#cac_witness_person_last_name').alpha({ allow: " " });
                $('#cac_witness_person_middle_name').alpha({ allow: " " });
                $('#cac_witness_person_nickname').alpha({ allow: " " });

                $('#mitc_witness_person_first_name').alpha({ allow: " " });
                $('#mitc_witness_person_last_name').alpha({ allow: " " });
                $('#mitc_witness_person_middle_name').alpha({ allow: " " });
                $('#mitc_witness_person_nickname').alpha({ allow: " " });

                $('#ac_witness_person_first_name').alpha({ allow: " " });
                $('#ac_witness_person_last_name').alpha({ allow: " " });
                $('#ac_witness_person_middle_name').alpha({ allow: " " });
                $('#ac_witness_person_nickname').alpha({ allow: " " });

                $('#fcsc_exact_amount').numeric({ allow: "." });
                $('#fcsc_reside_extra').alpha({ allow: " " });
                $('#fcsc_witness_person_first_name').alpha({ allow: " " });
                $('#fcsc_witness_person_last_name').alpha({ allow: " " });
                $('#fcsc_witness_person_middle_name').alpha({ allow: " " });
                $('#fcsc_witness_person_nickname').alpha({ allow: " " });

                $('#oc_witness_person_first_name').alpha({ allow: " " });
                $('#oc_witness_person_last_name').alpha({ allow: " " });
                $('#oc_witness_person_middle_name').alpha({ allow: " " });
                $('#oc_witness_person_nickname').alpha({ allow: " " });
                
                $('#witness_person_dob').mask("99/99/9999");
                $('#witness_person_ssn').mask("999-99-9999");
                $('#witness_person_home_phone').mask("(999) 999-9999");
                $('#witness_person_business_phone').mask("(999) 999-9999");
                $('#witness_person_cell_phone').mask("(999) 999-9999");
                $('#qocc_victim_dob').mask("99/99/9999");
                $('#qocc_victim_ssn').mask("999-99-9999");               
                $('#qocc_victim_home_phone').mask("(999) 999-9999");
                $('#qocc_victim_cell_phone').mask("(999) 999-9999");
                $('#qocc_witness_person_dob').mask("99/99/9999");
                $('#qocc_witness_person_ssn').mask("999-99-9999");
                $('#qocc_witness_person_home_phone').mask("(999) 999-9999");
                $('#qocc_witness_person_cell_phone').mask("(999) 999-9999");
                $('#gcfc_witness_person_dob').mask("99/99/9999");
                $('#gcfc_witness_person_ssn').mask("999-99-9999");
                $('#gcfc_witness_person_home_phone').mask("(999) 999-9999");
                $('#gcfc_witness_person_cell_phone').mask("(999) 999-9999");
                $('#cac_witness_person_dob').mask("99/99/9999");
                $('#cac_witness_person_ssn').mask("999-99-9999");
                $('#cac_witness_person_home_phone').mask("(999) 999-9999");
                $('#cac_witness_person_cell_phone').mask("(999) 999-9999");
                $('#mitc_witness_person_dob').mask("99/99/9999");
                $('#mitc_witness_person_ssn').mask("999-99-9999");
                $('#mitc_witness_person_home_phone').mask("(999) 999-9999");
                $('#mitc_witness_person_cell_phone').mask("(999) 999-9999");
                $('#ac_witness_person_dob').mask("99/99/9999");
                $('#ac_witness_person_ssn').mask("999-99-9999");
                $('#ac_witness_person_home_phone').mask("(999) 999-9999");
                $('#ac_witness_person_cell_phone').mask("(999) 999-9999");
                $('#fcsc_witness_person_dob').mask("99/99/9999");
                $('#fcsc_witness_person_ssn').mask("999-99-9999");
                $('#fcsc_witness_person_home_phone').mask("(999) 999-9999");
                $('#fcsc_witness_person_cell_phone').mask("(999) 999-9999");
                $('#oc_witness_person_dob').mask("99/99/9999");
                $('#oc_witness_person_ssn').mask("999-99-9999");
                $('#oc_witness_person_home_phone').mask("(999) 999-9999");
                $('#oc_witness_person_cell_phone').mask("(999) 999-9999");
            });           

        });
    </script>

    <style type="text/css">
        .style1
        {
            font-size: x-small;
        }
    </style>

</head>
<body>
 
<div id="bodyContainer">
	<div id="textReset">
	<!-- #include virtual="/layout/header.asp" -->
			<div id="mainBody">
			<div id="leftSideInterior">
				<div id="breadcrumbs">
					<ul>
						<li>
							<a href="http://oig.hhs.gov/">Home</a>
						</li>
						<li>
							<a href="http://oig.hhs.gov/fraud/index.asp">Fraud</a>
						</li>
						<li>
							<a href="http://oig.hhs.gov/fraud/report-fraud/index.asp">Report Fraud</a>
						</li>
						<li>
					     Report Fraud Form
						</li>
					</ul>
				</div> <!-- breadcrumbs end -->
		<form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
					
				<div id="leftContentInterior">
					<h1>Report Fraud Form</h1>
							<div id="fieldWrapper">
									<div id="step_visualization"></div>
							<div runat="server" id="summary" class="step" visible="false">
								<h2>Summary</h2>
								<p>Please verify your information below before submitting the form.</p>
							</div>
							<div runat="server" id="Success" class="congrats">
								 <asp:Label ID="lblSuccess" runat="server" Visible="false"></asp:Label>
								
								 </div>
									<div id="Step1" class="step">
							<div runat="server" id="captcha">
							<p>
									There may be additional questions regarding your complaint. Please consider 
                                    providing your name and contact information to allow for follow-up contact if 
                                    needed.
								</p>
															<p>
									                            All complaints submitted to the Hotline are treated confidentially. Complaints 
                                                                are shared only within HHS for the purpose of evaluating your complaint; public 
                                                                disclosure of personally identifiable information is restricted by the Privacy 
                                                                Act.
								</p>
									If you prefer, you may provide your complaint anonymously. In many cases, 
                                however, the lack of contact information prevents a comprehensive review of the 
                                complaint and will prevent further communication between you and HHS OIG. If you 
                                wish to enter your complaint anonymously, please take care to withhold any 
                                personally identifiable information from your complaint narrative and from any 
                                attachments.
								
								<p>
									Whistleblower Protection: OIG Hotline Operations will provide anyone protected 
                                    under Federal whistle blower statutes the protections required under law.
								    </p>
							    <cc1:CaptchaControl id="CaptchaControl1" runat="server" />
                                <asp:Label ID="lblCaptchaError" Visible="false" ForeColor="Red" runat="server" Text="Wrong code entered, please try again"></asp:Label>
							    
							</div>
						    
							<div runat="server" id ="identity" visible="false">
							<p>&nbsp;</p>
								<%--	<div id="step_visualization">
									<span id="visualization_Step1" class="visualization">Step 1</span> -  
									<span id="visualization_Step2" class="visualizationSad">Step 2</span> -
									<span id="visualization_Step3" class="visualizationSad">Step 3</span> -
									<span id="visualization_Step4" class="visualizationSad">Step 4</span> 
								
								
								
								</div>--%>
								
									<h2>Information About You</h2>
							<h3>Please Select One:</h3>
							<asp:RadioButtonList ID ="anonymous" runat="server"  AutoPostBack="True" 
                                    onselectedindexchanged="rblIdentity_SelectedIndexChanged" TabIndex="1" >
                                <asp:ListItem Value="1">I choose to indetify myself for the complaint</asp:ListItem>
                                <asp:ListItem Value="2">I choose to provide my complaint anonymously</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator90" runat="server" ControlToValidate="anonymous" InitialValue="" ErrorMessage="Please select one."></asp:RequiredFieldValidator>
                               </div>
								
							</div>
							        &nbsp;<!-- step1 ends -->
							
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" RenderMode="Inline">
 <ContentTemplate>                           
<asp:Panel ID ="pnlStep2" runat="server">

							<div id="Step2" runat="server"  class="step" visible ="false">
							
							
									<div class="input">
									<h3>Information About You</h3>
										<ul>
											<li>
												<label for="first_name">First Name:</label><input runat="server" type="text" name="first_name" class="required" id="first_name" />
											    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ControlToValidate="first_name" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
											</li>
											<li>
												<label for="last_name">Last Name:</label><input runat="server" type="text" name="last_name" class="required" id="last_name"  />
											    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ControlToValidate="last_name" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
											</li>
											<li>
												<label for="company">Company:</label><input runat="server" type="text" name="company" id="company" />
											</li>
											<li>
												<label for="address1">Address1:</label><input runat="server" type="text"  class="required" name="address1" id="address1"  />
											    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="address1"></asp:RequiredFieldValidator></span>
											</li>
											<li>
												<label for="address2">Address2:</label><input runat="server" type="text" name="address2" id="address2"  />
											</li>
											<li>
												<label for="city">City:</label><input runat="server" class="required" type="text" name="city" id="city"    />
											    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="city"></asp:RequiredFieldValidator></span>
											</li>
											<li>
												<label for="stateFrom">State:</label>
												<select runat="server" class="required" name="stateFrom" id="stateFrom">
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
											    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ErrorMessage="This Field is Required " ControlToValidate="stateFrom"></asp:RequiredFieldValidator></span>
											</li>
											<li> 
												<label for="zip">Zip:</label><input runat="server" class="required number" type="text" name="zip" id="zip" />
											    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="zip"></asp:RequiredFieldValidator></span>
											</li>
											<li> 
												<label for="phone">Phone:</label><input runat="server" maxlength="11" type="text" name="phone"  id="phone"  /> 
											    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="phone"></asp:RequiredFieldValidator>
                                                    <%--<asp:RegularExpressionValidator ID="regPhone" runat="server" ControlToValidate="phone" ValidationExpression="^(\(?\s*\d{3}\s*[\)\-\.]?\s*)?[2-9]\d{2}\s*[\-\.]\s*\d{4}$" Text="Enter a valid phone number" />  onblur="formatNumber(this)" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')"--%> 
                                                    </span>
											</li>
											<li> 
												<label for="cell_phone">Cell Phone:</label><input runat="server" type="text" name="cell_phone number" id="cell_phone" />
											</li>
											<li> 
												<label for="email">Email:</label><input type="text" runat="server" name="email"  id="email" /><span id="emailspan"></span>
											</li>
											<li> 
												<label for="contact_time">If an investigator needs to contact you, what is the 
                                                best time to reach you?:</label>
													<select runat="server" name="contact_time" class="required" id="contact_time">
													<option value="">Please Select</option>
													<option value="morning8-12">Morning (8:00 am - 12:00 pm) </option>
													<option value="afternoon12-5">Afternoon (12:00 pm - 5:00 pm)</option>
													<option value="evening5-9">Evening (5:00 pm - 9:00 pm)</option>
													<option value="night9-8">Night (9:00 pm - 8:00 am)</option>
													<option value="anytime">Anytime</option>
													</select>
											</li>
										</ul>
										<p>The information I provide will be correct to the best of my knowledge. I 
                                            understand that intentionally providing false information could be a violation 
                                            of law (18 U.S. Code Section 1001). </p>
								</div>
							</div>  </asp:Panel></ContentTemplate>
  <Triggers>
        <asp:AsyncPostBackTrigger ControlID="anonymous" 
            EventName="SelectedIndexChanged" />
    </Triggers>
                </asp:UpdatePanel>                  <!-- step2 ends -->
							<div id="Step3" class="step" >
									<div class="input" id="allegation" runat="server" visible="false">
									<%--<div id="step_visualization">
									<span id="visualization_Step1" class="visualizationSad">Step 1</span> -  
									<span id="visualization_Step2" class="visualization">Step 2</span> -
									<span id="visualization_Step3" class="visualizationSad">Step 3</span> -
									<span id="visualization_Step4" class="visualizationSad">Step 4</span> 
								
								</div>--%>
										<label for="allegation">The allegation is against a: </label>
										<asp:DropDownList ID="ddlAllegation" runat="server" 
                                            onselectedindexchanged="ddlAllegation_SelectedIndexChanged" 
                                            AutoPostBack="True" Visible="true">
										    <asp:ListItem Value="">Please Select</asp:ListItem>
                                            <asp:ListItem Value="personAllegation">Person</asp:ListItem>
                                            <asp:ListItem Value="businessAllegation">Business/Department</asp:ListItem>
                                        </asp:DropDownList>
										<%--<select name="allegation" class="required" id="allegation" >
											<option value="">Please Select</option>
											<option value="personAllegation">Person</option>
											<option value="businessAllegation">Business/Department</option>
										</select>--%><span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                            runat="server" ControlToValidate="ddlAllegation" 
                                            ErrorMessage="This Field is Required" SetFocusOnError="True" 
                                            InitialValue=""></asp:RequiredFieldValidator></span>
                                        &nbsp;                                 <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
											<div id="personAllegation" runat="server" visible="false">
												<h3>Person the allegation is against</h3>
												<ul>
													<li>
													<label for="allegation_person_first_name">First Name:</label><input runat="server" type="text" name="allegation_person_first_name" class="required" id="allegation_person_first_name" />
													    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                            ErrorMessage="This Field is Required" 
                                                            ControlToValidate="allegation_person_first_name"></asp:RequiredFieldValidator></span>
													</li>
                                                    <li>
													<label for="allegation_person_middle_name">Middle Name:</label><input runat="server" type="text" name="allegation_person_middle_name" id="allegation_person_middle_name" />
													</li>
													<li>
													<label for="allegation_person_last_name">Last Name:</label><input runat="server" type="text" name="allegation_person_last_name" class="required" id="allegation_person_last_name" />
													    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                            ErrorMessage="This Field is Required" 
                                                            ControlToValidate="allegation_person_last_name"></asp:RequiredFieldValidator></span>
													</li>													
													<li>
													<label for="allegation_person_employer">Employer:</label><input runat="server" type="text" name="allegation_person_employer"  id="allegation_person_employer" />
													</li>
													<li>
													<label for="allegation_person_nickname">Alias/Nickname:</label><input runat="server" type="text" name="allegation_person_nickname"  id="allegation_person_nickname" />
													</li>
													<li>
													<label for="allegation_person_title">Title:</label><input type="text" runat="server" name="allegation_person_title"  id="allegation_person_title" />
													</li>
													<li>
													<label for="allegation_person_dob">Date of Birth(e.g. 11/18/1984):</label><input runat="server" type="text" name="allegation_person_dob"  id="allegation_person_dob" />
													</li>
													<li>
													<label for="allegation_person_ssn">Social Security Number(SSN):</label><input runat="server" type="text" name="allegation_person_ssn"  id="allegation_person_ssn" />
													</li>
													<li>
													<label for="allegation_person_sex">Sex:</label>
														<select runat="server" name="allegation_person_sex"  id="allegation_person_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
															<li>
												<label for="allegation_person_address1">Address1:</label><input runat="server" type="text" name="allegation_person_address1" id="allegation_person_address1" />
											</li>
											<li>
												<label for="allegation_person_address2">Address2:</label><input runat="server" type="text" name="allegation_person_address2" id="allegation_person_address2" />
											</li>
											<li>
												<label for="allegation_person_city">City:</label><input runat="server" type="text" name="allegation_person_city" id="allegation_person_city" />
											</li>
											<li>
												<label for="allegation_person_state">State:</label>
												<select runat="server" name="allegation_person_state" id="allegation_person_state">
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
											</li>
											<li> 
												<label for="allegation_person_zip">Zip:</label><input runat="server"  type="text" name="allegation_person_zip" id="allegation_person_zip" />
											</li>
													<li>
													<label for="allegation_person_home_phone">Home Phone:</label><input runat="server" type="text" name="allegation_person_home_phone"  id="allegation_person_home_phone" />
													</li>
													<li>
													<label for="allegation_person_business_phone">Business Phone:</label><input runat="server" type="text" name="allegation_person_business_phone"  id="allegation_person_business_phone" />
													</li>
													<li>
													<label for="allegation_person_cell_phone">Cell Phone:</label><input runat="server" type="text" name="allegation_person_cell_phone"  id="allegation_person_cell_phone" />
													</li>
												</ul>
									 </div><!-- personAllegation ends -->
									<div id="businessAllegation" runat="server" visible="false">
											<h3>Business/Department allegation is against</h3>
												<ul>
													<li>
													<label for="allegation_business_name">Business/Department Name:</label><input runat="server" type="text" name="allegation_business_name" class="required" id="allegation_business_name" />
													    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                            ErrorMessage="This Field is Required" ControlToValidate="allegation_business_name"></asp:RequiredFieldValidator></span>
													</li>
													<li>
													<label for="allegation_business_dba">Doing Business As(DBA):</label><input runat="server" type="text" name="allegation_business_dba"  id="allegation_business_dba" />
													</li>
													<li>
													<label for="allegation_business_ein">Employer ID Number(EIN):</label><input runat="server" type="text" name="allegation_business_ein" id="allegation_business_ein" />
													</li>
															<li>
												<label for="allegation_business_address1">Address1:</label><input runat="server" type="text" name="allegation_business_address1" id="allegation_business_address1" />
											</li>
											<li>
												<label for="allegation_business_address2">Address2:</label><input runat="server" type="text" name="allegation_business_address2" id="allegation_business_address2" />
											</li>
											<li>
												<label for="allegation_business_city">City:</label><input runat="server" type="text" name="allegation_business_city" id="allegation_business_city" />
											</li>
											<li>
												<label for="allegation_business_state">State:</label>
												<select runat="server" name="allegation_business_state" id="allegation_business_state">
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
											</li>
											<li> 
												<label for="allegation_business_zip">Zip:</label><input runat="server" type="text" name="allegation_business_zip" id="allegation_business_zip" />
											</li>
													<li>
													<label for="allegation_business_business_phone">Business Phone:</label><input runat="server" type="text" name="allegation_business_business_phone"  id="allegation_business_business_phone" />
													</li>
													<li>
													<label for="allegation_business_cell_phone">Cell Phone:</label><input runat="server" type="text" name="allegation_business_cell_phone"  id="allegation_business_cell_phone" />
													</li>
										</ul>			
												<input type="hidden" class="link" value="Step4" />
										</div></ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="ddlAllegation" 
                                                    EventName="SelectedIndexChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel><!--  businessAllegation ends -->
									</div>
									<input type="hidden" class="link" value="Step4" />
							</div><!-- step3 ends -->
							<div id="Step4" class="step">
								<div id="complaint" class="input" runat="server" visible="false">
								<%--<div id="step_visualization">
									<span id="Span1" class="visualizationSad">Step 1</span> -  
									<span id="Span2" class="visualizationSad">Step 2</span> -
									<span id="Span3" class="visualization">Step 3</span> -
									<span id="Span4" class="visualizationSad">Step 4</span> 
								
								</div>--%>
									<h3>Type of Complaint</h3>
									<label id="lbltype_of_complaint"></label>
									<asp:DropDownList ID="type_of_complaint" runat="server" 
                                            onselectedindexchanged="type_of_complaint_SelectedIndexChanged" 
                                            AutoPostBack="True">
                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                        <asp:ListItem Value="health_care_fraud_complaint">Health Care Fraud Complaint</asp:ListItem>
                                        <asp:ListItem Value="quality_of_care_complaint">Quality of Care Complaint (Abuse/Neglect)</asp:ListItem>
                                        <asp:ListItem Value="grant_contract_fraud_complaint">Grant/Contract Fraud Complaint</asp:ListItem>
                                        <asp:ListItem Value="criminal_activity_complaint">Criminal Activity/Gross Misconduct/Mismanagement by HHS Employee</asp:ListItem>
                                        <asp:ListItem Value="medical_identity_theft_complaint">Medical Identity Theft Complaint</asp:ListItem>
                                        <asp:ListItem Value="federal_child_support_complaint">Federal Child Support Complaint</asp:ListItem>
                                        <asp:ListItem Value="agent_complaint">Select Agent Complaint</asp:ListItem>
                                        <asp:ListItem Value="other_complaint">Other Complaint</asp:ListItem>
                                        </asp:DropDownList>		
								
								        <span><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                            ControlToValidate="type_of_complaint" ErrorMessage="This Field is Required" 
                                            InitialValue=""></asp:RequiredFieldValidator></span>
								
								<asp:UpdatePanel runat="server" ID = "updatePanel3" UpdateMode="Conditional">
								<ContentTemplate>
										<div runat="server" id="health_care_fraud_complaint" visible="false">
								<ul>
									<li>
												<label id="Label1" runat="server" for="hcfc_type">Program:</label>
												
												<select runat="server" name="hcfc_type" class="required" id="hcfc_type" >
													<option value="">Please Select</option>
													<option value="medicare">Medicare </option>
													<option value="medicaid">Medicaid</option>
													<option value="otherHealthcare">Other Health Care Program</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="hcfc_type"></asp:RequiredFieldValidator></span>
									</li>
									<li>
										<label id="Label2" runat="server" for="hcfc_program_type">Program Type:</label>
												<select runat="server" name="hcfc_program_type" class="required" id="hcfc_program_type" >
													<option value="">Please Select</option>
													<option value="hcfc_home_health">Home Health </option>
													<option value="hcfc_durable_medical_equipment">Durable Medical Equipment</option>
													<option value="hcfc_prescription_drugs">Prescription Drugs/Pharmacy</option>
													<option value="hcfc_hospitals">Hospitals</option>
													<option value="hcfc_nursing_facility">Nursing Home/Extended Care Facility</option>
													<option value="hcfc_doctors_ambulance_companies">Doctors/Ambulance 
                                                        Companies/Clinics/Etc</option>
												</select>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                            ErrorMessage="This Field is Required" ControlToValidate="hcfc_program_type"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label id="Label3" runat="server" for="hcfc_type_of_allegation">Type of Allegation:</label>
												<select runat="server" name="hcfc_type_of_allegation" class="required" id="hcfc_type_of_allegation">
													<option value="">Please Select</option>
													<option value="hcfc_billing">Billing for Services Not provided/Upcoding </option>
													<option value="hcfc_kickbacks">Kickbacks</option>
													<option value="hcfc_selfreferral">Self-Referral (STARK)</option>
													<option value="hcfc_diversion">Diversion/Prescription Fraud</option>
													<option value="hcfc_other">Other (Please describe in narrative)</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="hcfc_type_of_allegation"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label id="Label4" runat="server" for="hcfc_subject_relationship">Your Relationship to 
                                                Subject:</label>
												<select runat="server" name="hcfc_subject_relationship" class="required" id="hcfc_subject_relationship">
													<option value="">Please Select</option>
													<option value="hcfc_employee">Employee/Consultant </option>
													<option value="hcfc_patient">Patient</option>
													<option value="hcfc_family">Spouse/Family Member</option>
													<option value="hcfc_medical_biller">Medical Biller</option>
													<option value="hcfc_other">Other (Please describe in narrative)</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="hcfc_subject_relationship"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label id="Label5" runat="server" for="hcfc_witness">Are there any other witnesses?</label>
												<asp:DropDownList ID="hcfc_witness" runat="server" 
                                                        onselectedindexchanged="hcfc_witness_SelectedIndexChanged" 
                                                        AutoPostBack="True" Visible="true" >
                                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                        
                                                </asp:DropDownList>

												<div runat ="server" id="dvhcfc_witness_extra" visible="false">
													<ul>
													<li>
													<label for="witness_person_first_name">First Name:</label><input runat="server" type="text" name="witness_person_first_name" id="witness_person_first_name" />
													</li>
                                                    <li>
													<label for="witness_person_middle_name">Middle Name:</label><input type="text" runat="server" name="witness_person_middle_name" id="witness_person_middle_name" />
													</li>
													<li>
													<label for="witness_person_last_name">Last Name:</label><input type="text" runat="server" name="witness_person_last_name" id="witness_person_last_name" />
													</li>
													
													<li>
													<label for="witness_person_nickname">Alias/Nickname:</label><input type="text" runat="server" name="witness_person_nickname" id="witness_person_nickname" />
													</li>
													<li>
													<label for="witness_person_title">Title:</label><input type="text" runat="server" name="witness_person_title"  id="witness_person_title" />
													</li>
													<li>
													<label for="witness_person_dob">Date of Birth(e.g. 11/18/1984):</label><input runat="server" type="text" name="witness_person_dob" id="witness_person_dob" />
													</li>
													<li>
													<label for="witness_person_ssn">Social Security Number(SSN):</label><input type="text" runat="server" name="witness_person_ssn" id="witness_person_ssn" />
													</li>
													<li>
													<label id="Label6" runat="server" for="witness_person_sex">Sex:</label>
														<select runat="server" name="witness_person_sex" id="witness_person_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
													<li>
													<label for="witness_person_home_phone">Home Phone:</label><input type="text" runat="server" name="witness_person_home_phone" id="witness_person_home_phone" />
													</li>
													<li>
													<label for="witness_person_business_phone">Business Phone:</label><input type="text" runat="server" name="witness_person_business_phone" id="witness_person_business_phone" />
													</li>
													<li>
													<label for="witness_person_cell_phone">Cell Phone:</label><input type="text" runat="server" name="witness_person_cell_phone" id="witness_person_cell_phone" />
													</li>
												</ul>
												</div><!-- info1 ends -->
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="hcfc_witness"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label  for="hcfc_previous_report">Has this been previously reported to anyone?</label>
												<asp:DropDownList ID="hcfc_previous_report" runat="server" 
                                                        onselectedindexchanged="hcfc_previous_report_SelectedIndexChanged" 
                                                        AutoPostBack="True" Visible="true" >
                                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                        
                                                </asp:DropDownList>
                                                <span><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="hcfc_previous_report"></asp:RequiredFieldValidator></span>
												<div runat="server" id="dvhcfc_previous_report" visible="false">
												<p>Who was this reported to?</p>
													<textarea runat="server" id="hcfc_previous_report_extra_textarea" cols="20" rows="5"></textarea>
													<span id="charsLeftOne"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator77" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="hcfc_previous_report_extra_textarea"></asp:RequiredFieldValidator></span>
												</div>
									            
									</li>	
									<li>
												<label id="Label7" runat="server" for="hcfc_previous_investigation">Has this subject 
                                                previously been investigated?</label>
												<asp:DropDownList ID="hcfc_previous_investigation" runat="server" 
                                                        onselectedindexchanged="hcfc_previous_investigation_SelectedIndexChanged" 
                                                        AutoPostBack="True" Visible="true" >
                                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                        
                                                </asp:DropDownList>
                                                <span id="Span5"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator78" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="hcfc_previous_investigation"></asp:RequiredFieldValidator></span>
												<div runat="server" id="dvhcfc_previous_investigation_extra" visible="false">
												<p>Who previously investigated this complaint?</p>
													<textarea runat="server" id="hcfc_previous_investigation_extra_textarea" cols="20" rows="5"></textarea>
													<span id="charsLeftTwo"></span>
												</div>
									            
									</li>
									<li>
									<label id="Label8" runat="server" for="hcfc_describe_fraud">Complaint Narrative (Please Describe 
                                        the Fraud or Complaint): </label>
										<textarea runat="server" id="hcfc_describe_fraud" class="required" cols="20" rows="5"></textarea>
									<span id="charsLeftThree"></span>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                            ErrorMessage="This Field is Required" ControlToValidate="hcfc_describe_fraud"></asp:RequiredFieldValidator></span>
									</li>
							
								</ul>
						
							
							</div><!-- health_care_fraud_complaint ends -->
								
								
<!-- break between types of complaitns -->
							
							
							<div runat= "server" id="quality_of_care_complaint" visible="false" >
							
								<ul>
									<li>
												<label for="qocc_type">Type:</label>
												<select runat="server" name="qocc_type" class="required" id="qocc_type">
													<option value="">Please Select</option>
													<option value="abuse">Abuse (Physical threats/Harm to Patient) </option>
													<option value="neglect">Neglect (Treatment Standards/Poor Care of Patient(s))</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                                    ControlToValidate="qocc_type" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
									</li>
									<li>
										<label for="qocc_immediate_danger">Is the person in immediate danger?</label>
												<select runat="server" name="qocc_immediate_danger" class="required" id="qocc_immediate_danger"  >
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                                            ControlToValidate="qocc_immediate_danger" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
									</li>
									<li>
											 <h3>Victim Information:</h3>
											<div id="qocc_victim_info">
													<ul>
													<li>
													<label for="qocc_victim_first">First Name:</label><input runat="server" type="text" name="qocc_victim_first" class="required" id="qocc_victim_first" />
													    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" 
                                                            ControlToValidate="qocc_victim_first" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
													</li>
                                                    <li>
													<label for="qocc_victim_middle">Middle Name:</label><input runat="server" type="text" name="qocc_victim_middle" id="qocc_victim_middle" />
													</li>
													<li>
													<label for="qocc_victim_last">Last Name:</label><input runat="server" type="text" name="qocc_victim_last" class="required" id="qocc_victim_last" />
													    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                                            ControlToValidate="qocc_victim_last" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
													</li>
												
													<li>
													<label for="qocc_victim_nickname">Alias/Nickname:</label><input runat="server" type="text" name="qocc_victim_nickname" id="qocc_victim_nickname" />
													</li>
												
													<li>
													<label for="qocc_victim_dob">Date of Birth(e.g. 11/18/1984):</label><input runat="server" type="text" name="qocc_victim_dob" id="qocc_victim_dob" />
													</li>
													<li>
													<label for="qocc_victim_medid">Medicare/Medicaid #(if known):</label><input runat="server" type="text" name="qocc_victim_medid" class="required" id="qocc_victim_medid" />
													    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                                                            ControlToValidate="qocc_victim_medid" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
													</li>
													<li>
													<label for="qocc_victim_ssn">Social Security Number(SSN):</label><input type="text" runat="server" name="qocc_victim_ssn" id="qocc_victim_ssn" />
													</li>
													<li>
													<label for="qocc_victim_sex">Sex:</label>
														<select runat="server" name="qocc_victim_sex" class="required" id="qocc_victim_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                                            ControlToValidate="qocc_victim_sex" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
													</li>
											<li>
												<label for="qocc_victim_address1">Address1:</label><input runat="server" type="text" name="qocc_victim_address1" id="qocc_victim_address1" />
											</li>
											<li>
												<label for="qocc_victim_address2">Address2:</label><input runat="server" type="text" name="qocc_victim_address2" id="qocc_victim_address2" />
											</li>
											<li>
												<label for="qocc_victim_city">City:</label><input runat="server"  type="text" name="qocc_victim_city" id="qocc_victim_city" />
											</li>
											<li>
												<label for="qocc_victim_state">State:</label>
												<select runat="server" name="qocc_victim_state" id="qocc_victim_state">
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
											</li>
											<li> 
												<label for="qocc_victim_zip">Zip:</label><input runat="server"  type="text" name="qocc_victim_zip" id="qocc_victim_zip" />
											</li>													<li>
													<label for="qocc_victim_home_phone">Home Phone:</label><input runat="server" type="text" name="qocc_victim_home_phone" class="required" id="qocc_victim_home_phone" />
													        <span><asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                                                ControlToValidate="qocc_victim_home_phone" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
													</li>
											
													<li>
													<label for="qocc_victim_cell_phone">Cell Phone:</label><input runat="server" type="text" name="qocc_victim_cell_phone" class="required" id="qocc_victim_cell_phone" />
													</li>
												</ul>
												</div><!-- info1 ends -->
												
									</li>
									<li>
												<label for="qocc_victim_relationship">Your Relationship to Subject:</label>
												<select runat="server" name="qocc_victim_relationship" id="qocc_victim_relationship">
													<option value="">Please Select</option>
													<option value="qocc_self">Self</option>
													<option value="qocc_employee">Employee/Consultant for Subject</option>
													<option value="qocc_guardian">Guardian</option>
													<option value="qocc_family">Spouse/Family Member</option>
													<option value="qocc_medprov">Medical Provider (Not employed by Subject)</option>
													<option value="qocc_other">Other (Please describe in narrative)</option>
												</select>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="qocc_victim_relationship"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label for="qocc_witness">Are there any other witnesses?</label>
												<asp:DropDownList ID="qocc_witness" runat="server" 
                                                        onselectedindexchanged="qocc_witness_SelectedIndexChanged" 
                                                        AutoPostBack="True" Visible="true" >
                                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                        
                                        </asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator29" 
                                                    runat="server" ControlToValidate="qocc_witness" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
                                                &nbsp; 
                                                <div runat="server" id="dvqocc_witness_extra"  visible="false">
													<ul>
													<li>
													<label for="qocc_witness_person_first_name">First Name:</label><input runat="server" type="text" name="qocc_witness_person_first_name" id="qocc_witness_person_first_name" />
													    </li>
													<li>
													<label for="qocc_witness_person_middle_name">Middle Name:</label><input runat="server" type="text" name="qocc_witness_person_middle_name" id="qocc_witness_person_middle_name" />
													</li>													<li>
													<label for="qocc_witness_person_last_name">Last Name:</label><input runat="server" type="text" name="qocc_witness_person_last_name" id="qocc_witness_person_last_name" />
													</li>
													<li>
													<label for="qocc_witness_person_nickname">Alias/Nickname:</label><input runat="server" type="text" name="qocc_witness_person_nickname" id="qocc_witness_person_nickname" />
													</li>
												
													<li>
													<label for="qocc_witness_person_dob">Date of Birth(e.g. 11/18/1984):</label><input runat="server" type="text" name="qocc_witness_person_dob"  id="qocc_witness_person_dob" />
													</li>
													<li>
													<label for="qocc_witness_person_ssn">Social Security Number(SSN):</label><input runat="server" type="text" name="qocc_witness_person_ssn"  id="qocc_witness_person_ssn" />
													</li>
													<li>
													<label for="qocc_witness_person_sex">Sex:</label>
														<select runat="server" name="qocc_witness_person_sex" id="qocc_witness_person_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
													<li>
													<label for="qocc_witness_person_home_phone">Home Phone:</label><input runat="server" type="text" name="qocc_witness_person_home_phone" id="qocc_witness_person_home_phone" />
													</li>
												
													<li>
													<label for="qocc_witness_person_cell_phone">Cell Phone:</label><input runat="server" type="text" name="qocc_witness_person_cell_phone" id="qocc_witness_person_cell_phone" />
													</li>
												</ul>
												</div><!-- info1 ends -->
									</li>
									<li>
												<label for="qocc_previous_report">Has this been previously reported to anyone?</label>
												<asp:DropDownList ID="qocc_previous_report" AutoPostBack="true" runat="server" 
                                                    onselectedindexchanged="qocc_previous_report_SelectedIndexChanged"  >
												        <asp:ListItem Value="">Please Select</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator79" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="qocc_previous_report"></asp:RequiredFieldValidator></span>
												<%--<select runat="server" name="qocc_previous_report"  class="required"  id="qocc_previous_report" >
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<div runat="server" id="dvqocc_previous_report_extra" visible="false" >
												<p>Who was this reported to?</p>
													<textarea id="qocc_previous_report_extra" runat="server" cols="20" rows="5"></textarea>
													<span id="charsLeftFour"></span>
												
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="dvqocc_previous_report_extra"></asp:RequiredFieldValidator></span>
                                               </div>
									</li>	
										<li>
												<label id="Label9" runat="server" for="qocc_previous_investigation">Has this subject 
                                                previously been investigated?</label>
												<%--<select runat="server" name="qocc_previous_investigation"  class="required"   id="qocc_previous_investigation">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<asp:DropDownList ID="qocc_previous_investigation_extra" AutoPostBack="true" runat="server" 
                                                    onselectedindexchanged="qocc_previous_investigation_extra_SelectedIndexChanged"  >
												        <asp:ListItem Value="">Please Select</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator80" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="qocc_previous_investigation_extra"></asp:RequiredFieldValidator></span>
												<div runat="server" visible="false" id="dvqocc_previous_investigation_extra"><p>Who 
                                                    previously investigated this complaint?</p>
													<textarea id="qocc_previous_investigation_extra_textarea" runat="server" cols="20" rows="5"></textarea>
													<span id="charsLeftFive"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="qocc_previous_investigation_extra_textarea"></asp:RequiredFieldValidator></span>
                                                </div>
									</li>							<li>
									<label for="qocc_when_occurred">When did this occur?</label>
										<textarea runat="server" id="qocc_when_occurred" rows="5" cols="20"></textarea>
									<span id="charsLeftSix"></span>
									</li>
									<li>
									<label for="qocc_incident_length">How long has it gone on</label>
										<textarea runat="server" id="qocc_incident_length" rows="5" cols="20"></textarea>
									<span id="charsLeftSeven"></span>
									</li>
									<li>
									<label for="qocc_describe_abuse">Complaint Narrative (Please Describe the Fraud or 
                                        Complaint):</label>
										<textarea runat="server" id="qocc_describe_abuse" class="required" cols="20" rows="5"></textarea>
									<span id="charsLeftEight"></span>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" 
                                            ErrorMessage="This Field is Required" ControlToValidate="qocc_describe_abuse"></asp:RequiredFieldValidator></span>
									</li>
											
								</ul>
									
							</div><!-- quality_of_care_complaint ends -->
							
		<!-- break between types of complaitns -->					
							
							<div runat="server" id="grant_contract_fraud_complaint" visible="false" >
							
								<ul>
									<li>
												<label for="gcfc_type">Type:</label>
												<select runat="server" name="gcfc_type" class="required" id="gcfc_type">
													<option value="">Please Select</option>
													<option value="grant">Grant</option>
													<option value="contract">Contract</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" 
                                                    ErrorMessage="This Field is Required " ControlToValidate="gcfc_type"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label for="gcfc_grant_number">Grant/Contract #(if known):</label>
											<input runat="server" type="text" name="gcfc_grant_number" id="gcfc_grant_number"  />
									
									</li>
									<li>
												<label for="gcfc_principle_investigator">Name of Principal 
                                                Investigator/Executive Director (if known):</label>
												<input runat="server" type="text" name="gcfc_principle_investigator" id="gcfc_principle_investigator" />
										
														
									</li>
									<li>
										<label for="gcfc_program_type">Program Type:</label>
												<select runat="server" name="gcfc_program_type" class="required" id="gcfc_program_type">
													<option value="">Please Select</option>
													
												<option value="Administration for Children & Families">Administration for Children &amp; 
                                                    Families (ACF)</option>
												<option value="Administration for Healthcare Research & Quality">Administration for 
                                                    Healthcare Research &amp; Quality (AHRQ)</option>
												<option value="Administration for Community Living">Administration for Community Living (ACL)</option>
												<option value="Agency for Toxic Substances & Disease Registry">Agency for Toxic 
                                                    Substances &amp; Disease Registry (ATSDR)</option>
												<option value="Centers for Disease Control & Prevention Programs">Centers for 
                                                    Disease Control &amp; Prevention Programs (CDC)</option>
												<option value="Center for Faith-based and Neighborhood Partnerships">Center for 
                                                    Faith-based and Neighborhood Partnerships (CFBNP)</option>
												<option value="Centers for Medicare & Medicaid Services">Centers for Medicare &amp; 
                                                    Medicaid Services (CMS)</option>
												<option value="Food & Drug Administration">Food &amp; Drug Administration (FDA)</option>
												<option value="Indian Health Service">Indian Health Service (IHS)</option>
												<option value="National Institutes of Health">National Institutes of Health (NIH)</option>
												<option value="National Coordinator for Health Information Technology">National 
                                                    Coordinator for Health Information Technology (ONC)</option>
												<option value="US Public Health Service">US Public Health Service (PHS)</option>
												<option value="Office of the secretary">Office of the secretary (OS) – including 
                                                    most staff divisions</option>
												<option value="Substance Abuse & Mental Health Services Administration ">Substance 
                                                    Abuse &amp; Mental Health Services Administration (SAMHSA) </option>
												<option value="Other">Other (please describe in narrative)</option>

												</select>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" 
                                            ErrorMessage="This Field is Required" ControlToValidate="gcfc_program_type"></asp:RequiredFieldValidator></span>
									</li>
										<li>
												<label for="gcfc_type_of_allegation">Type of Allegation:</label>
												<select runat="server" name="gcfc_type_of_allegation" class="required" id="gcfc_type_of_allegation">
													<option value="">Please Select</option>
													<option value="Theft/Misappropriation of Grant Funds">Theft/Misappropriation of 
                                                        Grant Funds </option>
													<option value="Bribes/Kickbacks">Bribes/Kickbacks</option>
													<option value="Conflicts of Interest">Conflicts of Interest</option>
													<option value="Misuse of Grant funds">Misuse of Grant funds</option>
													<option value="Other (Please describe in narrative)">Other (Please describe in 
                                                        narrative)</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="gcfc_type_of_allegation"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label for="gcfc_arra_program">Is this an ARRA Program</label>
												<select runat="server" name="gcfc_arra_program" class="required" id="gcfc_arra_program">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>
												<div id="gcfc_arra_program_extra" style="display: none;">
													<label for="gcfc_arra_program_select">Have you been retaliated against?</label>
													<select runat="server" name="gcfc_arra_program_select" class="required" id="gcfc_arra_program_select">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>
													<div id="dvgcfc_arra_program_extra_extra" style="display: none;">
													<label for="gcfc_arra_program_extra_extra">Please Describe the Retaliation:</label>
													<textarea id="gcfc_arra_program_extra_extra" runat="server" name="gcfc_arra_program_extra_extra" cols="20" rows="5"></textarea>
													<span id="charsLeftEleven"></span>
													</div>
												</div>
									            <span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="gcfc_arra_program_select" InitialValue="Please Select"></asp:RequiredFieldValidator></span>
									</li>	
									<li>
												<label for="gcfc_relationship">Your Relationship to Subject:</label>
												<select runat="server" name="qcfc_relationship" class="required" id="gcfc_relationship" >
													<option value="">Please Select</option>
													<option value="Employee/Consultant">Employee/Consultant</option>
													<option value="Spouse/Family Member">Spouse/Family Member</option>
													<option value="Other (Please describe in narrative)">Other (Please describe in 
                                                        narrative)</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="gcfc_relationship"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label for="gcfc_witness">Are there any other witnesses?</label>
												<asp:DropDownList ID="gcfc_witness" runat="server" 
                                                        onselectedindexchanged="gcfc_witness_SelectedIndexChanged" 
                                                        AutoPostBack="True" Visible="true" >
                                                        <asp:ListItem Value="">Please Select</asp:ListItem>
                                                        <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                                        <asp:ListItem Value="No">No</asp:ListItem>
                                        </asp:DropDownList>
                                                    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="gcfc_witness"></asp:RequiredFieldValidator></span>
												<%--<select runat="server" name="gcfc_witness" class="required" id="gcfc_witness">
													<option value="">Please Select</option>
													<option value="yes">Yes </option>
													<option value="no">No</option>
												</select>--%>
												<div id="gcfc_witness_extra" runat="server" visible="false">
													<ul>
													<li>
													<label for="gcfc_witness_person_first_name">First Name:</label><input runat="server" type="text" name="gcfc_witness_person_first_name" id="gcfc_witness_person_first_name" />
													</li>
													<li>
													<label for="gcfc_witness_person_middle_name">Middle Name:</label><input runat="server" type="text" name="gcfc_witness_person_middle_name" id="gcfc_witness_person_middle_name" />
													</li>
													<li>
													<label for="gcfc_witness_person_last_name">Last Name:</label><input runat="server" type="text" name="gcfc_witness_person_last_name" id="gcfc_witness_person_last_name" />
													</li>
													<li>
													<label for="gcfc_witness_person_nickname">Alias/Nickname:</label><input runat="server" type="text" name="gcfc_witness_person_nickname" id="gcfc_witness_person_nickname" />
													</li>
												
													<li>
													<label for="gcfc_witness_person_dob">Date of Birth(e.g. 11/18/1984):</label><input runat="server" type="text" name="gcfc_witness_person_dob"  id="gcfc_witness_person_dob" />
													</li>
													<li>
													<label for="gcfc_witness_person_ssn">Social Security Number(SSN):</label><input runat="server" type="text" name="gcfc_witness_person_ssn"  id="gcfc_witness_person_ssn" />
													</li>
													<li>
													<label for="gcfc_witness_person_sex">Sex:</label>
														<select runat="server" name="gcfc_witness_person_sex" id="gcfc_witness_person_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
													<li>
													<label for="gcfc_witness_person_home_phone">Home Phone:</label><input runat="server" type="text" name="gcfc_witness_person_home_phone" id="gcfc_witness_person_home_phone" />
													</li>
												
													<li>
													<label for="gcfc_witness_person_cell_phone">Cell Phone:</label><input runat="server" type="text" name="gcfc_witness_person_cell_phone" id="gcfc_witness_person_cell_phone" />
													</li>
												</ul>
											</div><!-- info1 ends -->									            
									</li>
											<li>
												<label for="gcfc_previous_report">Has this been previously reported to anyone?</label>
												<asp:DropDownList runat="server" ID="gcfc_previous_report" CssClass="required" 
                                                    AutoPostBack="true" 
                                                    onselectedindexchanged="gcfc_previous_report_SelectedIndexChanged" >
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator85" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="gcfc_previous_report"></asp:RequiredFieldValidator></span>
												<div id="dvgcfc_previous_report_extra" runat ="server" visible="false">
													<p>Who was this reported to?</p>
													<textarea id="gcfc_previous_report_extra" runat="server" cols="20" rows="5"></textarea>
													<span id="charsLeftTwelve"></span>												
									                <span><asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="gcfc_previous_report_extra"></asp:RequiredFieldValidator></span>
                                                </div>
									</li>	
										<li>
												<label for="gcfc_previous_investigation">Has this subject previously been 
                                                investigated?</label>
                                                <asp:DropDownList runat="server" ID="gcfc_previous_investigation" CssClass="required" 
                                                    AutoPostBack="true" 
                                                    onselectedindexchanged="gcfc_previous_investigation_SelectedIndexChanged" >
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<%--<select runat="server" name="gcfc_previous_report" class="required" id="gcfc_previous_investigation">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<div id="dvgcfc_previous_investigation_extra" runat="server" visible="false"><p>Who 
                                                    previously investigated this complaint?</p>
													<textarea id="gcfc_previous_investigation_extra" runat="server" cols="20" rows="5"></textarea>
													<span id="charsLeftThirteen"></span>
												</div>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="gcfc_previous_report"></asp:RequiredFieldValidator></span>
									</li>		
									<li>
									<label for="gcfc_describe_fraud">Complaint Narrative (Please Describe the Fraud or 
                                        Complaint): </label>
										<textarea runat="server" id="gcfc_describe_fraud" class="required" cols="20" rows="5"></textarea>
									<span id="charsLeftThirteenOne"></span>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                                            ErrorMessage="This Field is Required" 
                                            ControlToValidate="gcfc_describe_fraud"></asp:RequiredFieldValidator></span>
									</li>
									
									
										
								</ul>
							
								
							</div><!--  grant_contract_fraud_complaint ends -->
							
<!-- break between types of complaitns -->
							
							
							<div runat="server" id="criminal_activity_complaint" visible="false" >
						
								<ul>
									<li>
												<label for="cac_allegation_type">Allegation Type:</label>
												<select runat="server" name="cac_allegation_type" class="required" id="cac_allegation_type">
													<option value="">Please Select</option>
													<option value="crime">Crime committed by HHS Employee </option>
													<option value="misconduct">Gross Misconduct</option>
													<option value="mismanagement">Mismanagement</option>
													<option value="other">Other (Please describe in narrative)</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="cac_allegation_type"></asp:RequiredFieldValidator></span>
									</li>
									<li>
										<label for="cac_program_type">Program Type:</label>
										<asp:dropdownlist runat="server" ID="cac_program_type">
                                            <asp:ListItem Value="">Please Select</asp:ListItem>
                                            <asp:ListItem Value="Administration for Children & Families">Administration for Children &amp; Families  (ACF)</asp:ListItem>
                                            <asp:ListItem Value="Administration for Healthcare Research &amp; Quality">Administration for Healthcare Research &amp; Quality (AHRQ)</asp:ListItem>
                                            <asp:ListItem Value="Administration for Community Living">Administration for Community Living (ACL)</asp:ListItem>
                                            <asp:ListItem Value="Agency for Toxic Substances & Disease Registry">Agency for Toxic Substances &amp; Disease Registry (ATSDR)</asp:ListItem>
                                            <asp:ListItem Value="Assistant Secretary for Financial Resources">Assistant Secretary for Financial Resources (ASFR)</asp:ListItem>
                                            <asp:ListItem Value="Assistant Secretary for Administration ">Assistant Secretary for Administration (ASA)</asp:ListItem>
                                            <asp:ListItem value="Assistant Secretary for Health/Surgeon General">Assistant Secretary for Health/Surgeon General</asp:ListItem>
                                             <asp:ListItem  value="Assistant Secretary for Legislation">Assistant Secretary for Legislation (ASL)</asp:ListItem>
                                              <asp:ListItem value="Assistant Secretary for Public Affairs">Assistant Secretary for Public Affairs (ASPA)</asp:ListItem>
                                               <asp:ListItem value="Assistant Secretary for Planning And Evaluation">Assistant Secretary for Planning And Evaluation (ASPE)</asp:ListItem>    
                                            <asp:ListItem value="Assistant Secretary for Preparedness And Response (ASPR)">Assistant Secretary for Preparedness And Response (ASPR</asp:ListItem>
                                       <asp:ListItem value="Center for Faith-Based and Neighborhood Partnerships">Center for Faith-Based and Neighborhood Partnerships (CFBNP</asp:ListItem>
                                       <asp:ListItem value="Centers for Disease Control & Prevention Programs">Centers for Disease Control &amp; Prevention Programs (CDC)</asp:ListItem>
                                       <asp:ListItem value="Centers for Medicare & Medicaid Services">Centers for Medicare &amp; Medicaid Services  (CMS)</asp:ListItem>
                                       
                                       <asp:ListItem value="Departmental Appeals Board">Departmental Appeals Board (DAB)</asp:ListItem>
                                       <asp:ListItem value="Food & Drug Administration ">Food &amp; Drug Administration  (FDA)</asp:ListItem>
                                       <asp:ListItem value="Immediate Office Of The Secretary">Immediate Office Of The Secretary (OS)</asp:ListItem>
                                       <asp:ListItem value="Indian Health Service ">Indian Health Service (IHS)</asp:ListItem>
                                      <asp:Listitem value="Interngovernmental External Affairs">Interngovernmental External Affairs (IEA)</asp:ListItem>
											<asp:Listitem value="National Institutes Of Health">National Institutes Of Health (NIH)</asp:Listitem>
											<asp:Listitem value="National Coordinator for Health Information Technology">National Coordinator for Health Information Technology (ONC)</asp:Listitem>
											<asp:Listitem value="Office for Civil Rights ">Office for Civil Rights (OCR)</asp:Listitem>
											<asp:Listitem value="Office On Disability">Office On Disability (OD)</asp:Listitem>
											<asp:Listitem value="Office Of Inspector General ">Office Of Inspector General (OIG)</asp:Listitem>
											<asp:Listitem value="Office Of The General Counsel">Office Of The General Counsel (OGC)</asp:Listitem>
											<asp:Listitem value="Office Of Medicare Hearings And Appeals">Office Of Medicare Hearings And Appeals (OMHA)</asp:Listitem>
											<asp:Listitem value="Substance Abuse & Mental Health Services Administration ">Substance Abuse &amp; Mental Health Services Administration (SAMHSA)</asp:Listitem>
											<asp:Listitem value="US Public Health Service">US Public Health Service  (PHS)</asp:Listitem>
											<asp:Listitem value="Other">Other (Please describe in narrative)</asp:Listitem>
                                        </asp:dropdownlist>
											<%--	<select  name="cac_program_type" class="required" id="cac_program_type">
													<option value="">Please Select</option>
													<option value="Administration for Children & Families">Administration for Children & Families  (ACF)</option>
												<option value="Administration for Healthcare Research & Quality">Administration for Healthcare Research & Quality (AHRQ)</option>
												<option value="Administration for Community Living">Administration for Community Living (ACL)</option>
											<option value="Agency for Toxic Substances & Disease Registry">Agency for Toxic Substances & Disease Registry (ATSDR)</option>

											<option value="Assistant Secretary for Financial Resources">Assistant Secretary for Financial Resources (ASFR)</option>
											<option value="Assistant Secretary for Administration">Assistant Secretary for Administration (ASA)</option>
											<option value="Assistant Secretary for Health/Surgeon General">Assistant Secretary for Health/Surgeon General
											<option value="Assistant Secretary for Legislation">Assistant Secretary for Legislation (ASL)</option>
											<option value="Assistant Secretary for Public Affairs">Assistant Secretary for Public Affairs (ASPA)</option>
											<option value="Assistant Secretary for Planning And Evaluation">Assistant Secretary for Planning And Evaluation (ASPE)</option>
											<option value="Assistant Secretary for Preparedness And Response (ASPR)">Assistant Secretary for Preparedness And Response (ASPR)</option>
											<option value="Center for Faith-Based and Neighborhood Partnerships">Center for Faith-Based and Neighborhood Partnerships (CFBNP)</option>
											<option value="Centers for Disease Control & Prevention Programs">Centers for Disease Control & Prevention Programs (CDC)</option>
											<option value="Centers for Medicare & Medicaid Services">Centers for Medicare & Medicaid Services  (CMS)</option>
											<option value="Departmental Appeals Board">Departmental Appeals Board (DAB)</option>
											<option value="Food & Drug Administration ">Food & Drug Administration  (FDA)</option>
											<option value="Immediate Office Of The Secretary">Immediate Office Of The Secretary (OS)</option>
											<option value="Indian Health Service ">Indian Health Service (IHS)</option>
											<option value="Interngovernmental External Affairs">Interngovernmental External Affairs (IEA)</option>
											<option value="National Institutes Of Health">National Institutes Of Health (NIH)</option>
											<option value="National Coordinator for Health Information Technology">National Coordinator for Health Information Technology (ONC)</option>
											<option value="Office for Civil Rights ">Office for Civil Rights (OCR)</option>
											<option value="Office On Disability">Office On Disability (OD)</option>
											<option value="Office Of Inspector General ">Office Of Inspector General (OIG)</option>
											<option value="Office Of The General Counsel">Office Of The General Counsel (OGC)</option>
											<option value="Office Of Medicare Hearings And Appeals">Office Of Medicare Hearings And Appeals (OMHA)</option>
											<option value="Substance Abuse & Mental Health Services Administration ">Substance Abuse & Mental Health Services Administration (SAMHSA)</option>
											<option value="US Public Health Service">US Public Health Service  (PHS)</option>
											<option value="Other">Other (Please describe in narrative)</option>
                                            </select>--%>
									    
									    <asp:RequiredFieldValidator ID="RequiredFieldValidator62" runat="server" 
                                            ControlToValidate="cac_program_type" ErrorMessage="This Field is Required" 
                                            InitialValue="Please Select"></asp:RequiredFieldValidator>
									    
									    <label for="allegation">
                                       
                                        </label>
									    
									</li>
										<li>
												<label for="cac_relationship">Your Relationship to Subject:</label>
												<select runat="server" name="cac_relationship" class="required" id="cac_relationship">
													<option value="">Please Select</option>
													<option value="Fellow Employee">Fellow Employee</option>
													<option value="Spouse/Family Member">Spouse/Family Member</option>
													<option value="Other (Please describe in narrative)">Other (Please describe in 
                                                        narrative)</option>
												</select>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="cac_relationship"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label for="cac_witness">Are there any other witnesses?</label>
												<%--<select runat="server" name="cac_witness" class="required" id="cac_witness" >
													<option value="">Please Select</option>
													<option value="yes">Yes </option>
													<option value="no">No</option></select>
													<label for="allegation">--%>
													<asp:DropDownList 
                                                    ID="cac_witness" runat="server" 
                                                    onselectedindexchanged="cac_witness_SelectedIndexChanged" 
                                                    AutoPostBack="True">
                                                    <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                    </asp:DropDownList>
                                                </label>
                                                &nbsp;
												</select>
                                                <span><asp:RequiredFieldValidator ID="RequiredFieldValidator45" 
                                                    runat="server" ErrorMessage="This Field is Required" 
                                                    ControlToValidate="cac_witness"></asp:RequiredFieldValidator></span>
                                         <%--     <asp:UpdatePanel ID="up1" runat="server" UpdateMode="Conditional"><ContentTemplate> --%>
                                                  
                                                <div ID="cac_witness_extra" runat="server" visible="false">
                                                    <ul>
                                                        <li>
                                                            <label for="cac_witness_person_first_name">
                                                            First Name:</label><input ID="cac_witness_person_first_name" runat="server" 
                                                                name="cac_witness_person_first_name" type="text" /> 
                                                            </li>
                                                        <li>
                                                            <label for="cac_witness_person_middle_name">
                                                            Middle Name:</label><input ID="cac_witness_person_middle_name" runat="server" 
                                                                name="cac_witness_person_middle_name" type="text" /> </li>
                                                        <li>
                                                        <li>
                                                            <label for="cac_witness_person_last_name">
                                                            Last Name:</label><input ID="cac_witness_person_last_name" runat="server" 
                                                                name="cac_witness_person_last_name" type="text" /> </li>
                                                       
                                                            <label for="cac_witness_person_nickname">
                                                            Alias/Nickname:</label><input ID="cac_witness_person_nickname" runat="server" 
                                                                name="cac_witness_person_nickname" type="text" /> </li>
                                                        <li>
                                                            <label for="cac_witness_person_dob">
                                                            Date of Birth(e.g. 11/18/1984):</label><input ID="cac_witness_person_dob" 
                                                                runat="server" name="cac_witness_person_dob" type="text" /> </li>
                                                        <li>
                                                            <label for="cac_witness_person_ssn">
                                                            Social Security Number(SSN):</label><input ID="cac_witness_person_ssn" 
                                                                runat="server" name="cac_witness_person_ssn" type="text" /> </li>
                                                        <li>
                                                            <label for="cac_witness_person_sex">
                                                            Sex:</label>
                                                            <select ID="cac_witness_person_sex" runat="server" 
                                                                name="cac_witness_person_sex">
                                                                <option value="">Please Select</option>
                                                                <option value="male">Male</option>
                                                                <option value="female">Female</option>
                                                            </select> </li>
                                                        <li>
                                                            <label for="cac_witness_person_home_phone">
                                                            Home Phone:</label><input ID="cac_witness_person_home_phone" runat="server" 
                                                                name="cac_witness_person_home_phone" type="text" /> </li>
                                                        <li>
                                                            <label for="cac_witness_person_cell_phone">
                                                            Cell Phone:</label><input ID="cac_witness_person_cell_phone" runat="server" 
                                                                name="cac_witness_person_cell_phone" type="text" /> </li>
                                                    </ul>
                                                </div><%--</ContentTemplate>
                                                  <Triggers>
                                                      <asp:AsyncPostBackTrigger ControlID="cac_witness" 
                                                          EventName="SelectedIndexChanged" />
                                                  </Triggers>
                                                </asp:UpdatePanel>--%>
                                                
                                                    <!-- info about witness ends -->
									</li>
									<li>
												<label for="cac_previous_report">Has this been previously reported to anyone?</label>
												<asp:DropDownList runat="server" ID="cac_previous_report" CssClass="required" 
                                                    AutoPostBack="true" 
                                                    onselectedindexchanged="cac_previous_report_SelectedIndexChanged" >
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator86" runat="server" 
                                                   ErrorMessage="This Field is Required" ControlToValidate="cac_previous_report" ></asp:RequiredFieldValidator></span>
                                                   
												<div runat="server" id="dvcac_previous_report" visible="false">
												<p>Who was this reported to?</p>
													<textarea id="cac_previous_report_textarea" runat="server" cols="20" rows="5"></textarea>
													<span id="charsLeftFourteen"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator87" runat="server" 
                                                   ErrorMessage="This Field is Required" ControlToValidate="cac_previous_report_textarea" ></asp:RequiredFieldValidator></span>
												</div>
									         
									</li>	
									<li>
									<label for="cac_retaliation">Have you been retaliated against?</label>
									              <asp:DropDownList runat="server" ID="cac_retaliation" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="cac_retaliation_SelectedIndexChanged" 
                                                     >
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
													<div runat="server" id="dvcac_retaliation" visible="false">
													<textarea runat="server" id="cac_retaliation_textarea" cols="20" rows="5"></textarea>
													<span id="charsLeftFifteen"></span>
													</div>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" 
                                            ErrorMessage="This Field is Required" ControlToValidate="cac_retaliation"></asp:RequiredFieldValidator></span>
									</li>
									<li>
												<label for="cac_previous_investigation">Has this subject previously been 
                                                investigated?</label>
												   <asp:DropDownList runat="server" ID="cac_previous_investigation" CssClass="required" 
                                                    AutoPostBack="true" 
                                                    onselectedindexchanged="cac_previous_investigation_SelectedIndexChanged" > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<%--<select runat="server" name="cac_previous_investigation" class="required" id="cac_previous_investigation">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<div runat="server" id="dvcac_previous_investigation_extra" visible="false" ><p>Who 
                                                    previously investigated this complaint?</p>
													<textarea runat="server" id="cac_previous_investigation_textarea" cols="20" rows="5"></textarea>
													<span id="charsLeftSixteen"></span>
												</div>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="cac_previous_investigation"></asp:RequiredFieldValidator></span>
									</li>		
										<li>
									<label for="cac_when_occurred">When did this occur?</label>
										<textarea runat="server" id="cac_when_occurred" cols="20" rows="5"></textarea>
									<span id="charsLeftSeventeen"></span>
									</li>
									<li>
									<label for="cac_incident_length">How long has it been goin on?</label>
										<textarea runat="server" id="cac_incident_length" cols="20" rows="5"></textarea>
									<span id="charsLeftEigthteen"></span>
									</li>
									<li>
									<label for="cac_describe_abuse">Complaint Narrative (Please Describe the Fraud or 
                                        Complaint):</label>
										<textarea runat="server" id="cac_describe_abuse" class="required" cols="20" rows="5"></textarea>
									<span id="charsLeftNineteen"></span>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" 
                                            ErrorMessage="This Field is Required" 
                                            ControlToValidate="cac_describe_abuse"></asp:RequiredFieldValidator></span>
									</li>
											
								</ul>
								
							</div><!--  criminal_activity_complaint ends -->
							
<!-- break between types of complaitns -->
							
							
							<div runat="server" id="medical_identity_theft_complaint" visible="false">
						
							<ul>
									<li>
												<label for="mitc_witness">Are there any other witnesses?</label>
												<asp:DropDownList runat="server" ID="mitc_witness" CssClass="required" 
                                                    AutoPostBack="true" 
                                                    onselectedindexchanged="mitc_witness_SelectedIndexChanged" > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="mitc_witness"></asp:RequiredFieldValidator></span>
												<div runat="server" id="dvmitc_witness_extra" visible="false">
													<ul>
													<li>
													<label for="mitc_witness_person_first_name">First Name:</label><input type="text" name="mitc_witness_person_first_name" id="mitc_witness_person_first_name" />
													</li>
													<li>
													<label for="mitc_witness_person_middle_name">Middle Name:</label><input type="text" name="mitc_witness_person_middle_name" id="mitc_witness_person_middle_name" />
													</li>
													<li>
													<label for="mitc_witness_person_last_name">Last Name:</label><input type="text" name="mitc_witness_person_last_name" id="mitc_witness_person_last_name" />
													</li>
													<li>
													<label for="mitc_witness_person_nickname">Alias/Nickname:</label><input type="text" name="mitc_witness_person_nickname" id="mitc_witness_person_nickname" />
													</li>
												
													<li>
													<label for="mitc_witness_person_dob">Date of Birth(e.g. 11/18/1984):</label><input type="text" name="mitc_witness_person_dob"  id="mitc_witness_person_dob" />
													</li>
													<li>
													<label for="mitc_witness_person_ssn">Social Security Number(SSN):</label><input type="text" name="mitc_witness_person_ssn"  id="mitc_witness_person_ssn" />
													</li>
													<li>
													<label for="mitc_witness_person_sex">Sex:</label>
														<select name="mitc_witness_person_sex" id="mitc_witness_person_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
													<li>
													<label for="mitc_witness_person_home_phone">Home Phone:</label><input type="text" name="mitc_witness_person_home_phone" id="mitc_witness_person_home_phone" />
													</li>
												
													<li>
													<label for="mitc_witness_person_cell_phone">Cell Phone:</label><input type="text" name="mitc_witness_person_cell_phone" id="mitc_witness_person_cell_phone" />
													</li>
												</ul>
											</div><!-- info about witness ends -->
									            
									</li>
									<li>
												<label for="mitc_previous_report">Has this been previously reported to anyone?</label>
												<asp:DropDownList runat="server" ID="mitc_previous_report" CssClass="required" 
                                                    AutoPostBack="true" 
                                                    onselectedindexchanged="mitc_previous_report_SelectedIndexChanged" > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<%--<select runat="server" name="mitc_previous_report" class="required" id="mitc_previous_report">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<div runat="server" visible="false" id="dvmitc_previous_report_extra" >
												<p>Who was this reported to?</p>
													<textarea id="mitc_previous_report_extra" runat="server" cols="20" rows="5"></textarea>
													<span id="charsLeftTwenty"></span>
												</div>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="mitc_previous_report"></asp:RequiredFieldValidator></span>
									</li>	
									<li>
									<label for="mitc_when_occurred">When did this occur?</label>
										<textarea runat="server" id="mitc_when_occurred_text_area" cols="20" rows="5"></textarea>
									<span id="charsLeftTwentyOne"></span>
									</li>
										<li>
									<label for="mitc_incident_length">How long has this been going on</label>
										<textarea runat="server" id="mitc_incident_length" cols="20" rows="5"></textarea>
									<span id="charsLeftTwentyTwo"></span>
									</li>
									<li>
									<label for="mitc_describe_medical_id_theft">Complaint Narrative (Please Describe the 
                                        Fraud or Complaint):</label>
										<textarea runat="server" id="mitc_describe_medical_id_theft" cols="20" rows="5"></textarea>
									<span id="charsLeftTwentyThree"></span>
									</li>
									
							</ul>		
							
							</div><!--  medical_identity_theft_complaint ends -->
							
<!-- break between types of complaitns -->				
								
	<!-- 	Federal Child Support Complaint -->
	<div runat="server"  id="federal_child_support_complaint" visible="false">
						
								<ul>
								<li>
								<label for="fcsc_amount">Does the person currently owe more than $5,000 in child 
                                    support?</label>
								                <asp:DropDownList runat="server" ID="fcsc_amount_extra" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="fcsc_amount_extra_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												 <span><asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" 
                                        ErrorMessage="This Field is Required" ControlToValidate="fcsc_amount_extra"></asp:RequiredFieldValidator></span>
													<div runat="server" id="dvfcsc_amount_extra" visible="false">
														<label for="fcsc_exact_amount">Estimated Amount($):</label><input type="text" name="fcsc_exact_amount" id="fcsc_exact_amount" runat="server" />
													</div>
								</li>		
								<li>
								<label for="fcsc_reside">Does the delinquent Parent reside in a different 
                                    state/country than the child?</label>
								                <asp:DropDownList runat="server" ID="fcsc_reside_extra_if" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="fcsc_reside_extra_if_SelectedIndexChanged"> 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator67" runat="server" 
                                        ErrorMessage="This Field is Required" ControlToValidate="fcsc_reside_extra_if"></asp:RequiredFieldValidator></span>
                                        
													<div runat="server" id="dvfcsc_reside_extra" visible="false">
														<label for="fcsc_reside_extra">State/Country:</label><input type="text" name="fcsc_reside_extra" id="fcsc_reside_extra" runat="server" />
													</div>			
								</li>
								<li>
								<label for="fcsc_valid_court">Is there a valid court order for child support?</label>
												<asp:DropDownList runat="server" ID="fcsc_valid_court_extra" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="fcsc_valid_court_extra_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" 
                                        ErrorMessage="This Field is Required" ControlToValidate="fcsc_valid_court_extra"></asp:RequiredFieldValidator></span>
													<div id="dvfcsc_valid_court_extra" runat="server" visible="false" >
														<ul>
															<li>
														<label for="fcsc_valid_court_name">The name of the court:</label><input type="text" name="fcsc_valid_court_name" id="fcsc_valid_court_name" runat="server" />	
															</li>
															<li>
														<label for="fcsc_valid_case_number">Court case Number:</label><input type="text" name="fcsc_valid_case_number" id="fcsc_valid_case_number" runat="server" />
															</li>
														</ul>
													</div>
													
								</li>
									<li>
								<label for="fcsc_underage">Is the child/children under 18 years of age?</label>
												<select runat="server" name="fcsc_underage" class="required" id="fcsc_underage">
													<option value="">Please Select</option>
													<option value="yes">Yes </option>
													<option value="no">No</option>
												</select>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" 
                                            ErrorMessage="This Field is Required" ControlToValidate="fcsc_underage"></asp:RequiredFieldValidator></span>
									</li>
								
							
									<li>
												<label for="fcsc_witness">Are there any other witnesses?</label>
												<%--<select runat="server" name="fcsc_witness" class="required" id="fcsc_witness">
													<option value="">Please Select</option>
													<option value="yes">Yes </option>
													<option value="no">No</option>
												</select>--%>
												<asp:DropDownList runat="server" ID="fcsc_witness_extra" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="fcsc_witness_extra_SelectedIndexChanged"> 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" 
                                        ErrorMessage="This Field is Required" ControlToValidate="fcsc_witness_extra"></asp:RequiredFieldValidator></span>
												<div runat="server" visible="false" id="dvfcsc_witness_extra" >
													<ul>
													<li>
													<label for="fcsc_witness">First Name:</label><input type="text" name="fcsc_witness_person_first_name" id="fcsc_witness_person_first_name" runat="server" />
													</li>
													<li>
													<label for="fcsc_witness_person_middle_name">Middle Name:</label><input type="text" name="fcsc_witness_person_middle_name" id="fcsc_witness_person_middle_name" runat="server" />
													</li>
													<li>
													<label for="fcsc_witness">Last Name:</label><input type="text" name="fcsc_witness_person_last_name" id="fcsc_witness_person_last_name" runat="server" />
													</li>
													<li>
													<label for="fcsc_witness_person_nickname">Alias/Nickname:</label><input type="text" name="fcsc_witness_person_nickname" id="fcsc_witness_person_nickname" runat="server" />
													</li>
												
													<li>
													<label for="fcsc_witness_person_dob">Date of Birth(e.g. 11/18/1984):</label><input type="text" name="fcsc_witness_person_dob"  id="fcsc_witness_person_dob" runat="server" />
													</li>
													<li>
													<label for="fcsc_witness_person_ssn">Social Security Number(SSN):</label><input type="text" name="fcsc_witness_person_ssn"  id="fcsc_witness_person_ssn" runat="server" />
													</li>
													<li>
													<label for="fcsc_witness_person_sex">Sex:</label>
														<select name="fcsc_witness_person_sex" id="fcsc_witness_person_sex" runat="server">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
													<li>
													<label for="fcsc_witness_person_home_phone">Home Phone:</label><input type="text" name="fcsc_witness_person_home_phone" id="fcsc_witness_person_home_phone" runat="server" />
													</li>
												
													<li>
													<label for="fcsc_witness_person_cell_phone">Cell Phone:</label><input type="text" name="fcsc_witness_person_cell_phone" id="fcsc_witness_person_cell_phone" runat="server" />
													</li>
												</ul>
											</div><!-- info about witness ends -->
									           
									</li>
									<li>
												<label for="fcsc_previous_report">Has this been previously reported to anyone?</label>
												<asp:DropDownList runat="server" ID="fcsc_previous_report" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="fcsc_previous_report_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												 <span><asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="fcsc_previous_report"></asp:RequiredFieldValidator></span>
												<div id="dvfcsc_previous_report_extra" runat="server" visible="false">
												<p>Who was this reported to?</p>
													<textarea runat="server" id ="fcsc_previous_report_extra_textarea" cols="20" rows="5"></textarea>
												</div>        
									</li>	
									<li>
												<label for="fcsc_previous_investigation">Has this subject previously been 
                                                investigated?</label>
												<asp:DropDownList runat="server" ID="fcsc_previous_investigation" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="fcsc_previous_investigation_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="fcsc_previous_investigation"></asp:RequiredFieldValidator></span>
												<div id="dvfcsc_previous_investigation" runat="server" visible="false"><p>To Whom?</p>
													<textarea runat="server" id="fcsc_previous_investigation_textarea" cols="20" rows="5"></textarea>
													
												</div>

									</li>
									
									<li>
												<label for="fcsc_warrant">Is there a warrant for the subject&#39;s arrest?</label>
												<%--<select runat="server" name="fcsc_warrant" class="required" id="fcsc_warrant">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<asp:DropDownList runat="server" ID="fcsc_investigation_extra" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="fcsc_investigation_extra_SelectedIndexChanged"> 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" 
                                                    ErrorMessage="This Field is Required" 
                                                    ControlToValidate="fcsc_investigation_extra"></asp:RequiredFieldValidator></span>
												<div id="dvfcsc_investigation_extra" runat="server" visible="false"><p>Name of 
                                                    person/agency previously conducting investigation</p>
													<textarea runat="server" id ="fcsc_investigation_extra_textarea" cols="20" rows="5"></textarea>
												
												</div>
									            <span><asp:RequiredFieldValidator ID="RequiredFieldValidator58" runat="server" 
                                                    ErrorMessage="This Field is Required" ControlToValidate="fcsc_investigation_extra_textarea"></asp:RequiredFieldValidator></span>
									</li>
										<li>
									<label for="fcsc_describe_activity">Additional Information:</label>
										<textarea runat="server" id="fcsc_describe_activity" cols="20" rows="5"></textarea>
	
									</li>
								
									</ul>
									
							</div><!-- Federal Child Support Complaint ends -->
	
	<!-- break between types of complaitns -->
	                    <!-- agent_complaint start -->					
	                    <div runat="server" id="agent_complaint" visible="false" >
						
								<ul>
								<li>
										<label for="ac_program_type">Program Type:</label>
												<select runat="server" name="ac_program_type" class="required" id="ac_program_type">
													<option value="">Please Select</option>												
													
													<option value="Temporary Assistance to Needy Families">Temporary Assistance to Needy 
                                                        Families</option>
		                                            <option value="Head Start">Head Start</option>
		                                            <option value="Office of Child Support Enforcement">Office of Child Support 
                                                        Enforcement</option>
		                                            <option value="Office of the Secretary">Office of the Secretary</option>
		                                            <option value="Administration for Community Living">Administration for Community Living (ACL)</option>
		                                            <option value="Administration for Children and Families">Administration for Children 
                                                        and Families</option>
		                                            <option value="Agency for Healthcare Quality and Research">Agency for Healthcare 
                                                        Quality and Research</option>
		                                            <option value="Agency for Toxic Substances and Disease Registry">Agency for Toxic 
                                                        Substances and Disease Registry</option>
		                                            <option value="Centers for Disease Control and Prevention">Centers for Disease 
                                                        Control and Prevention</option>
		                                            <option value="Centers for Medicare and Medicaid Services">Centers for Medicare and 
                                                        Medicaid Services</option>
		                                            <option value="Food and Drug Administration">Food and Drug Administration</option>
		                                            <option value="Healthcare Resources and Services Administration">Healthcare 
                                                        Resources and Services Administration</option>
		                                            <option value="Indian Health Service">Indian Health Service</option>
		                                            <option value="National Institutes of Health (please specify which Institute in your narrative description)">
                                                        National Institutes of Health (please specify which Institute in your narrative 
                                                        description)</option>
		                                            <option value="Substance Abuse and Mental Health Services Administration">Substance 
                                                        Abuse and Mental Health Services Administration</option>
		                                            <option value="US Public Health Service Commissioned Corps">US Public Health Service 
                                                        Commissioned Corps</option>
		                                            <option value="Other (please explain in your narrative description)">Other (please 
                                                        explain in your narrative description)</option>
												</select>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                                            ControlToValidate="ac_program_type" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
									</li>
														<li>
												<label for="ac_witness">Are there any other witnesses?</label>
												 <asp:DropDownList runat="server" ID="ac_witness" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="ac_witness_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator70" runat="server" 
                                            ControlToValidate="ac_witness" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
												<%--<select runat="server" name="ac_witness" class="required" id="ac_witness">
													<option value="">Please Select</option>
													<option value="yes">Yes </option>
													<option value="no">No</option>
												</select>--%>
												<div runat ="server" id="dvac_witness_extra" visible="false">
													<ul>
													<li>
													<label for="ac_witness_person_first_name">First Name:</label><input runat="server" type="text" name="ac_witness_person_first_name" id="ac_witness_person_first_name" />
													</li>
                                                    <li>
													<label for="ac_witness_person_middle_name">Middle Name:</label><input runat="server" type="text" name="ac_witness_person_middle_name" id="ac_witness_person_middle_name" />
													</li>
													<li>
													<label for="ac_witness_person_last_name">Last Name:</label><input runat="server" type="text" name="ac_witness_person_last_name" id="ac_witness_person_last_name" />
													</li>
													
													<li>
													<label for="ac_witness_person_nickname">Alias/Nickname:</label><input runat="server" type="text" name="ac_witness_person_nickname" id="ac_witness_person_nickname" />
													</li>
												
													<li>
													<label for="ac_witness_person_dob">Date of Birth(e.g. 11/18/1984):</label><input runat="server" type="text" name="ac_witness_person_dob"  id="ac_witness_person_dob" />
													</li>
													<li>
													<label for="ac_witness_person_ssn">Social Security Number(SSN):</label><input runat="server" type="text" name="ac_witness_person_ssn"  id="ac_witness_person_ssn" />
													</li>
													<li>
													<label for="ac_witness_person_sex">Sex:</label>
														<select runat="server" name="ac_witness_person_sex" id="ac_witness_person_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
													<li>
													<label for="ac_witness_person_home_phone">Home Phone:</label><input runat="server" type="text" name="ac_witness_person_home_phone" id="ac_witness_person_home_phone" />
													</li>
												
													<li>
													<label for="ac_witness_person_cell_phone">Cell Phone:</label><input runat="server" type="text" name="ac_witness_person_cell_phone" id="ac_witness_person_cell_phone" />
													</li>
												</ul>
											</div><!-- info about witness ends -->
									</li>
									<li>
												<label for="ac_previous_report">Has this been previously reported to anyone?</label>
												 <asp:DropDownList runat="server" ID="ac_previous_report" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="ac_previous_report_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span id="Span3"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator66" runat="server" 
                                            ControlToValidate="ac_previous_report" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
												<%--<select runat="server" name="ac_previous_report" class="required" id="ac_previous_report">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<div runat="server"  id="dvac_previous_report_extra" visible="false">
												<p>Who was this reported to?</p>
													<textarea id="ac_previous_report_extra" runat="server" visible="true" cols="20" rows="5"></textarea>
													<span id="charsLeftTwentySeven"></span><span id="Span4"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator73" runat="server" 
                                            ControlToValidate="ac_previous_report_extra" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
												</div>
									</li>	
									<li>
												<label for="ac_previous_investigation">Has this subject previously been 
                                                investigated?</label>
												 <asp:DropDownList runat="server" ID="ac_previous_investigation" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="ac_previous_investigation_SelectedIndexChanged" 
                                                   >             
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList><span id="Span2"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator65" runat="server" 
                                            ControlToValidate="ac_previous_investigation" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
												<%--<select name="ac_previous_report" class="required" id="ac_previous_investigation">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<div runat="server" id="ac_previous_investigation_extra" visible="false"><p>Who 
                                                    previously investigated this complaint?</p>
													<textarea runat="server" id="ac_previous_investigation_textarea" cols="20" rows="5"></textarea>
													<span id="charsLeftTwentyEight"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                                            ControlToValidate="ac_previous_investigation_extra" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
												</div>
									</li>
										<li>
									<label for="ac_describe_activity">Complaint Narrative (Please Describe the Fraud or 
                                            Complaint):</label>
										<textarea runat="server" id="ac_describe_activity_textarea" cols="20" rows="5"></textarea>
									<span id="charsLeftTwentyNine"></span><span id="Span1"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator64" runat="server" 
                                            ControlToValidate="ac_describe_activity_textarea" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
									</li>
									
									</ul>
								
								
									
							</div><!-- agent_complaint ends -->	
<!-- break between types of complaitns -->							
							<!-- other_complaint -->
							<div runat="server" id="other_complaint" visible="false" >
						
								<ul>
								<li>
										<label for="oc_program_type">Program Type:</label>
												<select runat="server" name="oc_program_type" class="required" id="oc_program_type">
													<option value="">Please Select</option>
													
												<option value="Administration for Children & Families">Administration for Children &amp; 
                                                    Families (ACF)</option>
												<option value="Administration for Healthcare Research & Quality">Administration for 
                                                    Healthcare Research &amp; Quality (AHRQ)</option>
												<option value="Administration for Community Living">Administration for Community Living (ACL)</option>
												<option value="Agency for Toxic Substances & Disease Registry">Agency for Toxic 
                                                    Substances &amp; Disease Registry (ATSDR)</option>
												<option value="Centers for Disease Control & Prevention Programs">Centers for 
                                                    Disease Control &amp; Prevention Programs (CDC)</option>
												<option value="Center for Faith-based and Neighborhood Partnerships">Center for 
                                                    Faith-based and Neighborhood Partnerships (CFBNP)</option>
												<option value="Centers for Medicare & Medicaid Services">Centers for Medicare &amp; 
                                                    Medicaid Services (CMS)</option>
												<option value="Food & Drug Administration">Food &amp; Drug Administration (FDA)</option>
												<option value="Indian Health Service">Indian Health Service (IHS)</option>
												<option value="National Institutes of Health">National Institutes of Health (NIH)</option>
												<option value="National Coordinator for Health Information Technology">National 
                                                    Coordinator for Health Information Technology (ONC)</option>
												<option value="US Public Health Service">US Public Health Service (PHS)</option>
												<option value="Office of the secretary">Office of the secretary (OS) – including 
                                                    most staff divisions</option>
												<option value="Substance Abuse & Mental Health Services Administration ">Substance 
                                                    Abuse &amp; Mental Health Services Administration (SAMHSA) </option>
												<option value="Other">Other (please describe in narrative)</option>
												</select>
									    <span><asp:RequiredFieldValidator ID="RequiredFieldValidator63" runat="server" 
                                            ControlToValidate="oc_program_type" ErrorMessage="This Field is Required"></asp:RequiredFieldValidator></span>
									</li>
														<li>
												<label for="oc_witness">Are there any other witnesses?</label>
												<%--<select runat="server" name="oc_witness" class="required" id="oc_witness">
													<option value="">Please Select</option>
													<option value="yes">Yes </option>
													<option value="no">No</option>
												</select>--%>
												<asp:DropDownList runat="server" ID="oc_witness_extra" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="oc_witness_extra_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<div id="dvoc_witness_extra" runat="server" visible="false">
													<ul>
													<li>
													<label for="oc_witness">First Name:</label><input runat="server" type="text" name="oc_witness_person_first_name" id="oc_witness_person_first_name" />
													</li>
													<li>
													<label for="oc_witness_person_middle_name">Middle Name:</label><input runat="server" type="text" name="oc_witness_person_middle_name" id="oc_witness_person_middle_name" />
													</li>
													<li>
													<label for="oc_witness">Last Name:</label><input type="text" runat="server" name="oc_witness_person_last_name" id="oc_witness_person_last_name" />
													</li>
													<li>
													<label for="oc_witness_person_nickname">Alias/Nickname:</label><input runat="server" type="text" name="oc_witness_person_nickname" id="oc_witness_person_nickname" />
													</li>
												
													<li>
													<label for="oc_witness_person_dob">Date of Birth(e.g. 11/18/1984):</label><input runat="server" type="text" name="oc_witness_person_dob"  id="oc_witness_person_dob" />
													</li>
													<li>
													<label for="oc_witness_person_ssn">Social Security Number(SSN):</label><input runat="server" type="text" name="oc_witness_person_ssn"  id="oc_witness_person_ssn" />
													</li>
													<li>
													<label for="oc_witness_person_sex">Sex:</label>
														<select runat="server" name="oc_witness_person_sex" id="oc_witness_person_sex">
															<option value="">Please Select</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
														</select>
													</li>
													<li>
													<label for="oc_witness_person_home_phone">Home Phone:</label><input type="text" runat="server" name="oc_witness_person_home_phone" id="oc_witness_person_home_phone" />
													</li>
												
													<li>
													<label for="oc_witness_person_cell_phone">Cell Phone:</label><input type="text" runat="server" name="oc_witness_person_cell_phone" id="oc_witness_person_cell_phone" />
													</li>
												</ul>
											</div><!-- info about witness ends -->
									                        <span>
                                                            
									</li>
									<li>
												<label for="oc_previous_report">Has this been previously reported to anyone?</label>
												<%--<select  runat="server" name="oc_previous_report" class="required" id="oc_previous_report">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<asp:DropDownList runat="server" ID="oc_previous_report" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="oc_previous_report_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<span><asp:RequiredFieldValidator ID="RequiredFieldValidator75" runat="server" 
                                                               ErrorMessage="This Field is Required" ControlToValidate="oc_previous_report" ></asp:RequiredFieldValidator></span>
												<div id="dvoc_previous_report_extra" runat="server" visible="false">
												<p>Who was this reported to?</p>
													<textarea id="ReportedTo_textarea" runat="server" cols="20" rows="5"></textarea>
													<span id="charsLeftTwentyFour"></span><asp:RequiredFieldValidator ID="RequiredFieldValidator60" runat="server" 
                                                   ErrorMessage="This Field is Required" ControlToValidate="ReportedTo_textarea" ></asp:RequiredFieldValidator></span>
												</div>
									            <span>
                                                
									</li>	
									<li>
												<label for="oc_previous_investigation">Has this subject previously been 
                                                investigated?</label>
												<%--<select runat="server" name="oc_previous_investigation" class="required" id="oc_previous_investigation">
													<option value="">Please Select</option>
													<option value="yes">Yes</option>
													<option value="no">No</option>
												</select>--%>
												<asp:DropDownList runat="server" ID="oc_previous_investigation" CssClass="required" 
                                                    AutoPostBack="true" onselectedindexchanged="oc_previous_investigation_SelectedIndexChanged" 
                                                   > 
            
												  <asp:ListItem Value="">Please Select</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
												</asp:DropDownList>
												<div id="dvoc_previous_investigation_extra" runat="server" visible="false"><p>Who 
                                                    previously investigated this complaint?</p>
													<textarea runat="server" id="oc_previous_investigation_extra_textarea" cols="20" rows="5"></textarea>
													<span id="charsLeftTwentyFive"></span>
												
									                <span><asp:RequiredFieldValidator ID="RequiredFieldValidator61" runat="server" 
                                                   ErrorMessage="This Field is Required" 
                                                    ControlToValidate="oc_previous_investigation_extra_textarea" ></asp:RequiredFieldValidator></span>
                                                </div>
									</li>
										<li>
									<label for="oc_describe_activity">Complaint Narrative (Please Describe the Fraud or 
                                            Complaint):</label>
										<textarea runat="server" id="oc_describe_activity_textarea" cols="20" rows="5"></textarea>
									<span id="charsLeftTwentySix"></span><span><asp:RequiredFieldValidator ID="RequiredFieldValidator76" runat="server" 
                                                   ErrorMessage="This Field is Required" 
                                                    ControlToValidate="oc_describe_activity_textarea" ></asp:RequiredFieldValidator></span>
									</li>
									
									</ul>
									
							</div><!-- other_complaint ends -->
							</div>
							</div><!-- step4 ends -->
							</ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="type_of_complaint" 
                                            EventName="SelectedIndexChanged" />
                                    </Triggers>
                                    </asp:UpdatePanel>
                            
							
						
							</div><!-- fieldWrapper ends -->
						
							
									 <!-- step 5 -->
									 
									<div runat="server" id="oc_uploadInput" visible="false">
									<%--<div id="step_visualization">
									<span id="Span5" class="visualizationSad">Step 1</span> -  
									<span id="Span6" class="visualizationSad">Step 2</span> -
									<span id="Span7" class="visualizationSad">Step 3</span> -
									<span id="Span8" class="visualization">Step 4</span> 
								
								</div>--%>
									    <label for="oc_fileupload">File Upload(.doc, .pdf, .rtf )</label>
									  <table>
                                        <tr><td style="border-top:thick double white" >
									    <asp:FileUpload ID="oc_fileupload1" runat="server" EnableViewState="true" />
                                        </td></tr>									
									    <tr><td style="border-top:thick double white" >
									    <asp:FileUpload ID="oc_fileupload2" runat="server" EnableViewState="true" />
                                        </td></tr>
                                        <tr><td style="border-top:thick double white" >
                                        <asp:FileUpload ID="oc_fileupload3" runat="server" EnableViewState="true" />
                                        </td></tr>
                                        <tr><td style="border-top:thick double white" >
                                        <asp:FileUpload ID="oc_fileupload4" runat="server" EnableViewState="true" />
                                        </td></tr>
                                        <tr><td style="border-top:thick double white" >
                                        <asp:FileUpload ID="oc_fileupload5" runat="server" EnableViewState="true" />
                                        </td></tr>
								      </table>
   
                                    <asp:Label ID="lblUpload" runat="server" CssClass="sizeLimit" visible="false"></asp:Label>
									<label>Due to security issues, OIG Hotline Operations cannot accept ".zip" files and total file size not exceed 10 MB.</label>
								      </div>
									
									
								 <!-- step 5 ends -->
							   <!-- congrats ! -->
								 
								 <!-- congrats end -->
								
							   
								<%--<input class="navigation_button" id="next" onclick=""  value="Submit" type="submit" />--%>
					
<!-- The solution was correct -->     
 


							<label for="allegation">
                            <asp:Button ID="btnNext" runat="server"  Enabled="true"  Text="Next" onclick="btnNext_Click1" /> 
							</label>
							    
						 <div style="margin-top:10px">
							    <asp:Button runat="server" ID="btnSubmit" Text="Submit Fraud Report" 
                                    CssClass="navigation_button"  Visible="false" onclick="btnSubmit_Click"/></div>

					</div>
					</div>
					
				</div> <!-- leftContentInterior ends -->	
			</div>	<!-- leftSideInterior ends -->

			<div id="rightSide">
			 <!-- #include virtual="/layout/im-looking-for.asp" -->
				<!-- #include virtual="/layout/sub-navigation/subnavigation-fraud.asp" -->
				<!-- #include virtual="/layout/exclusions-database.asp" -->
				<!-- #include virtual="/layout/report-fraud.asp" -->
				<div class="clearPadding"></div>
				<br />
					<br />
					<br />
					<br />
					<br />	
			</div><!-- rightSide ends -->
			<div class="clear"></div>
						
		</div><!-- mainBody ends -->
	</div><!-- textReset ends -->
</div><!-- bodyContainer ends -->
 
<div id="footerContainer">
	<!-- #include virtual="/layout/footer-top.asp"-->
</div><!-- footerContainer ends -->
<div id="footerBottomContainer">
	<!--  #include virtual="/layout/footer-bottom.asp" -->
</div><!-- footerBottomContainer -->
    </form>
</body>
</html>