<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="Hotline.error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

<meta name="keywords" content="Report Fraud, Office of Inspector General" />
<meta name="description" content="Report Fraud Online with a simple web form." />
<title>Error</title>
	<meta name="author" content="Office of Inspector General, Department of Health and Human Services" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="apple-touch-icon" href="/images/apple-touch-icon.png" />
  <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
  <!-- main jquery file 	-->

   
 
	<!--[if IE 6]>
	<link href="/layout/css/style-ie6.css" rel="stylesheet" type="text/css" />
	  <script type="text/javascript" src="/layout/js/ie.js"></script>
	  
	<![endif]-->
  <link rel="stylesheet" href="/layout/css/print.css" media="print" type="text/css" />
  <link href="/layout/css/style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" type="text/css" href="/layout/css/hotline.styles.css" media="all" />
	



</head>
<body>
    <form id="form1" runat="server">
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
					     Form Error
						</li>
					</ul>
				</div>
		<%--<form id="form1" runat="server">--%>

					
				<div id="leftContentInterior">
					<p>
									An error has occured, please try again.
									If you Continue to receive an error please contact the <a href="mailto:WebMaster@oig.hhs.gov" class="buttonSubmitQ"><span>WebMaster</span></a>
								</p>
					
				</div> <!-- leftContentInterior ends -->	
			</div>	<!-- leftSideInterior ends -->

			<div id="rightSide">
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
