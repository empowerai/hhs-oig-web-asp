
<%
 Const adInteger = 3
 Const adDate = 7
 Const adVarChar = 200
 
 Dim rst
 
 Set rst = Server.CreateObject("ADODB.Recordset")
 
 Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
 
 Set objFolder = objFSO.GetFolder(Server.MapPath("updates"))
 
 rst.Fields.Append "Name", adVarChar, 200
 rst.Fields.Append "Type", adVarChar, 200
 rst.Fields.Append "DateCreated", adDate
 rst.Fields.Append "DateLastAccessed", adDate
 rst.Fields.Append "DateLastModified", adDate
 rst.Fields.Append "Size", adInteger
 
 rst.Open
 
 For Each objFile in objFolder.Files
  rst.AddNew
 
  rst("Name") = objFile.Name
  rst("Type") = objFile.Type
  rst("DateCreated") = objFile.DateCreated
  rst("DateLastAccessed") = objFile.DateLastAccessed
  rst("DateLastModified") = objFile.DateLastModified
  rst("Size") = objFile.Size
  rst.Update
 
 Next
 
 Set objFSO = Nothing
 Set objFolder = Nothing
 
 rst.Sort = "DateLastModified DESC" 
 rst.MoveFirst
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">


<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="keywords" />
<meta name="description" content="page description" />
<title>Recovery Act Oversight Reports | Reports & Publications | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->

<script type="text/javascript" src="/layout/js/jquery-ui.min.js"></script>

	<script>
	$(function() {
		$( "#accordion" ).accordion({
			autoHeight: false,
			navigation: true
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
							<a href="/reports-and-publications/index.asp">Reports &amp; Publications</a>
						</li>
						<li>
						Recovery Act Oversight Reports
						</li>
					
					</ul>
				</div>
				<div id="leftContentInterior">
					<h1>Recovery Act Oversight Reports</h1>
					<!--#include virtual="/reports-and-publications/recovery/reports.asp" -->
				<%
				 
				Dim objFSO, objTextStream
				Dim strFile
				 
				If Len(Request.QueryString("FileName")) > 0 Then
				 strFile = "/reports-and-publications/recovery/updates/" & Request.QueryString("FileName")
				Else
				 ' Get the first file in the recordset which should be the most recent
				 strFile = "/reports-and-publications/recovery/updates/" & rst("Name").Value
				End If
				 
				If Len(strFile) > 0 Then
				 
				 Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
				 
				 If objFSO.FileExists(Server.MapPath(strFile)) Then
					 'file exists
					 Set objTextStream = objFSO.OpenTextFile(Server.MapPath(strFile),1)
					 'output the contents of the file
					 Response.Write objTextStream.ReadAll
					 'tidy up
					 objTextStream.Close
					 Set objTextStream = Nothing 
				 End If 
				 
				 'clean up FSO object
				 Set objFSO = Nothing
				 
				End If
				 
				%>


        <div class="contentSeparator"></div>
			
					<p align="right"><a class="back" href="/recovery-act-oversight/">Return to Recovery Act Oversight</a></p>					
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


 
<%
 rst.Close
 Set rst = Nothing
%>