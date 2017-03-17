
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="Interactive Map of Expenditures " />
<meta name="description" content="Interactive Map of Expenditures " />
<title>Interactive Map of Expenditures | MFCU | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->

<script type="text/javascript">
		// Create the tooltips only when document ready
		jQuery(document).ready(function()
		{
	
		 jQuery('area').each(function()
			 {
			
	
					jQuery(this).qtip({
							content: jQuery(this).attr('alt'), // Use the ALT attribute of the area map
							style: {
								classes: 'ui-tooltip-blue ui-tooltip-shadow ui-tooltip-rounded'
							},
							events: {
									show: function(){ 
										jQuery('.toggle01').hide(); 
										jQuery('.buttonYear').click(function () {
											jQuery('.toggle01, .toggle02').toggle();
										});
																		
										}
							},		
							hide: {
									when: 'mouseout',
									fixed: true,
									delay: 100
									},		
							position: { 
									target: 'mouse',
									adjust: { mouse: false }
							},
							tip: true
					});
			 });
			 
			
			  //jQuery('area .toggle01').hide();
					
			jQuery('area').qtip({}).removeAttr('alt').removeAttr('title');
			
		

			
		});
	</script>



<!-------------/ head closes and body opens / --->

<!--#include virtual="/layout/head-body-tags.asp" -->

<!------------/ head closes and body opens / --->


<div id="bodyContainer">
	<div id="textReset">
		<!--#include virtual="/layout/header.asp" -->
		<div id="mainBody">
			<div id="fullInterior">
				<div id="breadcrumbs">
					<ul>
						<li>
							<a href="/">Home</a>
						</li>
						<li>
							<a href="/fraud/index.asp">Fraud</a>
						</li>	
						<li>
							<a href="/fraud/medicaid-fraud-control-units-mfcu/index.asp">Medicaid Fraud Control Units</a>
						</li>	            
						<li>
						Statistical Data for Fiscal Year 2011
						</li>
					</ul>
				</div>
				<div id="mainContentInterior">
					 <a class="viewMore" href="/fraud/medicaid-fraud-control-units-mfcu/index.asp">Back to Medicaid Fraud Control Units </a>
				 <a class="viewMore"  style="margin-right: 10px"  href="/fraud/medicaid-fraud-control-units-mfcu/interactive-map.asp">Fiscal Year 2010 Map</a>
			
					<h1>Medicaid Fraud Control Units <br /> <sub>Statistical Data for Fiscal Year 2011</sub></h1>
		
					<img src="/images/us-map.jpg" width="894" height="644" border="0" usemap="#Map" alt="Map of the United States">
<map name="Map">
  
  
  
<area shape="poly" coords="566,313,606,307,621,347,625,357,627,372,627,381,630,388,586,390,589,402,587,408,581,399,574,408,568,376,569,330,566,312" href="#" alt="<div class='statePopup'>
           
<h2>Alabama</h2>
<h3 class='tooltiph3'>Outcomes</h3>
<ul>
<li>Investigations<sup>1</sup> - 29</li>
<li>Indicted/Charged - 4</li>
<li>Convictions	- 4</li>
<li>Civil Settlements/Judgments	- 30</li>
<li>Recoveries<sup>2</sup>	$24,449,457.09</li>
</ul>
<h3 class='tooltiph3'>Resources 2011</h3>
<ul>
<li>MFCU Grant Expenditures - $1,005,505.56</li>
<li>Staff on Board - 8</li>
</ul>
</div>
" />  

<!-- MFCU requested that the toggle feature be removed - jl 03/19/2011
          <area shape="poly" coords="566,313,606,307,621,347,625,357,627,372,627,381,630,388,586,390,589,402,587,408,581,399,574,408,568,376,569,330,566,312" alt="
           <div class='statePopup'>
					 <span class='buttonYear' style='float: right; padding: 5px;' href='#'>Toggle 2010/2011 Data</span>
          <h2>Alabama</h2>
						<div class='toggle01'>
						
          <h3 class='tooltiph3'>Outcomes 2010</h3>
          <ul>
													<li>Investigations<sup>1</sup> - xxxxxxxxxxxxx
							</li>
											<li>Indicted/Charged - xxxxxxxxxxxxx
							</li>
											<li>Convictions	- xxxxxxxxxxxxx
							</li>
											<li>Civil Settlements/Judgments	- xxxxxxxxxxxxx
							</li>
											<li>Recoveries<sup>2</sup>	xxxxxxxxxxxxx
							</li>
											</ul>
											<h3 class='tooltiph3'>Resources	2010</h3>
											<ul>
										 
											<li>Total Medicaid Expenditures	- xxxxxxxxxxxxx
							</li>
											<li>Staff on Board - 8</li>
											</ul>
						</div>
						<div class='toggle02'>
						<h3 class='tooltiph3'>Outcomes 2011</h3>
          <ul>
													<li>Investigations<sup>1</sup> - 29
							</li>
											<li>Indicted/Charged - 4
							</li>
											<li>Convictions	- 4
							</li>
											<li>Civil Settlements/Judgments	- 30
							</li>
											<li>Recoveries<sup>2</sup>	$24,449,457.09
							</li>
											</ul>
											<h3 class='tooltiph3'>Resources 2011	</h3>
											<ul>
										 
											<li>Total Medicaid Expenditures	- $5,014,342,056.00
							</li>
											<li>Staff on Board - 8</li>
											</ul>
						</div>
        </div>
        " href="#"> -->

