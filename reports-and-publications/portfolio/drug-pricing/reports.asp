
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
<link rel="stylesheet" type="text/css" href="./js/buttons.dataTables.min.css" />


<script charset="ISO-8859-1" src="./js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="./js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="./js/pdfmake.min.js"></script>
<script type="text/javascript" src="./js/buttons.print.min.js"></script>
<script type="text/javascript" src="./js/buttons.html5.min.js"></script>
<script type="text/javascript" src="./js/vfs_fonts.js"></script>
<script type="text/javascript" src="./js/jszip.min.js"></script>
<script type="text/javascript" src="./js/buttons.flash.min.js"></script>




   
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

  //$('#example').DataTable();
  
   $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'excel', 'pdf'
        ]
    } );
  
  

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
<!-- <a href="./glossary.asp"><img class="r clean" src="./images/glossary.png" alt="View the Glossary" /></a> -->
<p style="margin-bottom:20px;">This online portfolio pulls together the Office of Inspector General's (OIG) body of work since 2010 plus several older relevant items that relate to drug pricing and reimbursement in HHS programs. The portfolio features planned work, completed reports, industry guidance, and enforcement actions. This portfolio does not cover OIG's body of work focused on questionable or fraudulent billing for prescription drugs. This portfolio on drug pricing and reimbursement will be updated periodically.</p>           
          

<div id="tab-top">
<ul>
<li><a href="./index.asp#mainBody">Overview</a></li>
<li id="selected"><a href="./reports.asp#mainBody">Reports</a></li>
<li><a href="./impact.asp#mainBody">Impact</a></li>
<li><a href="./recommendations.asp#mainBody">Recommendations</a></li>
<li><a href="./enforcement.asp#mainBody">Enforcement</a></li>
<li><a href="./guidance.asp#mainBody">Industry Guidance</a></li>
</ul>
</div>


<div id="tab-container">

<h2>Reports</h2>

<div id="tab-interior">



<h3 style="padding-bottom:0;">Spotlight Reports</h3>
<div id="whatsNewContainer" style="margin-left:-15px;">
<div id="whatsNewButtonContainer">
<a href="#" id="buttonNext"><span>Next</span></a>
<a href="#" id="buttonPrev"><span>Prev</span></a>
</div> 
<div id="whatsNewSlides">
       
 
       
<div>
<iframe title="Data Integrity" width="600" height="300" scrolling="no" src="./feature-report01.html"></iframe>
</div>   
  
<div>
<iframe title="Program Compliance" width="600" height="300" scrolling="no" src="./feature-report02.html"></iframe>
</div> 

<div>
<iframe title="Completed Reimbursement Work" width="600" height="300" scrolling="no" src="./feature-report06.html"></iframe>
</div>     
 

<div>
<iframe title="Spending Trends" width="600" height="300" scrolling="no" src="./feature-report04.html"></iframe>
</div> 

<div>
<iframe title="Incentive Alignment" width="600" height="300" scrolling="no" src="./feature-report05.html"></iframe>
</div> 


<div>
<iframe title="Completed Reimbursement Work 2" width="600" height="300" scrolling="no" src="./feature-report03.html"></iframe>
</div>



</div>


</div> 
<!-- /closing slider -->



<h3 style="margin-bottom:20px;">Featured Reports</h3>


<table id="example" class="cell-border hover stripe">

<thead>
<tr>
<th title="Sort by Title" scope="col">Report Title</th>
<th title="Sort by Area(s) of Work" scope="col">Area(s) of Work</th>
<th title="Sort by Status" scope="col">Issue Date</th>
<th title="Sort by Program" scope="col">Program</th>
</tr>
</thead>

<tbody>

<tr>
<td><a href="http://oig.hhs.gov/oei/reports/oei-03-08-00300.pdf">Accuracy of Drug Categorizations for Medicaid Rebates (OEI-03-08-00300)</a></td>
<td>Data Integrity</td>
<td>2009/07</td>
<td>Medicaid</td>
</tr>





