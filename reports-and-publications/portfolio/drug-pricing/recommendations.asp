
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="OIG Online Portfolio: Drug Pricing and Reimbursement" />
<meta name="description" content="OIG Online Portfolio: Drug Pricing and Reimbursement" />
<title>OIG Online Portfolio: Drug Pricing and Reimbursement  | Reports & Publications | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->

<link rel="stylesheet" type="text/css" href="./tabs.css" />
<link rel="stylesheet" type="text/css" href="./pim.css" />

<script charset="ISO-8859-1" src="./js/jquery.dataTables.min.js"></script>


   
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

<link rel="stylesheet" href="./js/jquery.dataTables.min.css" />
<style type="text/css">
#example th {text-align:left; vertical-align:bottom;}
#example td {vertical-align:top;}
#example_filter label {}
#example_filter input {width:200px;}
#example tfoot th {padding:20px 10px !important}
/* #example tfoot {display:table-header-group;} */
#example tfoot input {width:100%; padding:3px; box-sizing:border-box;}
#example td span  {cursor:help}
</style>


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



<script>
$(document).ready(function() {

  $('#example').DataTable();

		    // Pricing Integrity
			$('span.integrity').qtip({
				content: {
						text: "Drug reimbursement amounts and rebates are based on various data elements that manufacturers report to CMS.  Integrity of these data elements is critical for limiting overpayments.  OIG has been approaching the data integrity issues from two angles: evaluations of CMS systems and industry enforcement."
				},
				style: {
					width: {
						max: 250 
						} 
				},
				hide: {
						 when: 'mouseout',
						 fixed: true,
						 delay: 700
				 },
				 style: {
						classes: 'ui-tooltip-light ui-tooltip-shadow ui-tooltip-rounded'
				 },
				 show: { 
					when: { event: 'focus' }
				}
			});	
      
		    // Compliance
			$('span.compliance').qtip({
				content: {
						text: "OIG has a body of work that examines whether drug payment methodologies are working as intended and whether the government is getting what it is owed. Examples include looking at the effectiveness of Medicaid's rebate collection efforts and whether the 340B program is working as intended."
				},
				style: {
					width: {
						max: 250 
						} 
				},
				hide: {
						 when: 'mouseout',
						 fixed: true,
						 delay: 700
				 },
				 style: {
						classes: 'ui-tooltip-light ui-tooltip-shadow ui-tooltip-rounded'
				 },
				 show: { 
					when: { event: 'focus' }
				}
			});	      
      
      
		    // Policy
			$('span.policy').qtip({
				content: {
						text: "OIG has a long history involving prescription drug payment policy, including a prominent role in the complete overhaul of the Part B reimbursement methodology via the Medicare Modernization Act. Our work in this area has been credited with billions in savings to the Federal government.  In recent years we have focused on the differences in payment levels between Part D and Medicaid and additional methods to decrease drug expenditures in Part B."
				},
				style: {
					width: {
						max: 250 
						} 
				},
				hide: {
						 when: 'mouseout',
						 fixed: true,
						 delay: 700
				 },
				 style: {
						classes: 'ui-tooltip-light ui-tooltip-shadow ui-tooltip-rounded'
				 },
				 show: { 
					when: { event: 'focus' }
				}
			});	      
            
      
		    // Trends
			$('span.trends').qtip({
				content: {
						text: "With prescription drug expenditures outpacing healthcare spending trends, OIG is monitoring trends in such diverse areas as spending on compounded drugs, expansion of the 340B program, and spending for Part D catastrophic coverage. "
				},
				style: {
					width: {
						max: 250 
						} 
				},
				hide: {
						 when: 'mouseout',
						 fixed: true,
						 delay: 500
				 },
				 style: {
						classes: 'ui-tooltip-light ui-tooltip-shadow ui-tooltip-rounded'
				 },
				 show: { 
					when: { event: 'focus' }
				}
			});	      
           
      
      
      
      
		    // Alignment
			$('span.alignment').qtip({
				content: {
						text: "OIG has identified that Part D sponsors may not always have enough information to oversee the services and information provided by pharmacy benefit managers (PBMs).  Also, certain sponsors reported to OIG that their PBMs collected fees from drug manufacturers but did not always pass them on to the Part D program."
				},
				style: {
					width: {
						max: 250 
						} 
				},
				hide: {
						 when: 'mouseout',
						 fixed: true,
						 delay: 500
				 },
				 style: {
						classes: 'ui-tooltip-light ui-tooltip-shadow ui-tooltip-rounded'
				 },
				 show: { 
					when: { event: 'focus' }
				}
			});	      
           
      


   
});
	