<area shape="poly" coords="154,572,159,554,148,541,125,529,130,512,146,507,146,498,124,498,111,488,122,478,138,490,120,470,162,447,190,446,236,456,252,460,255,530,276,543,295,561,265,554,235,540,210,538,183,554,175,565,164,577,152,575,60,613,45,605,150,567" href="#" alt="<div class='statePopup'>
          <h2>Alaska</h2>
          <h3 class='tooltiph3'>Outcomes</h3>
          <ul>
        <li>Investigations<sup>1</sup> -  132</li>
        <li>Indicted/Charged - 2</li>
        <li>Convictions	- 1</li>
        <li>Civil Settlements/Judgments	- 14</li>
        <li>Recoveries<sup>2</sup>	$2,522,677.52
</li>
        </ul>
        <h3 class='tooltiph3'>Resources	</h3>
        <ul>
      
        <li>MFCU Grant Expenditures - $811,076.31</li>
        <li>Staff on Board - 5</li>
        </ul>
        </div>
        " />
    
     
   <area shape="poly" coords="121,357,126,349,126,340,133,329,140,324,136,309,134,288,143,287,149,272,223,279,213,391,179,390" href="#" alt="<div class='statePopup'>
          <h2>Arizona</h2>
          <h3 class='tooltiph3'>Outcomes</h3>
          <ul>
            <li>Investigations<sup>1</sup> - 177</li>
        <li>Indicted/Charged - 68</li>
        <li>Convictions	- 62</li>
        <li>Civil Settlements/Judgments	- 7</li>
        <li>Recoveries<sup>2</sup>	$3,305,386.60
</li>
        </ul>
        <h3 class='tooltiph3'>Resources	</h3>
        <ul>
       
        <li>MFCU Grant Expenditures - $1,716,283.18</li>
        <li>Staff on Board - 17</li>
        </ul>
        </div>
        " />
   
   <area shape="poly" coords="521,355,519,343,525,326,532,312,537,298,528,298,526,289,517,288,478,294,462,292,463,310,468,332,469,343,474,352,476,358" href="#" alt="<div class='statePopup'>
          <h2>Arkansas</h2>
          <h3 class='tooltiph3'>Outcomes</h3>
          <ul>
            <li>Investigations<sup>1</sup> - 122</li>
        <li>Indicted/Charged -  8</li>
        <li>Convictions	- 5</li>
        <li>Civil Settlements/Judgments	- 0</li>
        <li>Recoveries<sup>2</sup>	$5,087,284.77
</li>
        </ul>
        <h3 class='tooltiph3'>Resources	</h3>
        <ul>
        
        <li>MFCU Grant Expenditures - $2,161,110.68</li>
        <li>Staff on Board - 22</li>
        </ul>
        </div>
        " />
   
   
   <area shape="poly" coords="120,353,126,344,132,331,138,322,59,211,69,156,10,137,3,164,9,217,20,263,35,299,57,324,85,352" href="#" alt="<div class='statePopup'>
          <h2>California</h2>
          <h3 class='tooltiph3'>Outcomes</h3>
          <ul>
        <li>Investigations<sup>1</sup> - 1,314</li>
        <li>Indicted/Charged -  151</li>
        <li>Convictions	- 123</li>
        <li>Civil Settlements/Judgments	- 21</li>
        <li>Recoveries<sup>2</sup>	$388,262,022.64
</li>
        </ul>
        <h3 class='tooltiph3'>Resources	</h3>
        <ul>
        
        <li>MFCU Grant Expenditures - $27,843,822.10</li>
        <li>Staff on Board - 185</li>
        </ul>
        </div>
        " />
   
   
   <area shape="poly" coords="227,274,235,196,338,202,337,281" href="#" alt="<div class='statePopup'>
          <h2>Colorado</h2>
          <h3 class='tooltiph3'>Outcomes</h3>
          <ul>
            <li>Investigations<sup>1</sup> - 175</li>
        <li>Indicted/Charged -  12</li>
        <li>Convictions	- 4</li>
        <li>Civil Settlements/Judgments	- 10</li>
        <li>Recoveries<sup>2</sup>	$7,115,986.86
