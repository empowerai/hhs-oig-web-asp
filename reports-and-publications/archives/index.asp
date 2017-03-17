
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="keywords" />
<meta name="description" content="page description" />
<title>Reports & Publications | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->
<!--#include virtual="/layout/search-functions.asp" -->


<!-------------/ head closes and body opens / --->

<!--#include virtual="/layout/head-body-tags.asp" -->

<!------------/ head closes and body opens / --->


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
							<a href="/reports-and-publications/index.asp">Reports &amp; Publications</a>
						</li>	
						<li>
						   Archives
						</li>
					</ul>
				</div>
				<div id="leftContentInterior">
					<h1>Archives</h1>
					<p>
					This section allows you to conduct a more targeted search of OIG reports and publications that were issued in prior years.

					</p>
						<div class="contentSeparator"></div>
		 <form method="GET" action="/search/index-advanced.asp" name="oig_search" id="oig_search">
		<input name="submitted" type="hidden" value="submitted" />
		<input name="output" type="hidden" value="xml_no_dtd" />
		<input name="sort" type="hidden" value="date:D:L:d1" />
		<input name="ie" type="hidden" value="UTF-8" />
		<input name="oe" type="hidden" value="UTF-8" />
	    <input name="lr" type="hidden" value="lang_en" />
		<input name="client" type="hidden" value="oig" />
		<input name="ud" type="hidden" value="1" />
		<!-- <input name="site" type="hidden" value="oig" /> -->
		<input name="proxystylesheet" type="hidden" value="oig_test" />
		<input name="proxyreload" type="hidden" value="1" />
		<ul class="reportsSearch">
			<li>Please enter a keyword:&nbsp;<input name="as_epq" size="25" value="" type="text"></li>
			<li>Search Within:	&nbsp;				
		<select name="site">
			<option value="oig">Entire OIG Website</option>
			<option value="oig-oas">Office of Audit Services</option>
			<option value="oig-oei">Office of Evaluation and Inspections</option>				
			<option value="oig-authorities">Authorities &amp; Federal Register Notices</option>					
			<option value="oig-testimonies">Testimonies &amp; Speeches</option>					
		</select>
		</li>
		<li>
		Modified between&nbsp;
		<select name="daterange-start" id="daterange-start">
		</select>&nbsp;
		and
		<select name="daterange-end" id="daterange-end">
		</select>
		</li>
		
		<li>
		<input name="btnG" class="button" value="Search" type="submit">
		</li>
	</ul>
		</form>
			 		<%				
				    if Request.QueryString("submitted") = "submitted" Then
				
					Response.Write("<iframe src=""http://search.hhs.gov/search?")
					
					Dim daterange
					daterange = Request.QueryString("daterange-start") & ".." & Request.QueryString("daterange-end")
					Response.Write("daterange="&daterange&"&")
					
					Dim fldName
					For Each fldName in Request.QueryString
						Response.Write(fldName&"="&Request.QueryString(fldName)&"&")
					Next
				
					Response.Write(""" id=""search_iframe"" name=""search_iframe"" style=""height: 1150px; width: 594px;""></iframe>")
				End If
				%>
				<div class="contentSeparator"></div>
				<h2>Reports and Publication by Type</h2>
				<h3> <a href="/reports-and-publications/archives/oas/index.asp">Office of Audit Services</a></h3>
				<h3> <a href="/reports-and-publications/oei/subject_index.asp">Office of Evaluation and Inspections</a></h3>	
				<h3> <a href="/reports-and-publications/hcfac/index.asp">Health Care Fraud and Abuse Control Program Report </a></h3>
				<h3> <a href="/reports-and-publications/archives/semiannual/index.asp">Semiannual Reports to Congress</a></h3>	
				<h3> <a href="/reports-and-publications/medicaid-integrity/index.asp">Medicaid Integrity Reports</a></h3>
				<h3> <a href="/reports-and-publications/archives/top-challenges/index.asp">Top Management &amp; Performance Challenges</a></h3>
				<h3> <a href="/reports-and-publications/archives/compendium/orangebook.asp">Compendium of Unimplemented Recommendations: Orange Book</a></h3>	
				<h3> <a href="/reports-and-publications/archives/compendium/redbook.asp">Compendium of Unimplemented Recommendations: Red Book</a></h3>	
				<h3> <a href="/reports-and-publications/archives/workplan/index.asp">Work Plan</a></h3>	
				<h3> <a href="/reports-and-publications/foia/index.asp">Freedom of Information Act (FOIA)</a></h3>
				<h3> <a href="/reports-and-publications/archives/federal-register-notices/index.asp">Federal Register Notices</a></h3>	
				<h3> <a href="/reports-and-publications/archives/regulatory-authorities/index.asp">Regulatory Authorities</a></h3>
				<h3> <a href="/reports-and-publications/archives/budget/index.asp">OIG Budget</a></h3>
				<h3><a href="/reports-and-publications/archives/testimony-and-speeches/index.asp">Testimony &amp; Speeches</a></h3>
        <h3><a href="/newsroom/spotlight/index.asp">Spotlight Articles</a></h3>
				<div class="contentSeparator"></div>

 
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