<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region6/61300014.asp">Average Manufacturer Price Determinations by Selected Drug Manufacturers Generally Were Consistent with Federal Requirements (A-06-13-00014)</a></td>
<td>Data Integrity, Program Compliance</td>
<td>2014/06</td>
<td>Medicaid</td>
</tr>




<tr>

<td><a href="https://oig.hhs.gov/oei/reports/oei-03-09-00060.pdf">Drug Manufacturers’ Non-Compliance with AMP Reporting Requirements (OEI-03-09-00060)</a></td>
<td>Program Compliance, Data Integrity</td>
<td>2010/09</td>
<td>Medicaid</td>
</tr>





<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-12-13-00040.asp">Limitations in Manufacturer Reporting of Average Sales Price Data for Part B Drugs (OEI-12-13-00040)</a></td>
<td>Data Integrity, Program Compliance</td>
<td>2014/07 </td>
<td>Medicare Part B</td>
</tr>





<tr>
<td><a href="https://oig.hhs.gov/reports-and-publications/archives/workplan/2017/HHS%20OIG%20Work%20Plan%202017_508.pdf#page=47">Quality of Sponsor Data Used in Calculating Coverage Gap Discounts (A-07-16-06067)</a></td>
<td>Data Integrity, Program Compliance</td>
<td>Expected Issue in 2017</td>
<td>Medicare Part D</td>
</tr>

<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-02-08-00050.asp">Concerns with Rebates in the Medicare Part D Program (OEI-02-08-00050)</a></td>
<td>Incentive Alignment</td>
<td>2011/03 </td>
<td>Medicare Part D</td>
</tr>





<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-09-00410.asp">States' Collection of Rebates for Physician-Administered Drugs (OEI-03-09-00410)</a></td>
<td>Program Compliance</td>
<td>2011/06 </td>
<td>Medicaid</td>
</tr>





<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-12-00560.asp">Annual Fee on Branded Prescription Drug Companies Under the Affordable Care Act (OEI-03-12-00560)</a></td>
<td>Program Compliance</td>
<td>2014/04 </td>
<td>Medicare Part D</td>
</tr>





<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-12-00520.asp">States' Collection of Offset and Supplemental Medicaid Rebates (OEI-03-12-00520)</a></td>
<td>Program Compliance</td>
<td>2014/12 </td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-14-00431.asp">States' Collection of Rebates for Drugs Paid Through Medicaid Managed Care Organizations Has Improved (OEI-05-14-00431)</a></td>
<td>Program Compliance</td>
<td> 2015/09</td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-11-00580.asp">Medicaid Drug Rebate Dispute Resolution Could Be Improved (OEI-05-11-00580)</a></td>
<td>Program Compliance, Data Integrity</td>
<td>2014/08 </td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-14-00430.asp">State Efforts to Exclude 340B Drugs from Medicaid Managed Care Rebates (OEI-05-14-00430)</a></td>
<td>Program Compliance, Data Integrity</td>
<td>2016/06 </td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oas/map/">States' Collection of Medicaid Rebates for Physician-Administered Drugs</a></td>
<td>Program Compliance</td>
<td>Various</td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oas/map/">States' Collection of Medicaid Rebates for Physician-Administered Drugs</a></td>
<td>Program Compliance</td>
<td>Expected Issue in 2017</td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/reports-and-publications/archives/workplan/2017/HHS%20OIG%20Work%20Plan%202017_508.pdf#page=44">Medicare Part D Rebates Related to Drugs Dispensed by 340B Pharmacies</a></td>
<td>Reimbursement Policy</td>
<td>Expected Issue in 2017</td>
<td>Medicare Part D</td>
</tr>