</li>
        </ul>
        <h3 class='tooltiph3'>Resources	</h3>
        <ul>
       
        <li>MFCU Grant Expenditures - $1,934,811.15</li>
        <li>Staff on Board - 17</li>
        </ul>
        </div>
        " />
 
   <area shape="poly" coords="769,144,767,138,765,128,769,125,782,123,788,121,789,130,788,135,814,155,820,160,874,160,876,167,821,167,814,158,803,147,795,140,788,136,784,136" href="#" alt="<div class='statePopup'>
          <h2>Connecticut</h2>
          <h3 class='tooltiph3'>Outcomes</h3>
          <ul>
            <li>Investigations<sup>1</sup> - 59</li>
        <li>Indicted/Charged -  10</li>
        <li>Convictions	- 9</li>
        <li>Civil Settlements/Judgments	- 4</li>
        <li>Recoveries<sup>2</sup>	$46,256,031.95
</li>
        </ul>
        <h3 class='tooltiph3'>Resources	</h3>
        <ul>

        <li>MFCU Grant Expenditures - $1,175,450.72</li>
        <li>Staff on Board - 8</li>
        </ul>
        </div>
        " />
 
   <area shape="poly" coords="743,182,750,205,760,203,787,202,834,202,839,198,793,198,785,202,760,201" href="#" alt="<div class='statePopup'>
          <h2>Delaware</h2>
          <h3 class='tooltiph3'>Outcomes</h3>
          <ul>
            <li>Investigations<sup>1</sup> - 416</li>
        <li>Indicted/Charged -  2</li>
        <li>Convictions	- 17</li>
        <li>Civil Settlements/Judgments	- 14</li>
        <li>Recoveries<sup>2</sup>	$1,193,708.79
</li>
        </ul>
        <h3 class='tooltiph3'>Resources	</h3>
        <ul>
     
        <li>MFCU Grant Expenditures - $1,661,581.03</li>
        <li>Staff on Board - 15</li>
        </ul>
        </div>
        " />
   
    <area shape="poly" coords="594,405,590,393,625,390,651,391,689,382,714,420,717,428,739,477,732,489,719,488,711,473,704,474,693,460,679,443,679,421,658,402,645,400,642,411,626,413,623,403,610,400,603,402" alt="
  <div class='statePopup'>
    <h2>Florida</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 704</li>
<li>Indicted/Charged - 90</li>
<li>Convictions	- 85</li>
<li>Civil Settlements/Judgments	- 44</li>
<li>Recoveries<sup>2</sup>	$67,312,144.69
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $15,231,803.35</li>
<li>Staff on Board - 144</li>
</ul>
	</div>" href="#">
   
   
   <area shape="poly" coords="613,309,640,302,645,305,654,316,672,329,690,345,696,357,693,378,681,378,665,382,643,385,631,385,631,357,620,333" href="#" alt="
  <div class='statePopup'>
    <h2>Georgia</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 399</li>
<li>Indicted/Charged - 7</li>
<li>Convictions	- 8</li>
<li>Civil Settlements/Judgments	- 21</li>
<li>Recoveries<sup>2</sup>	$54,330,962.25
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $3,747,770.47</li>
<li>Staff on Board - 37</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="338,526,336,513,358,506,360,519,392,527,407,540,436,547,451,560,476,591,474,604,452,616,440,588,449,571,435,558,426,564,419,550,407,543,393,538,386,533,370,524,353,524" href="#"  alt="
  <div class='statePopup'>
    <h2>Hawaii</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 209</li>
<li>Indicted/Charged - 4</li>
<li>Convictions	- 4</li>
<li>Civil Settlements/Judgments	- 6</li>
<li>Recoveries<sup>2</sup>	$2,062,716.89
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $1,326,367.68</li>
<li>Staff on Board - 14</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="120,158,137,114,142,95,138,80,138,67,143,48,143,29,146,22,148,26,148,40,149,54,163,72,163,83,162,101,172,106,178,118,182,126,207,123,207,137,201,158,200,170" href="#" alt="<div class='statePopup'>
    <h2>Idaho </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
<li>Investigations<sup>1</sup> - 97</li>
<li>Indicted/Charged - 6</li>
<li>Convictions	- 8</li>
<li>Civil Settlements/Judgments	- 11</li>
<li>Recoveries<sup>2</sup>	$1,367,030.50
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $699,272.94</li>
<li>Staff on Board - 9</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="504,206,508,195,510,190,522,186,521,167,536,164,551,162,556,177,558,200,564,217,564,234,559,250,559,266,552,270,541,264,536,250,531,250,531,235,518,231,510,218" href="#" alt="<div class='statePopup'>
    <h2>Illinois </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 326</li>
<li>Indicted/Charged - 48</li>
<li>Convictions	- 30</li>
<li>Civil Settlements/Judgments	- 18</li>
<li>Recoveries<sup>2</sup>	$47,805,621.79
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $9,668,505.80</li>
<li>Staff on Board - 70</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="561,178,572,175,583,175,596,173,597,187,600,200,603,213,607,226,607,233,597,239,588,244,583,251,571,254,565,250,572,234,567,220,562,199" href="#" alt=" <div class='statePopup'>
    <h2>Indiana </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 899</li>