</script>


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
        
        
					<h1 id="port">OIG Online Portfolio: Drug Pricing and Reimbursement</h1>

<p style="margin-bottom:20px;">This online portfolio pulls together the Office of Inspector General's (OIG) body of work since 2010 plus several older relevant items that relate to drug pricing and reimbursement in HHS programs. The portfolio features planned work, completed reports, industry guidance, and enforcement actions. This portfolio does not cover OIG's body of work focused on questionable or fraudulent billing for prescription drugs. This portfolio on drug pricing and reimbursement will be updated periodically.</p>           
          

<div id="tab-top">
<ul>
<li><a href="./index.asp#mainBody">Overview</a></li>
<li><a href="./reports.asp#mainBody">Reports</a></li>
<li><a href="./impact.asp#mainBody">Impact</a></li>
<li id="selected"><a href="./recommendations.asp#mainBody">Recommendations</a></li>
<li><a href="./enforcement.asp#mainBody">Enforcement</a></li>
<li><a href="./guidance.asp#mainBody">Industry Guidance</a></li>
</ul>
</div>


<div id="tab-container">

<h2>Recommendations</h2>

<div id="tab-interior">



<!-- <h3 style="padding-bottom:0;">Spotlight on Recommendations</h3>
<div id="whatsNewContainer" style="margin-left:-15px;">
<div id="whatsNewButtonContainer">
<a href="#" id="buttonNext"><span>Next</span></a>
<a href="#" id="buttonPrev"><span>Prev</span></a>
</div> 
<div id="whatsNewSlides">
       
<div>
<iframe title="featured report 01" width="600" height="300" scrolling="no" src="./recommendation01.html"></iframe>
</div>   
  
<div>
<iframe title="featured report 02" width="600" height="300" scrolling="no" src="./recommendation02.html"></iframe>
</div> 

<div>
<iframe title="featured report 03" width="600" height="300" scrolling="no" src="./recommendation03.html"></iframe>
</div> 

<div>
<iframe title="featured report 04" width="600" height="300" scrolling="no" src="./recommendation04.html"></iframe>
</div> 


<div>
<iframe title="featured report 05" width="600" height="300" scrolling="no" src="./recommendation05.html"></iframe>
</div> 



</div>

</div>  -->
<!-- /closing slider -->


<p>OIG makes recommendations to HHS that promote economy, efficiency, and effectiveness in the administration of HHS programs and operations. These recommendations generally stem from OIG's audits and evaluations. For a comprehensive list of unimplemented recommendations across HHS programs, see the  <a href="https://oig.hhs.gov/reports-and-publications/compendium/index.asp">Compendium of Unimplemented Recommendations</a>.</p>
<p>Below is a list of the unimplemented recommendations in the drug pricing and reimbursement area that would most positively affect HHS programs in terms of saving money and/or improving quality and should therefore be prioritized for implementation.  For a list of selected implemented recommendations and their associated impact, please see the <a href="./impact.asp#mainBody">Impact tab</a>.</p>

<table border="0" cellpadding="0" cellspacing="0" class="generic_table" style="margin-left:0;">


<tr>
<th>Unimplemented Recommendation</th>
<th>Report</th>
<th>Work Area</th>
</tr>

<!-- 1 -->
<tr>
<td>CMS should require the use of claim-level methods to identify 340B drugs.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-14-00430.asp">State Efforts to Exclude 340B Drugs from Medicaid Managed Care Rebates (OEI-05-14-00430)</a> (Issue Date: 06-06-2016)</td>
<td>Program Compliance</td>
</tr>

