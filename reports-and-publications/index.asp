
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="keywords" />
<meta name="description" content="page description" />
<title>Reports & Publications | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->
	<link rel="stylesheet" href="/layout/css/jquery-ui.css" type="text/css" />
			
		<link rel="stylesheet" href="/layout/css/ui.daterangepicker.css" type="text/css" />
		
		<script type="text/javascript" src="/layout/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="/layout/js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="/layout/js/date.js"></script>
		<script type="text/javascript" src="/layout/js/daterangepicker.jQuery.js"></script>
		<script type="text/javascript">	
			jQuery(function(){
					jQuery('#daterange').daterangepicker({
						rangeSplitter: '..',
						datepickerOptions: {
							changeMonth: true,
							changeYear: true,
							maxDate: 'Today'
						}
					 });
					$("#searchReport").validate({
					
					});
			 });
		</script>

<!--===============  [ MOBILE MEDIA QUERIES - this has to be per-page at this time ]  ===============-->
<!--#include virtual="/layout/mobile-queries.asp" -->
<!--===============  [ /MOBILE MEDIA QUERIES ]  ===============-->




<!-------------/ head closes and body opens / --->

<!--#include virtual="/layout/head-body-tags.asp" -->

<!------------/ head closes and body opens / --->


<div id="bodyContainer" class="mobilized">


<!--===============  [ MOBILE BANNER ]  ===============-->
<!--#include virtual="/layout/mobile-banner.asp" -->
<!--===============  [ /MOBILE BANNER ]  ===============-->


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
							Reports &amp; Publications
						</li>
					</ul>
				</div>
				<div id="leftContentInterior">

				
					<h1 class="m-remove">Reports &amp; Publications</h1>
          
          
          
<!-- 	  <form class="m-remove" method="GET" id="searchReport" action="/search/index-advanced.asp">
		<input name="submitted" type="hidden" value="submitted" />
		<input name="output" type="hidden" value="xml_no_dtd" />
		<input name="sort" type="hidden" value="date:D:L:d1" />
		<input name="ie" type="hidden" value="UTF-8" />
		<input name="filter" type="hidden" value="0" />
		<input name="oe" type="hidden" value="UTF-8" />
	    <input name="lr" type="hidden" value="lang_en" />
		<input name="client" type="hidden" value="oig" />
		<input name="ud" type="hidden" value="1" />
		<input name="proxystylesheet" type="hidden" value="oig_test" />
		<input name="proxyreload" type="hidden" value="1" />
		<ul class="reportsSearch">
			<li>Please enter a keyword:&nbsp;<input class="required" name="as_q" size="25" value="" type="text"></li>
			<li>Search Within:	&nbsp;				
		<select name="site">
			<option value="oig">Entire OIG Website</option>
			<option value="oig-oas">Office of Audit Services</option>
			<option value="oig-oei">Office of Evaluation and Inspections</option>			
		</select>
		</li>
		<li>
	
								<strong>Date Range </strong>(i.e., 2010/06/15)
		
		
			
							<input type="text" name="daterange" size="25" class="required" value="" id="daterange" />			
					

		</li>
		
		<li>
		<input name="btnG" class="button" value="Search" type="submit" />
		</li>
	</ul>
		</form>
			 		<%				
				    if Request.QueryString("submitted") = "submitted" Then
				
					Response.Write("<iframe src=""http://search.hhs.gov/search?")
					
					Dim daterange
					daterange = server.urlencode(Request.QueryString("daterange"))
					'Response.Write("daterange:"&daterange&"&")
					
					Dim fldName
					For Each fldName in Request.QueryString
					if fldName = "as_q" then 
					fldName = fldName+"="+server.urlencode(Request.QueryString("as_q"))+" "+"daterange:"+daterange+"&"
						'Response.Write(fldName&"="&server.urlencode(Request.QueryString(fldName))&"&")
						'Response.Write(fldName)
					end if
					fldName = fldName + "="&server.urlencode(Request.QueryString(fldName))&"&"
					Response.Write(fldName)
					Next
				
					Response.Write(""" id=""search_iframe"" name=""search_iframe""  frameBorder=""0"" style=""background: transparent; height: 1150px; width: 594px; border: 0;""></iframe>")
				End If
				%> -->
        
        
<!-- 				<div class="contentSeparator"></div> -->
					<h2>Reports and Publication by Type</h2>
					
				<h3> <a href="/reports-and-publications/oas/index.asp">Office of Audit Services</a></h3>
				<h3> <a href="/reports-and-publications/oei/subject_index.asp">Office of Evaluation and Inspections</a></h3>	
				<h3> <a href="/reports-and-publications/aca/">Affordable Care Act Reviews</a></h3>        
				<h3> <a href="/reports-and-publications/hcfac/index.asp">Health Care Fraud and Abuse Control Program Report </a></h3>
				<h3> <a href="/reports-and-publications/semiannual/index.asp">Semiannual Reports to Congress</a></h3>	
				<h3> <a href="/reports-and-publications/medicaid-integrity/index.asp">Medicaid Integrity Reports</a></h3>
				<h3> <a href="/reports-and-publications/top-challenges/index.asp">Top Management &amp; Performance Challenges</a></h3>
				<h3> <a href="/reports-and-publications/compendium/index.asp">Compendium of Unimplemented Recommendations</a></h3>	
        <h3> <a href="/reports-and-publications/strategic-plan/index.asp">Strategic Plan</a></h3>	
				<h3> <a href="/reports-and-publications/workplan/index.asp">Work Plan</a></h3>	
        <h3> <a href="/reports-and-publications/portfolio/index.asp">Portfolio and Other Reports</a></h3>	
        <h3> <a href="/reports-and-publications/foia/index.asp">Freedom of Information Act (FOIA)</a></h3>
				<h3> <a href="/reports-and-publications/federal-register-notices/index.asp">Federal Register Notices</a></h3>	
				<h3> <a href="/reports-and-publications/regulatory-authorities/index.asp">Regulatory Authorities</a></h3>
				<h3> <a href="/reports-and-publications/budget/index.asp">OIG Budget</a></h3>
				<h3><a href="/recovery-act-oversight/">Recovery Act Oversight</a></h3>
        <h3><a href="/reports-and-publications/other/gao.asp">GAO Forum Highlights Report: Data Analytics For Oversight<br />and Law Enforcement</a></h3>
			
				</div><!-- leftContentInterior -->
			</div>	<!-- leftSideInterior ends -->
			<div id="rightSide">
				<!--#include virtual="/layout/im-looking-for.asp" -->
				<!-- #include virtual="/layout/sub-navigation/subnavigation-reports-and-publications.asp" -->
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