<li>Indicted/Charged - 5</li>
<li>Convictions	- 13</li>
<li>Civil Settlements/Judgments	- 37</li>
<li>Recoveries<sup>2</sup>	$29,629,057.92
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $4,451,766.96</li>
<li>Staff on Board - 52</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="427,151,467,148,479,150,493,149,501,150,503,166,513,167,521,177,514,185,503,188,508,195,503,202,496,205,462,205,448,207,439,205,431,176,426,164" href="#" alt="<div class='statePopup'>
    <h2>Iowa </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 90</li>
<li>Indicted/Charged - 29</li>
<li>Convictions	- 45</li>
<li>Civil Settlements/Judgments	- 13</li>
<li>Recoveries<sup>2</sup>	$16,583,327.33
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $973,007.23</li>
<li>Staff on Board - 9</li>
</ul>
	</div>" />
   
   
   <area shape="poly" coords="341,224,341,267,340,281,455,281,456,236,441,230,446,225,439,219" href="#" alt=" <div class='statePopup'>
    <h2>Kansas </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 182</li>
<li>Indicted/Charged - 16</li>
<li>Convictions	- 15</li>
<li>Civil Settlements/Judgments	- 21</li>
<li>Recoveries<sup>2</sup>	$24,837,656.66
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,319,755.58</li>
<li>Staff on Board - 14</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="546,285,564,280,575,277,613,277,630,271,650,252,654,247,647,235,644,233,626,229,614,226,610,232,605,239,600,243,588,252,580,257,565,260,563,270,555,278,549,273" href="#" alt="<div class='statePopup'>
    <h2>Kentucky </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 158</li>
<li>Indicted/Charged - 6</li>
<li>Convictions	- 18</li>
<li>Civil Settlements/Judgments	- 28</li>
<li>Recoveries<sup>2</sup>	$81,439,780.56</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $2,530,903.86</li>
<li>Staff on Board - 27</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="481,426,484,407,483,394,479,383,478,371,479,363,522,360,523,371,521,383,517,398,527,399,541,398,545,397,552,410,558,419,558,433,539,441,526,434,523,425,508,430,497,431" href="#" alt="<div class='statePopup'>
    <h2>Louisiana </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 404</li>
<li>Indicted/Charged - 187</li>
<li>Convictions	- 76</li>
<li>Civil Settlements/Judgments	- 30</li>
<li>Recoveries<sup>2</sup>	$26,324,536.00
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $4,752,048.09</li>
<li>Staff on Board - 51</li>
</ul>
	</div>" />
    
   <area shape="poly" coords="779,53,783,50,786,35,788,13,794,6,803,5,810,4,815,17,819,26,821,31,828,31,835,39,837,42,834,49,822,60,812,69,809,78,802,86,799,93,792,89" href="#" alt="<div class='statePopup'>
    <h2>Maine </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 45</li>
<li>Indicted/Charged - 1</li>
<li>Convictions	- 5</li>
<li>Civil Settlements/Judgments	- 13</li>
<li>Recoveries<sup>2</sup>	$14,861,246.73
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $694,151.68</li>
<li>Staff on Board - 8.5</li>
</ul>
	</div>" />
   
   <area shape="poly" coords="703,192,709,193,713,196,720,196,729,196,734,200,732,206,732,211,737,214,742,214,745,212,751,212,752,219,752,229,753,231,756,222,757,214,759,206,752,207,748,207,746,204,745,197,741,187,740,183,712,189" href="#" alt="<div class='statePopup'>
    <h2>Maryland </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 171</li>
<li>Indicted/Charged - 7</li>
<li>Convictions	- 5</li>
<li>Civil Settlements/Judgments	- 15</li>
<li>Recoveries<sup>2</sup>	$11,119,831.38</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $2,577,674.29</li>
<li>Staff on Board - 23</li>
</ul>
	</div>" />
   
   
   <area shape="poly" coords="764,122,764,111,771,111,775,109,781,108,790,106,796,101,800,100,801,108,802,110,853,108,856,113,807,120,805,125,800,120,796,115,788,116,781,121" href="#" alt="<div class='statePopup'>
    <h2>Massachusetts  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 550</li>
<li>Indicted/Charged - 6</li>
<li>Convictions	- 6</li>
<li>Civil Settlements/Judgments	- 23</li>
<li>Recoveries<sup>2</sup> $43,315,246.54
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $5,079,896.00</li>
<li>Staff on Board - 44</li>
</ul>
	</div>" />
     
   <area shape="poly" coords="572,172,619,164,631,143,627,118,613,122,607,128,607,112,613,96,602,88,590,89,579,98,566,115,568,132,576,150" href="#" alt="<div class='statePopup'>
    <h2>Michigan  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 460</li>
