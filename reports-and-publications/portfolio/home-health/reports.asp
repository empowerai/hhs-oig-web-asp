
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="OIG Online Portfolio: Home Health" />
<meta name="description" content="OIG Online Portfolio: Home Health" />
<title>OIG Online Portfolio: Home Health  | Reports & Publications | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->

<link rel="stylesheet" type="text/css" href="./tabs.css" />
<link rel="stylesheet" type="text/css" href="./pim.css" />
   
<script type="text/javascript" src="/layout/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript">
  jQuery(function() {
			//What's New Slide controller
		jQuery('#whatsNewSlides').cycle({ 
	 		fx:     'fade',  //Transition Type
			prev:   '#buttonPrev', 
			next:   '#buttonNext',
			speed: 1000,
			timeout: 20000, 
			pause:         1,     // true to enable "pause on hover" 
			pauseOnPagerHover: 1, // true to pause when hovering over pager link 
			random: 0,
			pager:  '#buttonContainer',
			pagerAnchorBuilder: function(index, el) {
					return '<a href="#">&nbsp;</a>'; // pager for switching between slides
			},
			after:     function() {
            jQuery('#caption').html(this.alt);
        },
			cleartype: false
		});
		


	});
</script>

<style type="text/css">

/* REPURPOSED HOME PAGE SLIDER CSS MODIFICATIONS */
#whatsNewContainer {
width:590px;
/* min-height:300px; */
min-height:320px;
height:auto !important;
/* height: 300px; */
height: 320px;
margin: 10px 0 0 -15px !important;
padding-left: 20px;
padding-top:20px;
position: relative; 
z-index:1;
background:transparent url(./images/pim-reports-frame.png) 10px top no-repeat;
} 

#whatsNewSlides div {
width:550px; height:270px; margin-left:0; padding-left:5px;
}

/* Prev/Next Buttons */
#buttonNext, a#buttonNext:active, a#buttonNext:focus {
position: absolute;
right: 7px;
width: 27px;
height: 46px;
z-index: 20;
top: 115px;
background: url('./pim-pager-right.png') no-repeat 0 0;
}
#buttonPrev, a#buttonPrev:active, a#buttonPrev:focus {
position: absolute;
float: left;
width: 27px;
height: 46px;
z-index: 20;
top: 115px;
left: -22px;
background: url('./pim-pager-left.png') no-repeat 0 0;
}

a#buttonNext:active, a#buttonNext:focus, a#buttonPrev:active, a#buttonPrev:focus {
outline: none;
}

/* Bottom Right Pager */
#buttonContainerCorner {
/* background: url('/images/whatsNewButtonContainerLeftBg.png') no-repeat 0 0; */
background:none;
position: absolute;
top: 270px;
right: 240px;
z-index: 10;
}
#buttonContainer {
min-width: 64px;
/* width:expression(document.body.clientWidth < 72? "72px": "auto" ); */
height: 37px;
/* background: #e7e7e7 url('/images/whatsNewButtonContainerBg.png') no-repeat 100% 0; */
background:none;
padding-right: 10px;
margin-left: 10px;

}
#buttonContainer a {
width: 15px;
height: 19px;
background: url('/images/whatsNewPagerInactive.jpg') no-repeat;
display: block;
float: left;
text-decoration: none;
border: none;
margin: 6px 0 0 0px;
}
#buttonContainer a:hover {
opacity: .7;
-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=70)"; 
filter: alpha(opacity=70);				
}


#buttonContainer a:focus, #buttonContainer a:active {
position: relative;
top: 0px;
outline: none;
}
#buttonContainer a.activeSlide {
background: url('/images/whatsNewPagerActive.jpg') no-repeat;

}
 

</style>



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
						  <a href="/reports-and-publications/portfolio/">Portfolio</a>
						</li>
					
					</ul>
				</div>
				<div id="leftContentInterior">
        
        
					<h1 id="port">OIG Online Portfolio: Home Health</h1>

          
          

<div id="tab-top">
<ul>
<li><a href="./index.asp#mainBody">HHA Overview</a></li>
<li><a href="./outcomes.asp#mainBody">Outcomes</a></li>
<li><a href="./enforcement.asp#mainBody">Enforcement</a></li>
<li id="selected"><a href="./reports.asp#mainBody">Reports</a></li>
<li><a href="./guidance.asp#mainBody">Guidance</a></li>
</ul>
</div>


<div id="tab-container">

<h2>Reports</h2>

<div id="tab-interior" >

<h3 style="padding-bottom:0;">Spotlight Reports</h3>



<div id="whatsNewContainer" style="margin-left:-15px;">


<div id="whatsNewButtonContainer">
<a href="#" id="buttonNext"><span>Next</span></a>
<a href="#" id="buttonPrev"><span>Prev</span></a>
</div> 


<div id="whatsNewSlides">

       
<div>
<iframe title="featured report 03" width="600" height="300" scrolling="no" src="./feature-report03.html"></iframe>
</div>   
       
<div>
<iframe title="featured report 02" width="600" height="300" scrolling="no" src="./feature-report01.html"></iframe>
</div>   
  
<div>
<iframe title="featured report 01" width="600" height="300" scrolling="no" src="./feature-report02.html"></iframe>
</div> 

 

</div>


<!-- <div id="buttonContainerCorner">
<div id="buttonContainer"></div>
</div> -->


<!-- /closing slider -->
</div>


<h3>Featured Reports</h3>


