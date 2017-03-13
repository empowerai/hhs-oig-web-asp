
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="Challenge 3: Health Information Technology and the Meaningful and Secure Exchange and Use of Electronic Information" />
<meta name="description" content="Challenge 3: Health Information Technology and the Meaningful and Secure Exchange and Use of Electronic Information" />
<title>Challenge 3: Health Information Technology and the Meaningful and Secure Exchange and Use of Electronic Information</title>

<!--#include virtual="/layout/head.asp" -->  
<!--#include file="./global-includes.asp" -->  

<script src="./js/jquery.sticky.js"></script>

<script>
$(document).ready(function(){
    $("#sticker").sticky({bottomSpacing:650});
  });

$(document).ready(function() {

/* $('.gppost').collapser({
	mode: 'lines',
	truncate: 3,
	showText: 'Continue reading >>',
  hideText: 'Close'
}); */



    $('.dynamic-size').each(function(){
           var dWidth 	= parseInt($(this).attr('href').match(/width=[0-9]+/i)[0].replace('width=',''));
           var dHeight 	=  parseInt($(this).attr('href').match(/height=[0-9]+/i)[0].replace('height=',''));
			$(this).fancybox({
				'width':dWidth,
				'height':dHeight,
				'autoScale'     	: false,
				'transitionIn'		: 'fade',
				'transitionOut'		: 'fade',
				'type'			: 'iframe',
        'cyclic': true
			});
      }); 


});