<li>Indicted/Charged - 11</li>
<li>Convictions	- 21</li>
<li>Civil Settlements/Judgments	- 19</li>
<li>Recoveries<sup>2</sup>	$35,889,848.78
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $4,065,935.81</li>
<li>Staff on Board - 28</li>
</ul>
	</div>" />
     
   <area shape="poly" coords="409,38,420,106,418,110,421,122,422,144,424,147,497,143,491,134,473,122,473,110,467,101,472,96,476,89,476,81,488,70,513,51,469,48,461,41,442,32,427,34,416,40" href="#" alt="<div class='statePopup'>
    <h2>Minnesota  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 90</li>
<li>Indicted/Charged - 25</li>
<li>Convictions	- 17</li>
<li>Civil Settlements/Judgments	- 21</li>
<li>Recoveries<sup>2</sup>	$18,027,411.00
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $1,281,364.25</li>
<li>Staff on Board - 12</li>
</ul>
	</div>" /> 
 
   <area shape="poly" coords="557,410,551,400,550,393,540,393,527,394,520,394,524,386,525,373,527,360,525,352,521,344,527,331,532,318,534,314,563,313,565,321,566,332,565,362,567,386,570,402,571,407" href="#" alt="<div class='statePopup'>
    <h2>Mississippi  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 900</li>
<li>Indicted/Charged - 54</li>
<li>Convictions	- 51</li>
<li>Civil Settlements/Judgments	- 13</li>
<li>Recoveries<sup>2</sup>	$15,187,574.01
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $2,386,432.00</li>
<li>Staff on Board - 28</li>
</ul>
	</div>" />
    
    
    
   <area shape="poly" coords="460,283,460,261,460,238,456,229,452,228,452,223,446,217,441,211,467,210,483,209,499,210,509,221,514,233,517,236,520,238,527,243,524,253,536,257,540,266,544,272,544,281,541,295,531,297,531,290,527,282,521,284,493,289,467,290" href="#" alt="<div class='statePopup'>
    <h2>Missouri  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 174</li>
<li>Indicted/Charged - 2</li>
<li>Convictions	- 7</li>
<li>Civil Settlements/Judgments	- 20</li>
<li>Recoveries<sup>2</sup>	$43,338,910.22
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,750,628.97</li>
<li>Staff on Board - 20</li>
</ul>
	</div>" />
      
   <area shape="poly" coords="155,23,152,43,165,64,173,73,168,88,169,94,175,98,179,112,190,120,203,116,210,119,211,110,312,118,314,39" href="#" alt="<div class='statePopup'>
    <h2>Montana  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 21</li>
<li>Indicted/Charged - 2</li>
<li>Convictions	- 1</li>
<li>Civil Settlements/Judgments	- 9</li>
<li>Recoveries<sup>2</sup>	$2,751,485.89
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $724,218.59</li>
<li>Staff on Board - 8</li>
</ul>
	</div>" />
    
    
   
   <area shape="poly" coords="345,219,438,213,429,182,423,169,412,167,396,168,389,164,348,164,327,167,317,164,312,174,314,188,314,195,341,195" href="#" alt="<div class='statePopup'>
    <h2>Nebraska  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 116</li>
<li>Indicted/Charged - 4</li>
<li>Convictions	- 3</li>
<li>Civil Settlements/Judgments	- 19</li>
<li>Recoveries<sup>2</sup>	$8,081,318.27
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $706,579.91</li>
<li>Staff on Board - 8</li>
</ul>
	</div>" />
    
    
   <area shape="poly" coords="73,152,111,162,158,166,141,284,132,284,129,302,58,209" href="#" alt="<div class='statePopup'>
    <h2>Nevada   </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 26</li>
<li>Indicted/Charged - 22</li>
<li>Convictions	- 19</li>
<li>Civil Settlements/Judgments	- 8</li>
<li>Recoveries<sup>2</sup>	$2,704,584.12
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $1,721,661.51</li>
<li>Staff on Board - 14</li>
</ul>
	</div>" />
    
    
      <area shape="poly" coords="773,57,776,54,777,59,780,63,782,71,784,79,788,87,802,98,796,95,791,99,787,104,779,104,773,106,777,99,775,86,775,77,777,69,777,65,774,61" href="#" alt="<div class='statePopup'>
    <h2>New Hampshire    </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 24</li>
<li>Indicted/Charged - 3</li>
<li>Convictions	- 5</li>
<li>Civil Settlements/Judgments	- 19</li>
<li>Recoveries<sup>2</sup>	$3,708,472.45
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $552,310.08</li>
<li>Staff on Board - 5</li>
</ul>
	</div>" />
    
    
     <area shape="poly" coords="761,190,751,186,747,183,756,172,759,167,753,160,749,151,749,144,756,148,759,152,763,161,767,168,768,176,787,179,848,178,848,184,787,186,782,179,768,175" href="#" alt="<div class='statePopup'>
    <h2>New Jersey    </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 351</li>