<table class="updated_cias" summary="Home health-related recommendations" border="0" cellpadding="0" cellspacing="0" style="margin-left:0;">

<colgroup>
<col>
<col width="75">
</colgroup>

<tr>
<th>Report Title</th>
<th>Issue Date</th>
</tr>


<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region18/181630300.asp">Review of Medicare Contractor Information Security Program Evaluations for Fiscal Year 2015 (A-18-16-3030)</a>	</td>
<td>01-17-2017	</td>
</tr>

<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region1/11300518.asp">Medicare Compliance Review Of Home Health VNA for 2011 and 2012 (A-01-13-00518)</a>	</td>
<td>08-17-2016</td>
</tr>

<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region2/21401005.asp">Medicare Compliance Review of Excellent Home Care Services, LLC (A-02-14-01005)</a> </td>
<td>07-14-2016	</td>
</tr>


<tr>
<td><a target="_blank" href="/oei/reports/oei-05-16-00031.asp">Nationwide Analysis of Common Characteristics in OIG Home Health Fraud Cases (OEI-05-16-00031)</a></td>
<td>06-21-2016</td>
</tr> 


<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region2/21401027.asp">Medicare Compliance Review of Sea View Health Care Services, Inc. (A-02-14-01027)</a>	</td>
<td>05-19-2016	</td>
</tr>

<!-- <tr>
<td>Planned Work: Home Health Prospective Payment System Requirements<br />
<a href="http://oig.hhs.gov/reports-and-publications/archives/workplan/2016/WorkPlan_April%202016_Final.pdf#page=26">Read OIG Work Plan Summary</a></td>
<td>Various Dates 2016 - Estimated</td>
</tr>  -->

<tr>
<td><a href="http://oig.hhs.gov/reports-and-publications/archives/workplan/2016/oig-work-plan-2016.pdf#page=17">CMS's Reliance on Puerto Rico's Certification Surveys Could Not Ensure the Safety of Medicare Beneficiaries Who Received Home Health Care Services Provided by St. Luke's Home Health Agency-Juana Diaz (A-02-11-01030)</a></td>
<td>09-14-2015</td>
</tr> 

<tr>
<td><a href="C:\Users\jlong\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.Outlook\3UNMY976\Limited Compliance With Medicare's Home Health Face to Face Documentation Requirements (OEI-01-12-00390)">Limited Compliance With Medicare's Home Health Face to Face Documentation Requirements (OEI-01-12-00390)</a></td>
<td>04-09-2014</td>
</tr> 

<tr>
<td><a href="http://oig.hhs.gov/oas/reports/region1/11200508.asp">Medicare Often Made Overpayments to New England Home Health Agencies for Claims Without Required Outcome and Assessment Information Set Data for Calendar Year 2010 (A-01-12-00508)</a></td>
<td>03-11-2014</td>
</tr> 

<tr>
<td><a href="http://oig.hhs.gov/oei/reports/oei-04-11-00220.asp">CMS and Contractor Oversight of Home Health Agencies (OEI-04-11-00220)</a></td>
<td>12-19-2012</td>
</tr>  

<tr>
<td><a href="http://oig.hhs.gov/oei/reports/oei-04-11-00240.asp">Inappropriate and Questionable Billing by Medicare Home Health Agencies (OEI-04-11-00240)</a></td>
<td>08-02-2012</td>
</tr> 
 

<tr>
<td><a href="http://oig.hhs.gov/oas/reports/region2/21101009.asp">St. Luke's Episcopal Church Home Care Program-Juana Diaz Properly Claimed Medicare Reimbursement for Home Health Services (A-02-11-01009)</a></td>
<td>04-16-2012</td>
</tr> 

<tr>
<td><a href="http://oig.hhs.gov/oei/reports/oei-01-08-00390.asp">Documentation of Coverage Requirements for Medicare Home Health Claims (OEI-01-08-00390)</a></td>
<td>03-12-2012</td>
</tr> 
 

<tr>
<td><a href="http://oig.hhs.gov/oei/reports/oei-01-10-00460.asp">Limited Oversight of Home Health Agency OASIS Data (OEI-01-10-00460)</a></td>
<td>02-27-2012</td>
</tr> 
 

<tr>
<td><a href="http://oig.hhs.gov/oas/reports/region10/10900530.asp">Review of Physician Therapy Services Provided During Home Health Episodes in Calendar Year 2008 (A-01-09-00530)</a></td>
<td>05-06-2011</td>
</tr> 


<tr>
<td><a href="http://www.oig.hhs.gov/oas/reports/region1/11000505.asp">Review of Medicare Home Health Consolidated Billing for Calendar Years 2007 and 2008 (A-01-10-00505)</a></td>
<td>04-22-2011</td>
</tr>


<!-- <tr>
<td></td>
<td></td>
</tr> -->

</table>




<div class="contentSeparator"></div>

<p>Page last updated: <strong>February 9, 2017</strong></p>







<!-- /closing tab boxes -->
</div>
</div>


				</div><!-- leftContentInterior -->
			</div>	<!-- leftSideInterior ends -->
      
      
      
      
      
      
			<div id="rightSide">
				<!--#include file="./port-nav-pop.asp" -->

<div id="subNav">


				<!--#include file="./pim-sidebar.asp" -->


        
<div class="subNavBottom"></div>
</div><!-- subNav ends -->
<div class="clear"></div>

<!----------------------------------[ /NEW STUFF ] -->
  
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
