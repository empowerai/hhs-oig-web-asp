
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="keywords" content="HHSOIG, Office of Inspector General of U.S. Department of Health and Human Services, , Dan Levinson, Medicare Fraud Prevention, Medicaid Fraud Prevention" />
<meta name="description" content="The HHS OIG is the largest inspector general's office in the Federal Government, with more than 1,700 employees dedicated to combating fraud, waste and abuse and to improving the efficiency of HHS programs. A majority of the OIG's resources goes toward the oversight of Medicare and Medicaid" />
<title>Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->
<script type="text/javascript" src="/layout/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript">
  jQuery(function() {
			//What's New Slide controller
		jQuery('#whatsNewSlides').cycle({ 
	 		fx:     'fade',  //Transition Type
			prev:   '#buttonPrev', 
			next:   '#buttonNext',
			speed: 1000,
			timeout: 4500, 
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
		
		 //jQuery('li.item6 a')
			  // if focused, show the explanation
		//	  .focus(function(){
			    //$(this).addClass('focused')
			 //    jQuery('.warning').fadeIn();
		//	  }) 
		//	.focusout(function(){
			    //$(this).addClass('focused')
		//	     jQuery('.warning').fadeOut();
			//  })

	});
</script>

<script>

jQuery(document).ready(function(){

    jQuery("a[rel=photo-show]").fancybox({
    'titlePosition'	: 'over',
    'overlayColor'		: '#000',
		'overlayOpacity'	: 0.9
    });
      
    jQuery(".title-under").fancybox({
		'titlePosition'		: 'outside',
    'overlayColor'		: '#000',
		'overlayOpacity'	: 0.9
			});     

});   
    
</script>




<!--===============  [ MOBILE MEDIA QUERIES ]  ===============-->
<!--#include virtual="/layout/mobile-queries.asp" -->
<!--===============  [ /MOBILE MEDIA QUERIES ]  ===============-->


<!------------------------------------------------/ head closes and body opens, this frees us to add content outside the UI structure / --->

<!--#include virtual="/layout/head-body-tags.asp" -->

<!------------------------------------------------/ head closes and body opens / --->



<div id="bodyContainer" style="background-position:auto 100px !important;" class="mobilized">


<!--#include virtual="/includes/auto-deploy.asp" -->   


<!--===============  [ MOBILE BANNER ]  ===============-->
<!--#include virtual="/layout/mobile-banner.asp" -->
<!--===============  [ /MOBILE BANNER ]  ===============-->


	<div id="textReset">
	<!--#include virtual="/layout/header.asp" -->
			<div id="mainBody">     


      
			<div id="leftSide">
      
      
<style type="text/css">
#block1 a, 
#block2 a, 
#block3 a, 
#block4 a, 
#block5 a, 
#block6 a, 
#block7 a, 
#block8 a, 
#block9 a,
#block10 a  {
color: #fff; font-size:1.7em;
}

#block1 {float:left; width:49%; height:120px; margin:3px 2px 0 3px; background:#0C2A4B;} /* WN */
        #block1 a {display:block; width:99%; text-align:center; position:relative; top:40%;}
        
#block2 {float:left; width:48%; height:120px; margin:3px 2px 0 2px; background:#0C2A4B;} /* EAs */
        #block2 a {display:block; width:99%; text-align:center; position:relative; top:30%;}
        
#block3 {float:left; width:49%; height:120px; margin:3px 2px 0 3px; background:#0C2A4B; } /* MWF */
        #block3 a {display:block; width:99%; text-align:center; position:relative; top:30%;}
        
#block4 {float:left; width:48%; height:120px; margin:3px 2px 0 2px; background:#0C2A4B; } /* POD */
        #block4 a {display:block; width:99%; text-align:center; position:relative; top:40%;}
        
#block6 {float:left; width:49%; height:120px; margin:3px 2px 0 3px; background:#0C2A4B; } /* AO */
        #block6 a {display:block; width:99%; text-align:center; position:relative; top:30%;}  
              
#block7 {float:left; width:48%; height:120px; margin:3px 2px 0 2px; background:#0C2A4B; } /* CIA */
        #block7 a {display:block; width:99%; text-align:center; position:relative; top:30%; }   
         
#block8 {float:left; width:49%; height:120px; margin:3px 2px 3px 3px; background:#0C2A4B; } /* LEIE */
        #block8 a {display:block; width:99%; text-align:center; position:relative; top:40%;}  
                 
#block9 {float:left; width:48%; height:120px; margin:3px 2px 3px 2px; background:#0C2A4B; } /* V */
        #block9 a {display:block; width:99%; text-align:center; position:relative; top:40%;}
        
#block5 {float:left; width:98%; height:60px; margin:2px 2px 0 3px; background:#9B1D12;} /* RF */
        #block5 a {display:block; width:99%; text-align:center; position:relative; top:40%;}                     
        
#block10 {float:left; width:98%; height:60px; margin:2px 2px 0 3px; background:#0C2A4B;} /* RF */
        #block10 a {display:block; width:99%; text-align:center; position:relative; top:40%;}       

</style>
      
      

<!--===============  [ MOBILE CONTENT ]  ===============-->
<div id="oig-port">
<div id="mh-container">

<div id="block5"><a href="https://forms.oig.hhs.gov/hotlineoperations/index.aspx">REPORT FRAUD</a></div>
<div id="block10"><a href="https://exclusions.oig.hhs.gov/">Search Exclusions</a></div>
<div id="block1"><a href="/newsroom/whats-new/">What's New</a></div>
<div id="block2"><a href="/fraud/enforcement/criminal">Criminal/Civil Enforcement</a></div>
<div id="block3"><a href="/fraud/fugitives/">Most Wanted<br />Fugitives</a></div>
<div id="block4"><a href="/newsroom/podcasts/">Podcasts</a></div>
<div id="block6"><a href="/compliance/advisory-opinions/index.asp#advisory">Advisory<br />Opinions</a></div>
<div id="block7"><a href="/compliance/corporate-integrity-agreements/cia-documents.asp">Corporate Integrity Agreements</a></div>
<div id="block8"><a href="/newsroom/video/">Videos</a></div>
<div id="block9"><a href="/about-oig/careers/index.asp">Careers</a></div>
</div>
<div class="clear"></div>
</div>


<div id="m-footer">
<ul>
<li><a href="http://twitter.com/oigathhs">Follow us on Twitter</a></li>
<li>|</li>
<li><a href="/notices/privacy-notice.asp">Privacy</a></li>
<li>|</li>
<li><a href="/notices/disclaimers.asp">Disclaimers</a></li>
</ul>
</div>
<!--===============  [ /MOBILE CONTENT ]  ===============-->
            
      
      
 
      
<div id="whatsNewContainer">
<!-- <div id="whatsNewButtonContainer">
<a href="#" id="buttonNext"><span>Next</span></a>
<a href="#" id="buttonPrev"><span>Prev</span></a>
</div> -->
<div id="whatsNewSlides">
       

<!-------------------------- // KEEP FOR REUSE - OIG MONTHLY UPDATE  - LEIE UPDATE //

<div>
<a href='/newsroom/podcasts/updates.asp'><img style="width:622px; height:285px;" src="/images/homeSlides/marquee-oigupdate.png" alt="OIG Update" /></a>
<p><a href='/newsroom/podcasts/updates.asp'>Listen to the podcast</a> >></p>			
</div> 


<div>
<a href='/exclusions/exclusions_list.asp'><img style="width:622px; height:285px;" src="/images/homeSlides/leie-monthly.png" alt="LEIE Monthly Update" /></a>
<p><a href='/exclusions/exclusions_list.asp'>July Exclusions and Reinstatements</a> >></p>						
</div> 

 -->
 


 
 
<div>
<a href='/newsroom/podcasts/hhsoig.asp#mfcu'><img style="width:622px; height:285px;" src="/images/homeSlides/mfcu-podcast.png" alt="A close up of a badge" /></a>
<p><a href='/newsroom/podcasts/hhsoig.asp#mfcu'>Listen to the Podcast</a> >></p>						
</div> 
   
 
<div>
<a href='/fraud/consumer-alerts/alerts/phone-scam.asp'><img style="width:622px; height:285px;" src="/images/homeSlides/phone-scam.png" alt="A close up photo of a phone" /></a>
<p><a href='/fraud/consumer-alerts/alerts/phone-scam.asp'>OIG Warns of HHS OIG Hotline Telephone Scam</a> >></p>						
</div> 
  
 

 
<div>
<a href='/newsroom/video/2016/eoo/index.asp'><img style="width:622px; height:285px;" src="/images/homeSlides/eyeoversight12.png" alt="A photo of a stethoscope on top of paperwork" /></a>
<p><a href='/newsroom/video/2016/eoo/index.asp'>Watch the Video</a> >></p>						
</div> 
 
  
 
  


 
<!--  
<div>
<a href='/oei/reports/oei-02-16-00270.asp'><img style="width:622px; height:285px;" src="/images/homeSlides/securing-costs.png" alt="An elderly man looking concerned at documents" /></a>
<p><a href='/oei/reports/oei-02-16-00270.asp'>Ten Drugs Accounted for Nearly One-third of 2015 Catastrophic Spending</a> >></p>						
</div> 
 
<div>
<a href='/oei/reports/oei-02-15-00020.asp'><img style="width:622px; height:285px;" src="/images/homeSlides/2midnight.png" alt="An elderly man looking concerned at documents" /></a>
<p><a href='/oei/reports/oei-02-15-00020.asp'>Billions in Inappropriate Medicare Claims, Higher Cost for Some Patients</a> >></p>						
</div>  -->
  
 



  
  

 
 

 


 

</div><!-- HomeSlides -->
<div id="buttonContainerCorner">
<div id="buttonContainer"></div>
</div>
</div>


<!-- What's New -->

<div id="reportsCol">
<h2><a href="/newsroom/whats-new/index.asp">What's New</a></h2>
<dl>


<dt>March 9, 2017</dt>
<dd><a href="/testimony/docs/2017/levinson-testimony-032017.pdf">Testimony of Daniel R. Levinson</a></dd>
<dd><a href="/oas/reports/region5/51500056.asp">Review of Blue Cross Blue Shield Association Final Administrative Cost Proposals for Fiscal Years 2010 Through 2015</a>&nbsp;<cite>(A-05-15-00056)</cite></dd>  
<dd><a href="/oas/reports/region6/61605003.asp">Medicare Contractors' Payments to Providers for Hospital Outpatient Dental Services Generally Did Not Comply With Medicare Requirements</a>&nbsp;<cite>(A-06-16-05003)</cite></dd> 
<dd><a href="/oas/reports/region7/71603209.asp">Nebraska Did Not Always Comply With Federal and State Requirements for Claims Submitted for the Nonemergency Transportation Program</a>&nbsp;<cite>(A-07-16-03209)</cite></dd>


<dt>March 8, 2017</dt>
<dd><a href="/oas/reports/region4/41507058.asp">Medicare Compliance Review of Mayo Clinic Florida for 2013 and 2014</a>&nbsp;<cite>(A-04-15-07058)</cite></dd>
<dd><a href="/oas/reports/region2/21601013.asp">New York Improperly Claimed Federal Medicaid Reimbursement for Partial Hospitalization Services</a>&nbsp;<cite>(A-02-16-01013)</cite></dd>



</dl>

<a href="/newsroom/whats-new/index.asp" class="viewMore"><span>View More</span></a>
</div>

<!-- /What's New -->


<!-- Enforcement Actions -->

<div id="enforcementCol">	
<h2><a href="/fraud/enforcement/index.asp">Latest Enforcement Actions</a></h2>


<dl>

<dt id="CEA2017030801">March 7, 2017; U.S. Attorney; Middle District of Florida</dt>
<dd><a href="https://www.justice.gov/usao-mdfl/pr/tampa-man-pleads-guilty-paying-health-care-kickbacks">Tampa Man Pleads Guilty To Paying Health Care Kickbacks</a></dd>


<dt id="CEA2017030701">March 6, 2017; U.S. Department of Justice</dt>
<dd><a href="https://www.justice.gov/opa/pr/california-clinic-owner-sentenced-63-months-prison-role-occupational-therapy-fraud-scheme">California Clinic Owner Sentenced to 63 Months in Prison for Role in Occupational Therapy Fraud Scheme</a></dd> 


<dt id="CEA2017030702">March 6, 2017; U.S. Attorney; Southern District of Texas</dt>
<dd><a href="https://www.justice.gov/usao-sdtx/pr/clinic-manager-heads-prison-health-care-fraud">Clinic Manager Heads to Prison for Health Care Fraud</a></dd> 

<dt id="CEA2017030703">March 6, 2017; U.S. Attorney; District of New Jersey</dt>
<dd><a href="https://www.justice.gov/usao-nj/pr/bergen-county-doctor-convicted-taking-bribes-test-referral-scheme-new-jersey-clinical-lab">Bergen County Doctor Convicted Of Taking Bribes In Test-Referral Scheme With New Jersey Clinical Lab</a></dd> 


<!-- 
<dt id="CEA2017030704">March 6, 2017; U.S. Attorney; District of Vermont</dt>
<dd><a href="https://www.justice.gov/usao-vt/pr/brandon-woman-sentenced-medicaid-fraud">Brandon Woman Sentenced for Medicaid Fraud</a></dd>



<dt id="CEA2017022701">February 24, 2017; U.S. Department of Justice</dt>
<dd><a href="https://www.justice.gov/opa/pr/administrator-miami-area-home-health-agency-sentenced-126-months-prison-involvement-25">Administrator of Miami-Area Home Health Agency Sentenced to 126 Months in Prison for Involvement in $2.5 Million Medicare Fraud Scheme</a></dd> 
 


<dt id="CEA2017022702">February 24, 2017; U.S. Attorney; Southern District of Texas</dt>
<dd><a href="https://www.justice.gov/usao-sdtx/pr/jury-convicts-rio-grande-valley-area-durable-medical-equipment-company-owner-health">Jury Convicts Rio Grande Valley Area Durable Medical Equipment Company Owner of Health Care Fraud</a></dd> -->

<!-- <dt id="CEA2017022301">February 22, 2017; U.S. Attorney; District of Puerto Rico</dt>
<dd><a href="https://www.justice.gov/usao-pr/pr/owner-durable-medical-equipment-company-and-three-physicians-charged-health-care-fraud">Owner Of Durable Medical Equipment Company And Three Physicians Charged With Health Care Fraud And Aggravated Identity Theft</a></dd>  

 -->




</dl>

<a href="/fraud/enforcement/index.asp" class="viewMore"><span>View More</span></a>
</div>

<!-- /Enforcement Actions -->




			</div>	<!-- leftSide ends -->
			<div id="rightSide">
				<!--#include virtual="/layout/im-looking-for.asp" -->
				<!--#include virtual="/layout/exclusions-database.asp" -->
				<!--#include virtual="/layout/report-fraud.asp" -->
				<div class="clearPadding"></div>
				<!--#include virtual="/layout/email-alerts.asp" -->
				
				<div class="clearPadding"></div>
				<!--#include virtual="/layout/recovery-act.asp" -->
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