<li>Indicted/Charged - 18</li>
<li>Convictions	- 17</li>
<li>Civil Settlements/Judgments	- 10</li>
<li>Recoveries<sup>2</sup>	$24,536,901.83
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $4,149,926.02</li>
<li>Staff on Board - 35</li>
</ul>
	</div>" />
    
   
   <area shape="poly" coords="218,390,225,280,278,282,315,285,319,285,313,343,314,367,315,381,254,381,239,381,242,389" href="#" alt="<div class='statePopup'>
    <h2>New Mexico    </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 113</li>
<li>Indicted/Charged - 5</li>
<li>Convictions	- 5</li>
<li>Civil Settlements/Judgments	- 26</li>
<li>Recoveries<sup>2</sup>	$3,387,516.58
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,238,254.09</li>
<li>Staff on Board - 14</li>
</ul>
	</div>" />
   
	 
   <area shape="poly" coords="674,149,671,146,683,134,676,122,689,117,707,117,720,108,717,96,718,87,747,68,752,89,763,105,761,119,763,136,767,147,772,148,785,138,789,144,764,155,760,148,748,140,733,130,706,139" href="#" alt="
   <div class='statePopup'>
  <h2>New York</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 652</li>
<li>Indicted/Charged - 80</li>
<li>Convictions	- 89</li>
<li>Civil Settlements/Judgments	- 108</li>
<li>Recoveries<sup>2</sup>	$136,439,800.00
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $40,523,523.00</li>
<li>Staff on Board - 282</li>
</ul>
  </div>
  " />
   
   <area shape="poly" coords="628,302,631,298,635,294,636,291,643,286,648,284,652,280,659,274,662,271,665,265,758,244,771,264,762,281,752,285,738,294,737,303,732,308,715,292,704,289,698,291,689,291,684,290,679,286,668,288,656,290,652,298" href="#" alt="<div class='statePopup'>
    <h2>North Carolina</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 296</li>
<li>Indicted/Charged - 14</li>
<li>Convictions	- 22</li>
<li>Civil Settlements/Judgments	- 20</li>
<li>Recoveries<sup>2</sup>	$49,284,697.95
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $4,216,787.93</li>
<li>Staff on Board - 54</li>
</ul>
	</div>" />

   
   

<area shape="poly" coords="317,40,314,71,317,86,317,99,414,100,407,68,406,48,405,42" href="#" alt="
   <div class='statePopup'>
  <h2>North Dakota</h2>
  <p>North Dakota has not established a Medicaid Fraud Control Unit (MFCU).  In 1994, the State was granted a waiver of the provision of the Omnibus Budget Reconciliation Act that requires States to establish a MFCU.</p>
  </div>
  " />
    
 
   
    
   
  <area shape="poly" coords="600,170,615,167,627,169,632,172,649,163,661,154,663,175,665,190,664,198,654,207,651,218,647,225,641,229,631,227,621,224,615,223,607,216,605,193" href="#" alt="<div class='statePopup'>
  <h2>Ohio</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 715</li>
<li>Indicted/Charged - 144</li>
<li>Convictions	- 116</li>
<li>Civil Settlements/Judgments	- 27</li>
<li>Recoveries<sup>2</sup>	$82,475,770.14
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $5,066,678.34</li>
<li>Staff on Board - 64</li>
</ul>
  </div>" />    
  
  <area shape="poly" coords="324,290,324,285,335,285,454,285,458,300,463,322,462,336,464,347,451,341,443,345,432,347,412,346,391,341,377,333,373,312,372,295,369,290" href="#" alt="<div class='statePopup'>
  <h2>Oklahoma</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 127</li>
<li>Indicted/Charged - 11</li>
<li>Convictions	- 13</li>
<li>Civil Settlements/Judgments	- 19</li>
<li>Recoveries<sup>2</sup>	$21,322,618.69
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,712,229.00</li>
<li>Staff on Board - 19</li>
</ul>
  </div>" />
  
  <area shape="poly" coords="11,133,10,120,18,107,35,60,37,55,45,60,47,61,48,68,49,72,53,76,102,77,121,77,130,81,133,84,132,97,124,121,120,138,117,152,113,158" href="#" alt="<div class='statePopup'>
  <h2>Oregon</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 68</li>
<li>Indicted/Charged - 22</li>
<li>Convictions	- 16</li>
<li>Civil Settlements/Judgments	- 13</li>
<li>Recoveries<sup>2</sup>	$10,760,962.00
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,588,221.09</li>
<li>Staff on Board - 13</li>
</ul>
  </div>" />

  <area shape="poly" coords="662,153,669,146,672,150,681,153,731,137,742,139,746,146,746,157,749,164,756,168,747,177,738,181,671,197" href="#" alt="<div class='statePopup'>
  <h2>Pennsylvania</h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 272</li>