<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-12-12-00210.asp">Least Costly Alternative Policies:  Impact on Prostate Cancer Drugs Covered Under Part B (OEI-12-12-00210)</a></td>
<td>Reimbursement Policy</td>
<td>2012/11 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/OEI-12-12-00260.asp">Medicare Could Collect Billions If Manufacturers Were Required To Pay Rebates for Part B Drugs (OEI-12-12-00260)</a></td>
<td>Reimbursement Policy</td>
<td>2013/09 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-12-00550.asp">Update: Medicare Payments for End Stage Renal Disease Drugs (OEI-03-12-00550) </a></td>
<td>Spending Trends, Reimbursement Policy</td>
<td>2014/03 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-11-00640.asp">Medicaid Drug Pricing in State Maximum Allowable Cost Programs (OEI-03-11-00640)</a></td>
<td>Reimbursement Policy</td>
<td>2013/08 </td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-13-00650.asp">Medicaid Rebates for Brand-Name Drugs Exceeded Part D Rebates by a Substantial Margin (OEI-03-13-00650)</a></td>
<td>Reimbursement Policy</td>
<td>2015/04 </td>
<td>Medicare Part D</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-12-14-00030.asp">Part B Payments for 340B Purchased Drugs (OEI-12-14-00030)</a></td>
<td>Reimbursement Policy</td>
<td>2015/11 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-12-16-00340.asp">CMS Should Address Medicare's Flawed Payment System for DME Infusion Drugs (OEI-12-16-00340)</a></td>
<td>Reimbursement Policy</td>
<td>2016/09 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region6/61500030.asp">Average Manufacturer Prices Increased Faster Than Inflation for Many Generic Drugs (A-06-15-00030)</a></td>
<td>Spending Trends, Reimbursement Policy</td>
<td>2015/12 </td>
<td>Medicaid</td>
</tr>

<tr>
<td><a href="https://oig.hhs.gov/reports-and-publications/archives/workplan/2017/HHS OIG Work Plan 2017_508.pdf#page=37">Inflation-Indexed Rebates for Part B Drugs: Potential Savings for Medicare (OEI-12-17-00180)</a>	</td>
<td>Reimbursement Policy,	Spending Trends	</td>
<td>Expected Issue in 2017	</td>
<td>Medicare Part B</td>
</tr>




<tr>
<td><a href="https://oig.hhs.gov/reports-and-publications/archives/workplan/2017/HHS%20OIG%20Work%20Plan%202017_508.pdf#page=37">Potential Savings if Medicare Implemented Inflation-Indexed Rebates for Part B Drugs (OEI-12-16-00560)</a></td>
<td>Reimbursement Policy, Spending Trends</td>
<td>Expected Issue in 2017</td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/reports-and-publications/archives/workplan/2017/HHS%20OIG%20Work%20Plan%202017_508.pdf#page=49">Specialty Drug Pricing and Reimbursement in Medicaid</a></td>
<td>Reimbursement Policy</td>
<td>Expected Issue in 2018</td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/reports-and-publications/archives/workplan/2017/HHS%20OIG%20Work%20Plan%202017_508.pdf#page=45">Increases in Prices for Brand-Name Drugs Under Medicare Part D (OEI-03-15-00080)</a></td>
<td>Spending Trends</td>
<td>Expected Issue in 2017</td>
<td>Medicare Part D</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-02-16-00270.asp">High-Price Drugs are Increasing Federal Payments for Medicare Part D Catastrophic Coverage (OEI-02-16-00270)</a></td>
<td>Spending Trends</td>
<td>2017/01 </td>
<td>Medicare Part D</td>
<!-- NOTE: This report is being released in conjunction with portfolio. We will add link later. -->
</tr>




<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-11-00060.asp">Replacing Average Wholesale Price: Medicaid Drug Payment Policy (OEI-03-11-00060)</a></td>
<td>Reimbursement Policy</td>
<td>2011/07 </td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-11-00650.asp">Analyzing Changes to Medicaid Federal Upper Limit Amounts (OEI-03-11-00650)</a></td>
<td>Reimbursement Policy</td>
<td>2012/10 </td>
<td>Medicaid</td>
</tr>


