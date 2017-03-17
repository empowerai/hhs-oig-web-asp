
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="keywords" />
<meta name="description" content="page description" />
<title>Search | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->
<!--#include virtual="/layout/search-functions.asp" -->
</head>
<body>
<div id="bodyContainer">
	<div id="textReset">
	<!--#include virtual="/layout/header.asp" -->
			<div id="mainBody">
			<div id="leftSideInterior">
				<div id="breadcrumbs">
					<ul>
						<li>
							<a href="/">Home</a>
						</li>
						<li>
							Search
						</li>
					</ul>
				</div>
				<div id="leftContentInterior">
		 		<iframe src="http://search.hhs.gov/search?<%		
				Dim fldName
				For Each fldName in Request.QueryString
					Response.Write(fldName&"="&server.urlencode(Request.QueryString(fldName))&"&")
				Next
				
				%>" id="search_iframe" name="search_iframe" frameBorder="0"target="_parent" style="height: 1150px; width: 594px;"></iframe>
		
				</div><!-- leftContentInterior -->
			</div>	<!-- leftSideInterior ends -->
			<div id="rightSide">
				<!--#include virtual="/layout/im-looking-for.asp" -->
				<!-- #include virtual="/layout/sub-navigation/subnavigation-media.asp" -->
				<!--#include virtual="/layout/exclusions-database.asp" -->
				<!--#include virtual="/layout/report-fraud.asp" -->
				<div class="clearPadding"></div>
				<!--#include virtual="/layout/email-alerts.asp" -->
			</div><!-- rightSide ends -->
			<div class="clear"></div>
		</div><!-- mainBody ends -->
	</div><!-- textReset ends -->
</div><!-- bodyContainer ends -->
<div id="footerContainer">
	<!--#include virtual="/layout/footer-top.asp" -->
</div><!-- footerContainer ends -->
<div id="footerBottomContainer">
	<!-- #include virtual="/layout/footer-bottom.asp" -->
</div><!-- footerBottomContainer -->
</body>
</html>