<li>Indicted/Charged - 49</li>
<li>Convictions	- 38</li>
<li>Civil Settlements/Judgments	- 13</li>
<li>Recoveries<sup>2</sup>	$24,714,122.19
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $4,342,960.90</li>
<li>Staff on Board - 33</li>
</ul>
  </div>" />
  
  <area shape="poly" coords="791,131,791,124,791,118,796,121,798,127,801,133,820,142,883,141,883,150,823,149,817,143,805,135" href="#" alt="<div class='statePopup'>
  <h2>Rhode Island </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 58</li>
<li>Indicted/Charged - 4</li>
<li>Convictions	- 2</li>
<li>Civil Settlements/Judgments	- 5</li>
<li>Recoveries<sup>2</sup>	$2,164,581.99
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,156,390.06</li>
<li>Staff on Board - 10</li>
</ul>
  </div>" />
  
  
  <area shape="poly" coords="648,305,658,295,673,293,680,291,685,296,696,295,704,294,714,300,721,304,724,312,719,322,711,332,702,346,697,353,689,336,678,326,664,318" href="#" alt="<div class='statePopup'>
  <h2>South Carolina </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 219</li>
<li>Indicted/Charged - 24</li>
<li>Convictions	- 23</li>
<li>Civil Settlements/Judgments	- 19</li>
<li>Recoveries<sup>2</sup>	$19,622,856.52
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,313,573.67</li>
<li>Staff on Board - 16</li>
</ul>
  </div>" />
  
  <area shape="poly" coords="316,102,358,104,385,103,406,104,415,106,421,139,422,158,421,164,405,164,386,160,365,160,332,160,316,160" href="#" alt="<div class='statePopup'>
  <h2>South Dakota  </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 29</li>
<li>Indicted/Charged - 2</li>
<li>Convictions	- 2</li>
<li>Civil Settlements/Judgments	- 17</li>
<li>Recoveries<sup>2</sup>	$3,723,053.37
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $363,038.99</li>
<li>Staff on Board - 5</li>
</ul>
  </div>" />
  
  
  
  <area shape="poly" coords="534,310,540,302,543,299,545,291,545,288,555,286,566,283,577,283,591,283,606,281,616,279,625,277,636,274,653,271,659,265,655,275,641,284,631,290,625,296,626,301,616,305,602,304,566,308" href="#" alt="<div class='statePopup'>
  <h2>Tennessee </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 176</li>
<li>Indicted/Charged - 19</li>
<li>Convictions	- 40</li>
<li>Civil Settlements/Judgments	- 13</li>
<li>Recoveries<sup>2</sup>	$55,497,184.57
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $3,693,558.50</li>
<li>Staff on Board - 35</li>
</ul>
  </div>" />

   <area shape="poly" coords="258,384,319,389,322,294,368,294,369,335,386,343,407,347,433,351,455,347,470,352,474,388,482,397,479,415,478,427,411,479,421,505,390,499,371,465,356,432,332,428,315,436,315,445,296,437,288,413,279,405,264,393"  alt="
       <div class='statePopup'>
       <h2>Texas</h2>
      <h3 class='tooltiph3'>Outcomes</h3>
      <ul>
        <li>Investigations<sup>1</sup> - 1,339</li>
    <li>Indicted/Charged - 170</li>
    <li>Convictions	- 118</li>
    <li>Civil Settlements/Judgments	- 15</li>
    <li>Recoveries<sup>2</sup>	$190,868,770.29
</li>
    </ul>
    <h3 class='tooltiph3'>Resources	</h3>
    <ul>
  
    <li>MFCU Grant Expenditures - $16,029,213.68</li>
    <li>Staff on Board - 178</li>
    </ul>
    </div>
      " href="#">
    
    <area shape="poly" coords="148,264,221,276,231,199,203,192,204,175,161,170" href="#" alt="<div class='statePopup'>
  <h2>Utah </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 144</li>
<li>Indicted/Charged - 6</li>
<li>Convictions	- 10</li>
<li>Civil Settlements/Judgments	- 18</li>
<li>Recoveries<sup>2</sup>	$13,716,138.00
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,608,289.31</li>
<li>Staff on Board - 11</li>
</ul>
  </div>" />



  <area shape="poly" coords="748,66,771,61,776,67,770,72,771,80,773,92,773,102,769,109,764,98,757,88" href="#" alt="<div class='statePopup'>
  <h2>Vermont </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 135</li>
<li>Indicted/Charged - 4</li>
<li>Convictions	- 5</li>
<li>Civil Settlements/Judgments	- 11</li>
<li>Recoveries<sup>2</sup>	$2,013,839.78
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>
<li>MFCU Grant Expenditures - $636,487.67</li>
<li>Staff on Board - 7</li>
</ul>
  </div>" />