<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-07-00440.pdf">Beneficiary Utilization of Albuterol and Levalbuterol Under Medicare Part B (OEI- 03-07-00440)</a></td>
<td>Reimbursement Policy, Spending Trends</td>
<td>2009/08 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-05-00310.pdf">Calculation of Volume Weighted Average Sales Price for Medicare Part B Prescription Drugs (OEI-03-05-00310)</a></td>
<td>Data Integrity</td>
<td>2006/02 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-02-16-00290.asp">High Part D Spending on Opioids and Substantial Growth in Compounded Drugs Raise Concerns (OEI-02-16-00290) </a></td>
<td>Spending Trends</td>
<td>2016/06 </td>
<td>Medicare Part D</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-07-00600.pdf">Accuracy of Part D Plans' Drug Prices Provided on the Medicare Prescription Drug Plan Finder (OEI-03-07-00600)</a></td>
<td>Data Integrity</td>
<td>2009/07 </td>
<td>Medicare Part D</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-09-00510.asp">Medicare Payments for Newly Available Generic Drugs (OEI-03-09-00510)</a></td>
<td>Reimbursement Policy</td>
<td>2011/01 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-10-00260.asp">Medicaid Brand-Name Drugs: Rising Prices Are Offset by Manufacturer Rebates (OEI-03-10-00260)</a></td>
<td>Reimbursement Policy</td>
<td>2011/08 </td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-10-00360.asp">Medicare Payments for Drugs Used to Treat Wet Age-Related Macular Degeneration (OEI-03-10-00360)</a></td>
<td>Reimbursement Policy</td>
<td>2012/04 </td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-02-00660.pdf">Medicaid Rebates for Physician-Administered Drugs (OEI-03-02-00660)</a></td>
<td>Program Compliance</td>
<td>2004/04 </td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-03-08-00480.pdf">Average Sales Prices: Manufacturer Reporting and CMS Oversight (OEI-03-08-00480)</a></td>
<td>Program Compliance, Reimbursement Policy</td>
<td> 2010/02</td>
<td>Medicare Part B</td>
</tr>




<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-12-00540.asp">Manufacturer Safeguards May Not Prevent Copayment Coupon Use for Part D Drugs (OEI-05-12-00540)</a></td>
<td>Program Compliance, Data Integrity</td>
<td>2014/09 </td>
<td>Medicare Part D</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region6/61200038.asp">Medicare Part B Prescription Drug Dispensing and Supplying Fee Payment Rates Are Considerably Higher Than the Rates Paid by Other Government Programs (A-06-12-00038)</a></td>
<td>Reimbursement Policy</td>
<td> 2014/09</td>
<td>Medicare Part B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region6/60900033.asp">Review of Additional Rebates for Brand-Name Drugs with Multiple Versions (A-06-09-00033)</a></td>
<td>Reimbursement Policy</td>
<td> 2010/03</td>
<td>Medicaid</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-10-00450.asp">Gaps in Oversight of Conflict of Interest in Medicare Prescription Drug Decisions (OEI-05-10-00450)</a></td>
<td>Incentive Alignment</td>
<td>2013/03 </td>
<td>Medicare Part D</td>

</tr>


<tr>
<td><a href="https://oig.hhs.gov/oei/reports/oei-05-13-00431.asp">Contract Pharmacy Arrangements in the 340B Program (OEI-05-13-00431)</a></td>
<td>Program Compliance</td>
<td>2014/02 </td>
<td>340B</td>
</tr>



<tr>
<td><a href="https://oig.hhs.gov/reports-and-publications/archives/workplan/2017/HHS%20OIG%20Work%20Plan%202017_508.pdf#page=44">Questionable Billing for Compounded Topical Drugs in Part D (OEI-02-16-00440)</a></td>
<td>Spending Trends, Program Compliance</td>
<td>Expected Issue in 2017</td>
<td>Medicare Part D</td>
</tr>

<tr>
<td><a href="/oei/drug-pricing.asp">Congressionally Mandated ASP/AMP Comparisons</a></td>
<td>Data Integrity</td>
<td>Ongoing</td>
<td>Medicare Part B</td>
</tr>




<tr><td><a href="/oei/drug-pricing.asp">Congressionally Mandated ASP/AMP Comparisons</a></td>
<td>Data Integrity</td>
<td>Various</td>
<td>Medicare Part B</td>
</tr>


<tr>
<td><a href="https://oig.hhs.gov/oas/reports/region9/91402024.asp">Medicare Part B Overpaid Millions for Selected Outpatient Drugs (A-09-14-02024)</a>	</td>
<td>Program Compliance		</td>
<td>2015/07 	</td>
<td>Medicare Part B	</td>
</tr>




</tbody>


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