$(function() {
  $('a[href*="#"]:not([href="#"])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});

</script>


<script type="text/javascript" src="../../portfolio/home-health/stepcarousel.js">

/***********************************************
* Step Carousel Viewer script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* Please keep this notice intact
***********************************************/

</script>
<link rel="stylesheet" type="text/css" href="./carousel.css" />



<script type="text/javascript">

stepcarousel.setup({
	galleryid: 'mygallery', //id of carousel DIV
	beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
	panelclass: 'panel', //class of panel DIVs each holding content
	autostep: {enable:true, moveby:1, pause:2000},
	panelbehavior: {speed:500, wraparound:true, wrapbehavior:'slide', persist:true},
	defaultbuttons: {enable: true, moveby: 1, leftnav: ['/fraud/child-support-enforcement/images/prev.gif', -5, 80], rightnav: ['/fraud/child-support-enforcement/images/next.gif', -12, 80]},
	statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
	contenttype: ['inline'] //content setting ['inline'] or ['ajax', 'path_to_external_file']
})


</script>



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
							<a href="./index.asp">Top Management &amp; Performance Challenges</a>
						</li>
					</ul>
				</div>
				<div id="leftContentInterior">

     



<div id="sub-page-banner" style="height:110px; padding-bottom:8px;">
<p>#3 Health Information Technology and the <strong>Meaningful and Secure</strong> Exchange and Use of Electronic Information</p>
</div>



<!-- <div id="tmc-video-box">

<div class="fake-video" style="width:200px; height: 175px; background: #000; margin:35px auto;"></div>

</div> -->


<h2>Why This Is a Challenge</h2>
<p>In support of its mission and operations, HHS maintains and uses expanding amounts of sensitive information.  Complete, accurate, and timely data can help ensure efficient operations of HHS and its programs, as well as support proactive program oversight.  Similarly, the American health care system increasingly relies on health information technology (health IT) and the electronic exchange and use of health information.  Health IT, including electronic health records (EHRs), offers opportunities for improved patient care, more efficient practice management, and improved overall public health.  However, HHS continues to face a number of significant challenges in this information-rich environment. </p> 



<p class="continue"><a class="b readmore" href="#readmore">Continue reading about this challenge >></a></p>



<!--#include file="./carousel.asp" -->

<div class="contentSeparator" id="readmore"></div>


<h2>Key Components of the Challenge</h2>


<p><strong class="i" id="ensuring">Ensuring Privacy and Security of Information.</strong>  Safeguarding privacy and ensuring data security&mdash;both physical and cyber security&mdash;are, and should remain, top priorities for HHS.  HHS must ensure that the data it creates and maintains are protected.  Equally important is the need to ensure appropriate protection of health information when considering and implementing policies related to the adoption of health IT and the exchange, storage, and use of electronic health information.  The rapid pace at which technology evolves, the continuing expansion of the Internet of Things (including networked medical devices), and the rise of mobile health technology contribute to the complexity of the privacy and security challenges facing HHS.  </p>

<p>The frequency of notable data breaches has increased significantly, and ransomware has emerged as a considerable threat in the health care space.  Data breaches can have serious consequences for the health care industry, HHS, and those whom HHS serves.  Threats to the confidentiality, integrity, and availability of data can result in a range of harms, including financial harm (to individuals and the public), identity theft, and physical patient harm.  Frequently-identified weaknesses include inadequacies in access controls, patch management, encryption of data, and website security vulnerabilities at HHS, health care providers, States, and other entities that do business with HHS.  Such weaknesses could impact the Department's ability to protect against unauthorized access to sensitive information.  HHS is also responsible for implementing certain provisions of the Cybersecurity Act of 2015, as well as the Continuous Diagnostics and Mitigation program in conjunction with the Department of Homeland Security (DHS).  When implementing technology, including complex, interoperable IT systems, HHS must utilize modern IT practices, such as those highlighted by the <a href="https://playbook.cio.gov/">Digital Services Playbook</a>. </p>

<p><strong class="i" id="improving">Improving the Flow of Complete, Accurate, and Timely Information.</strong>  To capitalize on growing amounts of data in the health care context<sup>1</sup>,  there must be meaningful access, subject to appropriate privacy and security safeguards, to complete, accurate, and timely data, where and when needed.  However, enabling and encouraging the flow of information remains a challenge for HHS.  Several factors may impede the flow of information.  These include technical barriers (e.g., lack of interoperability), the complex nature of Federal and State privacy and security laws, financial considerations (e.g., the cost of health IT acquisition), and behavioral issues&mdash;such as information blocking<sup>2</sup> and consumer confidence&mdash;that relate to a willingness to share information.</p>

<p>Impediments to information sharing can present patient safety concerns.  For example, a patient could be subjected to additional invasive testing that could have been avoided had information about prior results held by a different provider been shared.  Improving the appropriate flow of health information among providers, patients, and those delivering related services is also critical to the success of many delivery reform and other initiatives, including the <a href="https://www.whitehouse.gov/the-press-office/2015/01/30/fact-sheet-president-obama-s-precision-medicine-initiative">President's Precision Medicine Initiative</a> (PMI) and the <a href="https://www.whitehouse.gov/the-press-office/2016/02/01/fact-sheet-investing-national-cancer-moonshot">Cancer Moonshot</a>.  Without appropriate information sharing, those who participate in the initiatives may face challenges in achieving initiative goals.  <em>(For more information on health care delivery reforms, <a href="./challenge09.asp">see TMC #9</a>.)</em></p>

<p>The flow of information is also important between HHS and others, including providers.  For example, data created, maintained, or transmitted using EHRs or other health IT are used to ensure correct Medicare and Medicaid payments, including value-based payments.  Participants in certain initiatives also receive Departmental data for their use in improving the care they furnish.  Additionally, HHS increasingly uses and shares data as part of its program operations and program integrity efforts.  HHS must continue to find ways to leverage the vast amounts of data at its disposal to enhance decision-making, including streamlining and accelerating internal data exchange.  Similarly, it is critical that HHS ensure that the systems on which it relies, including Medicare and Medicaid systems, are developed and operate in a way that ensures that the data are complete, accurate, timely, and appropriately protected.  Prior OIG work has raised concerns about, for example, the completeness and accuracy of Transformed Medicaid Statistical Information System (T-MSIS) data. </p> 

<p><strong class="i" id="delivering">Delivering on the Promise of Health IT.</strong>  HHS has made significant investments in health IT.<sup>3</sup>   However, HHS faces challenges in ensuring that the goals associated with investing in the widespread adoption and use of EHRs and other health IT are fulfilled, and that the promise offered by health IT is realized.  These challenges are in addition to the challenges of ensuring privacy and security and improving the flow of complete, accurate, and timely information.  They include preventing inappropriate payments to participants who do not meet program requirements; ensuring that the beneficial characteristics of EHRs, including efficiency and ease of storage and access, are not used as tools for fraud; encouraging adoption and use of health IT by those who are not eligible for existing incentive programs; ensuring that patient safety benefits are realized; and encouraging the use of data that are exchanged.<sup>4</sup>   Connecting the entire continuum of those involved in health care, as well as human services, is important to leveraging the benefits of health IT in a value-driven health care system.  <em>(For more information on health delivery reforms, <a href="./challenge09.asp">see TMC #9</a>.)</em>  Also important is ensuring that the underlying data are robust enough to be leveraged for important research and regulation.<sup>5</sup>   When addressing these challenges, HHS must ensure coordination among internal agencies, as well as other Federal partners, with overlapping responsibility for various aspects of health IT to avoid potential gaps in policy and oversight that could undermine the promise of the health IT in which HHS has invested.</p>

<h2>Progress in Addressing the Challenge</h2>
<p>HHS has made progress with respect to privacy and security of its systems and information.  Last year, HHS participated in the U.S. Chief Information Officer's <a href="https://www.whitehouse.gov/sites/default/files/omb/budget/fy2016/assets/fact_sheets/enhancing-strengthening-federal-government-cybersecurity.pdf">30-day Cybersecurity Sprint</a>.  More recently, HHS adopted DHS's Continuous Diagnostics and Mitigation program and is in the process of implementing <a href="https://www.dhs.gov/publication/einstein-3-accelerated">EINSTEIN 3A</a>.</p>

<p>Similarly, HHS has made progress regarding the privacy and security of external health information.  For example, HHS participated in the development of the PMI:  <a href="https://www.whitehouse.gov/sites/whitehouse.gov/files/documents/PMI_Security_Principles_Framework_v2.pdf">Data Security Policy Principles and Framework</a>; the Food and Drug Administration (FDA) held a <a href="http://www.fda.gov/downloads/MedicalDevices/NewsEvents/WorkshopsConferences/UCM482021.pdf">public workshop</a> with DHS concerning medical device cybersecurity; HHS's coordination with the Federal Trade Commission led to the issuance of <a href="https://www.ftc.gov/tips-advice/business-center/guidance/mobile-health-apps-interactive-tool">new resources for health IT developers</a>, including some related to privacy and security; HHS, in conjunction with other Federal agencies, issued <a href="https://www.justice.gov/criminal-ccips/file/872771/download">ransomware guidance</a> discussing best practices; and the Office for Civil Rights (OCR) released a <a href="http://www.hhs.gov/sites/default/files/RansomwareFactSheet.pdf">Fact Sheet</a> on the Health Insurance Portability and Accountability Act (HIPAA) and ransomware.  Further, HHS has taken steps to implement portions of the Cybersecurity Act of 2015, including convening a <a href="http://www.phe.gov/preparedness/planning/CyberTF/Pages/default.aspx">health care industry cybersecurity task force</a>. </p>

<p>HHS has made great strides in developing a nationwide health IT infrastructure that supports the appropriate flow of complete, accurate, and timely information.  As of September 2016, more than 599,000 eligible professionals, eligible hospitals, and critical access hospitals were actively registered in the EHR incentive programs.<sup>6</sup>   Additionally, HHS has made a concerted effort to empower patients with respect to accessing their electronic health information.<sup>7</sup>   HHS continues to focus on liberating health data in order to improve patient outcomes and health care delivery as well as social services.  A sample of some of HHS's data initiatives include the Centers for Medicare & Medicaid Services' (CMS) release of new and updated public use files related to physician payment data and interactive online tools (such as the Medicare Part D Opioid Drug Mapping Tool and Mapping Medicare Disparities Tool); NIH's Genomic Data Commons platform to store, analyze, and distribute cancer genomics data; FDA's openFDA now allows direct downloads of data (openFDA offers access to medical device reports, enforcement reports, and drug adverse event reports); and Centers for Disease Control and Prevention's publically available data repository related to the ongoing Zika epidemic.  The year 2016 also marked the 7th Annual Health Datapalooza, which brought together startups, academics, Government agencies, and individuals.<sup>8</sup> </p>

<p>With respect to information blocking, HHS established a hotline to receive complaints concerning potential information blocking practices and issued a final rule implementing related attestation requirements under the Medicare Access and CHIP Reauthorization Act of 2015 (MACRA).  Further, HHS obtained <a href="https://www.healthit.gov/commitment">commitments</a> from providers of hospital EHRs, large private health systems, and leading professional associations and stakeholder groups to make EHRs work better for patients and providers. One of the areas of commitment relates to avoiding information blocking.</p>

<p>HHS's participation and leadership in the Healthcare Fraud Prevention Partnership (HFPP) continues to improve the flow of information to address program integrity issues.  The HFPP, a public-private partnership, brings interested parties&mdash;including private insurers,  public payors, law enforcement agencies, and others&mdash;together to share and use data and analytic tools to proactively address health care fraud, waste, and abuse.  Further, HHS continues to work with States to improve Medicaid data that are essential for protecting program integrity.  Specifically, CMS issued a final rule in December 2015 authorizing the withholding of a subset of Federal funds for Medicaid administration from States until T-MSIS data are reported as required and information systems meet operability standards.  In addition, CMS has established standards for the completeness, accuracy, and timeliness of T-MSIS data.  According to CMS, it is in the process of implementing T-MSIS with all states, and there are 18 states in production as of September 2016.  CMS also reports that it anticipates T-MSIS data to be available for the various stakeholders in early 2017 subject to state T-MSIS transition timelines. </p>

<p>HHS has continued to oversee the Medicare and Medicaid EHR incentive programs and has endeavored to advance the national conversation about important health IT issues to ensure that the potential benefits of health IT investments are realized.<sup>9</sup>   HHS has also finalized a rule to implement the MACRA provisions that replace the Medicare EHR Incentive Program for eligible professionals with the Advancing Care Information Performance Category of the Merit-based Incentive Payment System (MIPS).</p>

<h2>What Needs To Be Done</h2>
<p>Threats to information privacy and security are evolving, as evidenced by the recent rise of ransomware, and HHS must remain vigilant.  While HHS has made progress with respect to protecting its own information, as highlighted in OIG work and a <a href="http://energycommerce.house.gov/sites/republicans.energycommerce.house.gov/files/114/Analysis/20150806HHSinformationsecurityreport.pdf">congressional report</a> from 2015, more remains to be done.  OIG work will continue to focus on HHS systems' privacy and security to support HHS's efforts to mitigate the risk of unauthorized access to its sensitive information.  HHS must also use available policy levers to address health IT privacy and security issues.  OIG work released in 2016 examined HIPAA-required contingency planning for hospitals' EHRs and discussed the role contingency plans can play in preventing and mitigating disruptions caused by ransomware and other problems.  Phase 2 of OCR's HIPAA Audit Program, which it launched in 2016, and OCR's efforts to increase investigations of smaller breaches (those involving fewer than 500 individuals)<sup>10</sup>  are additional activities that will bring attention to health IT privacy and security.  OIG work will continue to focus on privacy and security issues in the regulated community and on the related agencies to address concerns about similar risks for health information.  Ongoing work is considering privacy and security issues related to networked medical devices, and future work may consider additional privacy and security issues that arise from the continuing expansion of the Internet of Things.  </p>

<p>To reach HHS's goals, including goals related to achieving the learning health system identified in ONC's 10-Year Vision Paper and those associated with the PMI and Cancer Moonshot, HHS must do more to improve the flow of complete, accurate, and timely information, subject to appropriate privacy and security safeguards.  This includes ensuring that HHS's data systems are developed and operated in a way that delivers complete, accurate, and timely data.  HHS must also find ways to remove potential barriers to leveraging health IT and related data to advance public health initiatives and to facilitate sharing and use of information along the entire continuum of care (beyond just those who are eligible for EHR incentives).  </p>

<p>Finally, to deliver on the promise of health IT, and given the magnitude of the investment in EHRs and other health IT programs, it will become increasingly important to measure the extent to which EHRs and health IT have achieved HHS's goals, which include improved health care and lower costs.  As HHS develops policies, such as those related to the development and implementation of meaningful use stages and implementation of the Advancing Care Information Performance Category of MIPS created in MACRA, it should continue to consider feedback from stakeholders to ensure that adopted policies advance the Nation toward HHS's stated goals, while appropriately reflecting the rapidly changing health IT landscape and balancing privacy and security considerations.  Additional guidance and technical assistance should be issued to address adoption, meaningful use, interoperability barriers, and program integrity safeguards.  It is also essential that privacy, security, and fraud prevention remain at the forefront of health IT efforts of HHS, ONC, OCR, and CMS.  Ongoing OIG work is examining the accuracy of Medicare and Medicaid EHR incentive payments for meaningful use and health IT interoperability across providers participating in accountable care organizations.  Future work may also examine health IT interoperability across HHS and between providers and patients as well as outcomes from health IT investments. </p> 

<h2 id="key-resources">Key OIG Resources</h2>
<ul>
<li>OIG Summary Report, "<a href="https://oig.hhs.gov/oas/reports/region18/181530400.asp">Wireless Penetration Test of Centers for Medicare & Medicaid Services' Data Centers</a>," August 2016.  </li>
<li>OIG Report, "<a href="https://oig.hhs.gov/oei/reports/oei-01-14-00570.asp">Hospitals Largely Reported Addressing Requirements for EHR Contingency Plans</a>," July 2016. </li>
<li>OIG Report, "<a href="https://oig.hhs.gov/oei/reports/oei-07-13-00120.asp">Not All States Reported Medicaid Managed Care Encounter Data as Required</a>," July 2015.  </li>
<li>OIG Report, "<a href="https://oig.hhs.gov/oei/reports/oei-01-11-00571.asp">CMS and Its Contractors Have Adopted Few Program Integrity Practices To Address Vulnerabilities in EHRs</a>," January 2014.  </li>
<li>OIG Report, "<a href="https://oig.hhs.gov/oei/reports/oei-01-11-00570.asp">Not All Recommended Fraud Safeguards Have Been Implemented in Hospital EHR Technology</a>," December 2013.   </li>
</ul>


<h2>Footnotes</h2>
<ol>
<li>Sources of relevant health care data, including patient-generated data, are ever increasing, particularly as the Internet of Things continues to expand.  </li>

<li>For more information on the topic of information blocking, see The Office of the National Coordinator for Health Information Technology's (ONC) Report to Congress, "Report on Health Information Blocking," April 2015.  (<a href="https://www.healthit.gov/sites/default/files/reports/info_blocking_040915.pdf">https://www.healthit.gov/sites/default/files/reports/info_blocking_040915.pdf</a>).</li>

<li>For example, in connection with the PMI, the National Institutes of Health (NIH) issued $55 million in grants, some of which will be used to establish a data and research support center and a participant technologies center.  (<a href="https://www.nih.gov/news-events/news-releases/nih-awards-55-million-build-million-person-precision-medicine-study">https://www.nih.gov/news-events/news-releases/nih-awards-55-million-build-million-person-precision-medicine-study</a>)</li>

<li>ONC noted the need to improve the use of exchanged information by non-Federal acute care hospitals.  ONC, Data Brief, No. 36, "Interoperability among U.S. Non-federal Acute Care Hospitals in 2015," May 2016.  (<a href="https://www.healthit.gov/sites/default/files/briefs/onc_data_brief_36_interoperability.pdf">https://www.healthit.gov/sites/default/files/briefs/onc_data_brief_36_interoperability.pdf</a>)</li>

<li>FDA, for example, issued draft guidance concerning the use of real-world evidence to support regulatory decision-making for medical devices, which notes that "[real-world data] and associated [real world evidence] could constitute valid scientific evidence, depending on the characteristics of the data."  (<a href="http://www.fda.gov/downloads/MedicalDevices/DeviceRegulationandGuidance/GuidanceDocuments/UCM513027.pdf">http://www.fda.gov/downloads/MedicalDevices/DeviceRegulationandGuidance/GuidanceDocuments/UCM513027.pdf</a>)</li>

<li>CMS "State Breakdown of Registration by Medicaid and Medicare Providers through September 30, 2016," September 2016.  </li>

<li>OCR issued a Fact Sheet (<a href="http://www.hhs.gov/hipaa/for-professionals/privacy/guidance/access/index.html">http://www.hhs.gov/hipaa/for-professionals/privacy/guidance/access/index.html</a>); ONC and OCR released educational videos (<a href="https://www.healthit.gov/access">https://www.healthit.gov/access</a>); and ONC issued a patient engagement playbook (<a href="https://www.healthit.gov/playbook/pe/">https://www.healthit.gov/playbook/pe/</a>).</li>

<li>HHS also collaborated with Health Datapalooza to add a post-conference day devoted to health IT privacy and security.  (<a href="https://www.healthit.gov/buzz-blog/privacy-and-security-of-ehrs/new-health-datapalooza-2016-day-devoted-privacy-security/">https://www.healthit.gov/buzz-blog/privacy-and-security-of-ehrs/new-health-datapalooza-2016-day-devoted-privacy-security/</a>)</li>

<li>Last year, ONC issued a document entitled "Connecting Health and Care for the Nation: A 10-Year Vision to Achieve an Interoperable Health IT Infrastructure"  (<a href="http://healthit.gov/sites/default/files/ONC10yearInteroperabilityConceptPaper.pdf">http://healthit.gov/sites/default/files/ONC10yearInteroperabilityConceptPaper.pdf</a>)  (10-Year Vision Paper), which describes plans to expand the sharing of information for health beyond EHRs and identifies privacy and security protections for health information as a building block for a nationwide interoperable health information infrastructure.  More recently, ONC issued a document entitled "Connecting Health and Care for the Nation:  A Shared Nationwide Interoperability Roadmap Draft Version 1.0,"  (<a href="https://www.healthit.gov/sites/default/files/hie-interoperability/nationwide-interoperability-roadmap-final-version-1.0.pdf">https://www.healthit.gov/sites/default/files/hie-interoperability/nationwide-interoperability-roadmap-final-version-1.0.pdf</a>)  which supports the vision laid out in the 10-Year Vision Paper.  ONC has also issued an information-blocking report to Congress.  (<a href="https://www.healthit.gov/sites/default/files/reports/info_blocking_040915.pdf">https://www.healthit.gov/sites/default/files/reports/info_blocking_040915.pdf</a>), a Health IT Safety Center Roadmap  (<a href="http://www.healthitsafety.org/uploads/4/3/6/4/43647387/roadmap.pdf">http://www.healthitsafety.org/uploads/4/3/6/4/43647387/roadmap.pdf</a>), and an updated Federal Health IT Strategic Plan for 2015-2020  (<a href="http://www.healthit.gov/sites/default/files/9-5-federalhealthitstratplanfinal_0.pdf">http://www.healthit.gov/sites/default/files/9-5-federalhealthitstratplanfinal_0.pdf</a>).</li>

<li>OCR listserv email from August 19, 2016, entitled "OCR Announces Initiative to More Widely Investigate Breaches Affecting Fewer than 500 Individuals," available at <a href="https://list.nih.gov/cgi-bin/wa.exe?A2=OCR-PRIVACY-LIST;65d278ee.1608">https://list.nih.gov/cgi-bin/wa.exe?A2=OCR-PRIVACY-LIST;65d278ee.1608</a>.</li>
</ol>


<!-- <h3 class="navigate-star"><a class="fancybox dynamic-size" href="./tmc-nav.asp?width=600&height=425">Navigate to Other Challenges</a></h3>  -->
				
        
        
        
        
				</div><!-- leftContentInterior -->
			</div>	<!-- leftSideInterior ends -->
      
   
      
			<div id="rightSide">
				<!--#include file="./tmc-nav-pop.asp" -->
          
<div id="subNav">
<div id="report-related">

<h4><strong>Key Components of the&nbsp;Challenge</strong></h4>

<ul class="tmc-sidebar-bullets">
<li><a href="#ensuring">Ensuring privacy and security of information  </a></li>
<li><a href="#improving">Improving the flow of complete, accurate, and timely information</a></li>
<li><a href="#delivering">Delivering on the promise of Health IT</a></li>
</ul>


<!-- <div class="sidebar-divider"></div>

<img src="./images/sample-graphic3.png" alt="A graphic describing the expected impact" width="240" /> -->


<div class="sidebar-divider"></div>


<!--#include file="./sticker.asp" -->



<div class="subNavBottom"></div>
</div>
</div><!-- subNav ends -->



<div class="clear"></div>
        

				<div class="clearPadding"></div>
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

<!-- Go to www.addthis.com/dashboard to customize your tools -->
<!-- <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-576033060eefebb8"></script> -->


</body>
</html>