<area shape="poly" coords="636,268,654,251,658,249,663,253,669,250,678,248,682,244,688,238,690,232,692,226,701,221,706,210,710,202,715,198,722,198,728,203,729,209,727,215,731,217,737,217,743,220,744,226,749,236,755,238,752,241" href="#" alt="<div class='statePopup'>
  <h2>Virginia </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 310</li>
<li>Indicted/Charged - 17</li>
<li>Convictions	- 8</li>
<li>Civil Settlements/Judgments	- 17</li>
<li>Recoveries<sup>2</sup>	$26,445,228.60
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $8,539,299.40</li>
<li>Staff on Board - 81</li>
</ul>
  </div>" />


<area shape="poly" coords="646,231,650,225,653,222,655,216,657,210,662,205,664,202,668,198,673,200,681,198,689,197,689,204,701,194,711,196,701,209,695,218,687,224,683,238,669,249,660,249" href="#" alt="<div class='statePopup'>
  <h2>West Virginia </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 68</li>
<li>Indicted/Charged - 5</li>
<li>Convictions	- 9</li>
<li>Civil Settlements/Judgments	- 8</li>
<li>Recoveries<sup>2</sup>	$14,782,532.13

</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,104,042.72</li>
<li>Staff on Board - 14</li>
</ul>
  </div>" />

  <area shape="poly" coords="476,120,475,105,478,94,480,86,487,79,497,74,503,72,501,81,534,57,538,71,551,74,587,67,600,76,562,86,553,100,543,117,555,112,553,139,551,156,508,164,503,144,494,130" href="#" alt="<div class='statePopup'>
  <h2>Wisconsin </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 299</li>
<li>Indicted/Charged - 5</li>
<li>Convictions	- 5</li>
<li>Civil Settlements/Judgments	- 9</li>
<li>Recoveries<sup>2</sup>	$14,810,006.00
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $1,444.581.36</li>
<li>Staff on Board - 13</li>
</ul>
  </div>" /> 

  <area shape="poly" coords="206,187,213,113,248,118,271,119,294,120,307,122,312,123,308,197,231,192" href="#" alt="<div class='statePopup'>
  <h2>Wyoming </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 43</li>
<li>Indicted/Charged - 2</li>
<li>Convictions	- 2</li>
<li>Civil Settlements/Judgments	- 9</li>
<li>Recoveries<sup>2</sup>	$1,690,078.52
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $444,788.83</li>
<li>Staff on Board - 4</li>
</ul>
  </div>" /> 
 
 
   <area shape="poly" coords="37,51,39,29,36,15,38,10,49,17,60,22,62,29,67,23,67,4,140,19,135,51,131,78,104,73,88,74,81,74,71,71,57,71,51,69,52,58,44,54" href="#" alt="<div class='statePopup'>
  <h2>Washington </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 834</li>
<li>Indicted/Charged - 11</li>
<li>Convictions	- 13</li>
<li>Civil Settlements/Judgments	- 11</li>
<li>Recoveries<sup>2</sup>	$19,453,060.99
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $2,617,429.00</li>
<li>Staff on Board - 22</li>
</ul>
  </div>" /> 

   <area shape="poly" coords="784,228,785,242,861,239,864,232" href="#" alt="<div class='statePopup'>
  <h2>Washington DC </h2>
  <h3 class='tooltiph3'>Outcomes</h3>
  <ul>
	<li>Investigations<sup>1</sup> - 102</li>
<li>Indicted/Charged - 4</li>
<li>Convictions	- 10</li>
<li>Civil Settlements/Judgments	- 10</li>
<li>Recoveries<sup>2</sup>	$2,583,931.73
</li>
</ul>
<h3 class='tooltiph3'>Resources	</h3>
<ul>

<li>MFCU Grant Expenditures - $2,256,144.00</li>
<li>Staff on Board - 21</li>
</ul>
  </div>" /> 
   
   
</map>

<p><sup>1</sup>Investigations are defined as the total number of open investigations at the end of the fiscal year.</p>
<p><sup>2</sup> Recoveries are defined as the amount of money that defendants are required to pay as a result of a settlement, judgment, or prefiling settlement in criminal and civil cases and may not reflect actual collections.  Recoveries may involve cases that include participation by other Federal and State agencies.</p>
<p>
Information in this chart was self-reported by the 50 State MFCUs, except Total Medicaid Expenditures.  MFCU Grant Expenditures and Total Medicaid Expenditures include both Federal and State shares.  </p>
<p>Source Data:
<a href="/fraud/medicaid-fraud-control-units-mfcu/expenditures_statistics/fy2011-statistical-chart.htm" target="_blank"> Statistical Chart  FY 2011</a>
</p>
	<script type="text/javascript">
		jQuery(document).ready(function()
		{
	
					});
					</script>

					</div><!-- mainContentInterior ends -->
				</div><!-- fullInterior ends -->
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
