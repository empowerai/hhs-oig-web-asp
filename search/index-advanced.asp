<!-- #include virtual="/includes/StripBrackets.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "https://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="https://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="keywords" />
<meta name="description" content="page description" />
<title>Advanced Search | Office of Inspector General | U.S. Department of Health and Human Services</title>
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
					 	jQuery("form#oig_search").validate({
							rules: {
								as_q: "required"			
								}
					});
			 });
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
							Advanced Search
						</li>
					</ul>
				</div>
				<div id="leftContentInterior">
		<h1>Advanced Search</h1>
   
      <form method="GET" action="https://search.hhs.gov/search?" name="oig_search" id="oig_search">
		<input name="submitted" type="hidden" value="submitted" />
		<input name="output" type="hidden" value="xml_no_dtd" />
		<input name="filter" type="hidden" value="0" />
		<input name="sort" type="hidden" value="date:D:S:d1" />
	    
		<input name="ie" type="hidden" value="UTF-8" />
		<input name="oe" type="hidden" value="UTF-8" />
	    <input name="lr" type="hidden" value="lang_en" />
		<input name="client" type="hidden" value="oig" />
	
		<input name="ud" type="hidden" value="1" />
		<!-- <input name="site" type="hidden" value="oig" /> -->
		<input name="proxystylesheet" type="hidden" value="oig_test" />
		<!-- <input name="proxyreload" type="hidden" value="1" /> -->
	
		
		<table border="0" cellpadding="3" cellspacing="0" width="100%">
            <tbody><tr bgcolor="#cbdced">
               <td>
			   
                  <table   border="0" cellpadding="0" cellspacing="0" width="100%">
                     <tbody><tr>
                        <td>

						<table border="0" cellpadding="2" cellspacing="0" width="100%">
						   <tr bgcolor="#cbdced">
								<td width="135">
							 <strong>Search Within</strong>
							</td>
							
							 <td>
									<select name="site">
			<option value="oig">Entire OIG Website</option>
      <option value="oig-oas-oei">All Reports &amp; Audits</option>	
			<option value="oig-oas">Office of Audit Services</option>
			<option value="oig-oei">Office of Evaluation and Inspections</option>					
			<option value="oig-advisory">Advisory Opinions </option>					
			<option value="oig-authorities">Authorities &amp; Federal Register Notices</option>					
			<option value="oig-testimonies">Testimonies &amp; Speeches</option>					
		</select>
							</td>
						   </tr>
						   </table>
						    <table border="0" cellpadding="2" cellspacing="0" width="100%">

                              <tbody><tr>
                                 <td valign="top" width="13%"><font size="-1"><br><b>Find results</b></font></td>
                                 <td width="85%">
                                    <table border="0" cellpadding="2" cellspacing="0" width="100%">
                                       <tbody><tr>
                                          <td><font size="-1">with <b>all</b> of the words</font></td>
                                          <td>
                                             <input class="required" name="as_q" size="25" value="" type="text">
										 </td>
                                          <td rowspan="4" valign="top"><font size="-1"><select name="num">
                                                   <option value="10" selected="selected">10 results</option>
                                                   <option value="20">20 results</option>
                                                   <option value="30">30 results</option>
                                                   <option value="50">50 results</option>

                                                   <option value="100">100 results</option></select></font></td>
                                          <td></td>
                                       </tr>
									  
                                       <tr>
                                          <td nowrap="nowrap"><font size="-1">with the <b>exact phrase</b></font></td>
                                          <td>
                                             
                                             <input name="as_epq" size="25" value="" type="text">

                                          </td>
                                       </tr>
                                       <tr>
                                          <td nowrap="nowrap"><font size="-1">with <b>at least one</b> of the words</font></td>
                                          <td>
                                             
                                             <input name="as_oq" size="25" value="" type="text">
                                          </td>

                                       </tr>
                                       <tr>
                                          <td nowrap="nowrap"><font size="-1"><b>without</b> the words</font></td>
                                          <td>
                                             
                                             <input name="as_eq" size="25" value="" type="text">
                                          </td>
                                       </tr>

                                    </tbody></table>
                                 </td>
                              </tr>
                           </tbody></table>
						   <table border="0" cellpadding="2" cellspacing="0" width="100%">
						   <tr bgcolor="#cbdced">
							<td width="274">
								<strong>Date Range </strong>(i.e., 2010/06/15)
		
		
		
							</td>
							<td>
			
							<input type="text" name="daterange" size="25" value="" id="daterange" />			
							</td>
						<!--	<td  width="60">
								<select name="daterange-start" id="daterange-start">
								</select>
							</td>
							
							 
							 <td>
								and
		<select name="daterange-end" id="daterange-end">
		</select>
							</td> -->
						   </tr>
						   </table>
                           
                          
                        </td>
                     </tr>
                
                     <tr bgcolor="#ffffff">
                        <td>
                           <table border="0" cellpadding="2" cellspacing="0" width="100%">

                              <tbody><tr>
                                 <td width="15%"><font size="-1"><b>File Format</b></font></td>
                                 <td nowrap="nowrap" width="40%"><font size="-1"><select name="as_ft">
                                          <option value="i">Only</option>
                                          <option value="e">Don't</option></select> return results of the file format</font></td>
                                 <td><font size="-1"><select name="as_filetype">
                                          <option value="" selected="selected">any format</option>

                                          <option value="pdf">Adobe Acrobat PDF (.pdf)</option>
                                          <option value="ps">Adobe Postscript (.ps)</option>
                                          <option value="doc">Microsoft Word (.doc)</option>
                                          <option value="xls">Microsoft Excel (.xls)</option>
                                          <option value="ppt">Microsoft Powerpoint (.ppt)</option>
                                          <option value="rtf">Rich Text Format (.rtf)</option></select></font></td>

                              </tr>
                           </tbody></table>
                        </td>
                     </tr>
                     <tr bgcolor="#ffffff">
                        <td>
                           <table border="0" cellpadding="2" cellspacing="0" width="100%">
                              <tbody><tr>
                                 <td width="15%"><font size="-1"><b>Occurrences</b></font></td>

                                 <td nowrap="nowrap" width="40%"><font size="-1"> Return results where my terms occur</font></td>
                                 <td><font size="-1"><select name="as_occt">
                                          <option value="any" selected="selected">
                                             anywhere in the page
                                             
                                          </option>
                                          <option value="title">in the title of the page</option>
                                          <option value="url">in the URL of the page</option></select></font></td>
                              </tr>

                           </tbody></table>
                        </td>
                     </tr>
                 <!--    <tr bgcolor="#ffffff">
                        <td>
                           <table border="0" cellpadding="2" cellspacing="0" width="100%">
                              <tbody><tr>
                                 <td width="15%"><font size="-1"><b>Domain</b></font></td>

                                 <td nowrap="nowrap" width="40%"><font size="-1"><select name="as_dt">
                                          <option value="i">Only</option>
                                          <option value="e">Don't</option></select>return results from the site or domain</font></td>
                                 <td>
                                    <table border="0" cellpadding="0" cellspacing="0">
                                       <tbody><tr>
                                          <td><input size="25" value="" name="as_sitesearch" type="text"></td>

                                       </tr>
                                       <tr>
                                          <td nowrap="nowrap" valign="top"><font size="-1"><i>e.g. google.com, .org</i></font></td>
                                       </tr>
                                    </tbody></table>
                                 </td>
                              </tr>
                              <tr>

                                 <td width="15%"><font size="-1"><b>Sort</b></font></td>
                                 <td colspan="2" nowrap="nowrap"><font size="-1"><select name="sort">
                                          <option value="">Sort by relevance</option>
                                          <option value="date:D:S:d1">Sort by date</option></select></font></td>
                              </tr>
                           </tbody></table>
                        </td>

                     </tr>-->
                  </tbody></table>
               </td>
            </tr>
         </tbody>
		 </table>
               </td>
            </tr>
         </tbody></table>
		 <div style="background: fff; display: block; padding: 15px 0;">
		 <input name="btnG" class="button" value="Search" type="submit">
		</div>
		 		<%				
				    if Request.QueryString("submitted") = "submitted" Then
				
					Response.Write("<iframe src=""https://search.hhs.gov/search?")
					
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
				%>
				
				
				</div><!-- leftContentInterior -->
			</div>	<!-- leftSideInterior ends -->
			<div id="rightSide">
				<!--#include virtual="/layout/im-looking-for.asp" -->
				<!-- #include virtual="/layout/sub-navigation/subnavigation-media.asp" -->
				<!--#include virtual="/layout/exclusions-database.asp" -->
				<!--#include virtual="/layout/report-fraud.asp" -->
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
</body>
</html>