<!-- 2 -->
<tr>
<td>HRSA should clarify its guidance on preventing duplicate discounts for MCO drugs.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-14-00430.asp">State Efforts to Exclude 340B Drugs from Medicaid Managed Care Rebates (OEI-05-14-00430)</a> (Issue Date: 06-06-2016)</td>
<td>Program Compliance</td>
</tr>


<!-- 3 -->
<tr>
<td>CMS should cooperate with industry stakeholder efforts to identify a solution to prevent coupons from being used to purchase drugs paid for by Part D.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-12-00540.asp">Manufacturer Safeguards May Not Prevent Copayment Coupon Use for Part D Drugs (OEI-05-12-00540)</a> (Issue Date: 09-18-2014)</td>
<td>Program Compliance</td>
</tr>

<!-- 4 -->
<tr>
<td>CMS should amend current regulations to decrease the Part B payment rates for dispensing and supplying fees to rates similar to those of other payers, such as Part D and Medicaid.</td>
<td><a href="https://oig.hhs.gov/oas/reports/region6/61200038.asp">Medicare Part B Prescription Drug Dispensing and Supplying Fee Payment Rates Are Considerably Higher Than the Rates Paid by Other Government Programs (A-06-12-00038)</a> (Issue Date: 09-15-2014)</td>
<td>Reimbursement Policy</td>
</tr>

<!-- 5 -->
<tr>
<td>CMS should work with States to improve the quality of claims data submitted by providers.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-11-00580.asp">Medicaid Drug Rebate Dispute Resolution Could Be Improved (OEI-05-11-00580)</a> (Issue Date: 08-19-2014)</td>
<td>Program Compliance</td>
</tr>

<!-- 6 -->
<tr>
<td>CMS should help States obtain better data on ineligible drugs drugs i.e., 340B-purchased drugs ineligible for Medicaid rebates.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-11-00580.asp">Medicaid Drug Rebate Dispute Resolution Could Be Improved (OEI-05-11-00580)</a> (Issue Date: 08-19-2014)</td>
<td>Program Compliance</td>
</tr>

<!-- 7 -->
<tr>
<td>CMS should examine the potential impacts of establishing a prescription drug rebate program under Medicare Part B and, if appropriate, seek legislative change.</td>
<td><a href="https://oig.hhs.gov/oei/reports/OEI-12-12-00260.asp">Medicare Could Collect Billions If Manufacturers Were Required To Pay Rebates for Part B Drugs (OEI-12-12-00260)</a> (Issue Date: 09-09-2013)</td>
<td>Reimbursement Policy</td>
</tr>

<!-- 8 -->
<tr>
<td>CMS should finalize the implementation of automated ASP-related procedures by using AMP-related processes as a model, and subsequently require all manufacturers to submit ASPs through the automated system that CMS is developing.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-12-13-00040.asp">Limitations in Manufacturer Reporting of ASP Data for Part B Drugs (OEI-12-13-00040)</a> (Issue Date: 07-21-2014)</td>
<td>Data Integrity</td>
</tr>

<!-- 9 -->
<tr>
<td>CMS should seek a legislative change to directly require all manufacturers of Part B drugs to submit ASPs.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-12-13-00040.asp">Limitations in Manufacturer Reporting of ASP Data for Part B Drugs (OEI-12-13-00040)</a> (Issue Date: 07-21-2014)</td>
<td>Data Integrity</td>
</tr>

<!-- 10 -->
<tr>
<td>CMS should consider seeking legislative authority to implement least costly alternative policies for Part B drugs under appropriate circumstances.</td>
<td><a href="https://oig.hhs.gov/oei/reports/oei-12-12-00210.asp">Least Costly Alternative Policies:  Impact on Prostate Cancer Drugs Covered Under Part B (OEI-12-12-00210)</a> (Issue Date: 11-21-2012)</td>
<td>Reimbursement Policy</td>
</tr>




</table>

<div class="contentSeparator"></div>








<!-- /closing tab boxes -->
</div>
</div>


</div><!-- leftContentInterior -->
</div><!-- leftSideInterior ends -->
      
      
      
      
      
      
<div id="rightSide">
<!--#include file="./port-nav-pop.asp" -->

<div id="subNav">


<!--#include file="./reports-sidebar.asp" -->


        
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
