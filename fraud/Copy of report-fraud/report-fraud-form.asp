<%@ Language=VBScript %>
<% option Explicit %>
<%Response.CacheControl = "no-cache"
Response.AddHeader "Pragma", "no-cache"
Response.Expires = -1%>
<!-- #include virtual="/includes/upload.asp" -->
<!-- #include virtual="/includes/common.asp" -->
<!-- #include virtual="/includes/module.asp" -->

<%

Dim currentPage
Dim encType
Dim strError
Dim item
Dim strContentType
Dim objUploader
Dim strFormField
Dim i
Dim file
Dim strCaptchaResult



strContentType = Request.ServerVariables("HTTP_CONTENT_TYPE")
strCaptchaResult = ""


if instr(strContentType, ";") > 0 then
	strContentType = mid(strContentType, 1, instr(strContentType,";") - 1)
else
    strContentType = ""
end if

'Response.write("<!-- strContentType: " & strContentType & "-->")
'Response.write("<!-- attachmentFolder: " & attachmentFolder & "-->")
if strContentType = "multipart/form-data" then
   
	Set objUploader = New FileUploader
	
	objUploader.upload
	
	if  objUploader.files.count > 0 then
		dim fileList
		fileList = ""
		for each file in objUploader.files.items
			if file.FileName > "" then
				file.SaveToDisk(attachmentFolder)
				if fileList <> "" then
					fileList = fileList & ";"
				end if
				fileList = fileList & attachmentFolder & "\" & file.FileName
			end if

		next
		'Fix for Safari 7/21/2010 Craig Moran
		if fileList > "" then
			Call SendEmail(objUploader, fileList)
		else
			Call SendEmail(objUploader, "")
		end if
	else
	
		Call SendEmail(objUploader, "")
	end if
	currentPage = objUploader.form("currentPage")
else
    'Response.Write("Attempting to get page...")
	currentPage = Request.Form("currentPage")
	'Response.Write("Page is now.." & Request.Form("currentPage"))

end if



If currentPage = "" then
	currentPage = 1
Else
	if not IsNumeric(currentPage) then
		currentPage = 1
	end if
	if strContentType <> "multipart/form-data" then
	    If currentPage = 1  then
	        strCaptchaResult = recaptcha_confirm("6LfXPgkAAAAAANQNGNVB02w9npgfJZfv8GfUj7Jj",request.Form("recaptcha_challenge_field"),request.Form("recaptcha_response_field"))
	    end if
	    if strCaptchaResult = "" then
	        If Request.Form("rdoIdentify") = "No" then
			    currentPage = 3
		    Else
			    currentPage = Cint(currentPage) + 1
		    End If
		Else
		    
		    currentPage = 1
	    End If
		
	Else
		currentPage = Cint(currentPage) + 1
	End If
End If


If currentPage = 3 then
	encType = "multipart/form-data"
End if



%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<head>
<meta name="google-site-verification" content="tpATPqNEN3HXiSbtqevBE9NdgbuCiN9Vmr6EP94lx6w" />
<meta name="keywords" content="Report Fraud, Office of Inspector General" />
<meta name="description" content="page description" />
<title>Online | Report Fraud | Office of Inspector General | U.S. Department of Health and Human Services</title>
<!--#include virtual="/layout/head.asp" -->

<script language="JavaScript">
<!-- This script is based on the javascript code of Roman Feldblum (web.developer@programmer.net) -->
<!-- Original script : http://javascript.internet.com/forms/format-phone-number.html -->
<!-- Original script is revised by Eralper Yilmaz (http://www.eralper.com) -->
<!-- Revised script : http://www.kodyaz.com -->

var zChar = new Array(' ', '(', ')', '-', '.');
var maxphonelength = 13;
var phonevalue1;
var phonevalue2;
var cursorposition;

function ParseForNumber1(object){
phonevalue1 = ParseChar(object.value, zChar);
}
function ParseForNumber2(object){
phonevalue2 = ParseChar(object.value, zChar);
}

function backspacerUP(object,e) { 
if(e){ 
e = e 
} else {
e = window.event 
} 
if(e.which){ 
var keycode = e.which 
} else {
var keycode = e.keyCode 
}

ParseForNumber1(object)

if(keycode >= 48){
FormatPhone(object)
}
}

function backspacerDOWN(object,e) { 
if(e){ 
e = e 
} else {
e = window.event 
} 
if(e.which){ 
var keycode = e.which 
} else {
var keycode = e.keyCode 
}
ParseForNumber2(object)
} 

function GetCursorPosition(){

var t1 = phonevalue1;
var t2 = phonevalue2;
var bool = false
for (i=0; i<t1.length; i++)
{
if (t1.substring(i,1) != t2.substring(i,1)) {
if(!bool) {
cursorposition=i
bool=true
}
}
}
}

function FormatPhone(object){

var p = phonevalue1

p = p.replace(/[^\d]*/gi,"")

if (p.length < 3) {
object.value=p
} else if(p.length==3){
pp=p;
d4=p.indexOf('(')
d5=p.indexOf(')')
if(d4==-1){
pp="("+pp;
}
if(d5==-1){
pp=pp+")";
}
object.value = pp;
} else if(p.length>3 && p.length < 7){
p ="(" + p; 
l30=p.length;
p30=p.substring(0,4);
p30=p30+")"

p31=p.substring(4,l30);
pp=p30+p31;

object.value = pp; 

} else if(p.length >= 7){
p ="(" + p; 
l30=p.length;
p30=p.substring(0,4);
p30=p30+")"

p31=p.substring(4,l30);
pp=p30+p31;

l40 = pp.length;
p40 = pp.substring(0,8);
p40 = p40 + "-"

p41 = pp.substring(8,l40);
ppp = p40 + p41;

object.value = ppp.substring(0, maxphonelength);
}

GetCursorPosition()

if(cursorposition >= 0){
if (cursorposition == 0) {
cursorposition = 2
} else if (cursorposition <= 2) {
cursorposition = cursorposition + 1
} else if (cursorposition <= 5) {
cursorposition = cursorposition + 2
} else if (cursorposition == 6) {
cursorposition = cursorposition + 2
} else if (cursorposition == 7) {
cursorposition = cursorposition + 4
e1=object.value.indexOf(')')
e2=object.value.indexOf('-')
if (e1>-1 && e2>-1){
if (e2-e1 == 4) {
cursorposition = cursorposition - 1
}
}
} else if (cursorposition < 11) {
cursorposition = cursorposition + 3
} else if (cursorposition == 11) {
cursorposition = cursorposition + 1
} else if (cursorposition >= 12) {
cursorposition = cursorposition
}

//var txtRange = object.createTextRange();
//txtRange.moveStart( "character", cursorposition);
//txtRange.moveEnd( "character", cursorposition - object.value.length);
//txtRange.select();
}

}

function ParseChar(sStr, sChar)
{
if (sChar.length == null) 
{
zChar = new Array(sChar);
}
else zChar = sChar;

for (i=0; i<zChar.length; i++)
{
sNewStr = "";

var iStart = 0;
var iEnd = sStr.indexOf(sChar[i]);

while (iEnd != -1)
{
sNewStr += sStr.substring(iStart, iEnd);
iStart = iEnd + 1;
iEnd = sStr.indexOf(sChar[i], iStart);
}
sNewStr += sStr.substring(sStr.lastIndexOf(sChar[i]) + 1, sStr.length);

sStr = sNewStr;
}

return sNewStr;
}


function isNumberKey(evt)
{
	var charCode = (evt.which) ? evt.which : event.keyCode;

	
	if(charCode > 31 && (charCode < 48 || charCode > 57))
	{
		alert('Please enter only numbers for this field.');
		return false;
		
	}
	return true;
}

function isAlphaKey(evt)
{
	var charCode = (evt.which) ? evt.which : event.keyCode;
	
	//alert(charCode);
	if(charCode == 8 || charCode == 32 || (charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
	return true;
	alert('Please enter only letters for this field.');
	return false;
}
</script>
<script language="Javascript">

function validateFormOnSubmit(OIGFraudForm) {
  var reason = "";
  var intPanelCount;
  var currentPage;
  var objFormElement;
  var objPanel;
  var objHiddenSubjectPanelValid
  
  currentPage = OIGFraudForm.currentPage.value
  
  switch (currentPage)
	{
	    case ('1'):
	        if (!OIGFraudForm.rdoIdentify[0].checked && !OIGFraudForm.rdoIdentify[1].checked) {
	            reason = "Please check the appropriate block (identify or anonymous)";
	        }
	        
	        if (OIGFraudForm.recaptcha_response_field.value == '') {

	            if (reason != '') {
	                reason += "\n";

	            }
	            reason += "Please enter text from the CAPTCHA image or audio";
	        }


	        break;
		case ('2'):
			reason += validateFirstname(OIGFraudForm.fname);
			reason += validateLastname(OIGFraudForm.lname);
			reason += validatePhone(OIGFraudForm.phone);
			reason += validateEveningPhoneLength(OIGFraudForm.evening_phone);
			reason += validateZip(OIGFraudForm.zip);
			reason += validateEmail(OIGFraudForm.email);
			reason += validateState(OIGFraudForm.state);
			break;
		case ('3'):
			
			reason += validateSubjectName(OIGFraudForm.strSubjectName);
			
			for (intPanelCount = 2; intPanelCount <= 5; intPanelCount++)
			{
				// Get a reference to the TR object containing the subject info
				objPanel = document.getElementById('tr_' + intPanelCount);
				// If visible, validate
				
				if (objPanel != null)
				{
					
					if (objPanel.style.display == '')
					{
						objFormElement = document.getElementById('strSubjectName_' + intPanelCount);
						objHiddenSubjectPanelValid = document.getElementById('hidSubjectPanelValid_' + intPanelCount);
						reason += validateSubjectName(objFormElement, objHiddenSubjectPanelValid);
					}
				}
			}
			reason += validateTypeOfComplaint(OIGFraudForm.selComplaintType);
			reason += validateProgramAgency(OIGFraudForm.selHHSDept);
			reason += validateDetails(OIGFraudForm.details);
			
			
			
			break;
		default:
			break;
			
			
	}
	
	if (reason != "") {
		alert("Please complete these required fields:\n" + reason);
		return false;
	}
  
  return true;
}

// Per 7.15.09 change request...
// Type of complaint and Program/Agency fields now required

function validateTypeOfComplaint(fld) {
    var error = "";
	
	if (fld.options.selectedIndex == 0) {
        fld.style.background = '#ffee85'; 
        error = "Type of complaint\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  

}

function validateProgramAgency(fld) {
    var error = "";
	
	if (fld.options.selectedIndex == 0) {
        fld.style.background = '#ffee85'; 
        error = "Program/Agency\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  

}



function validateFile(fld)
{
	
	var ext;
	var fil;
	var error = "";
	
	
	
	fil = fld.value;
	ext = fil.substr(fil.indexOf('.'))
	
	if (ext.toUpperCase() == '.EXE' || ext.toUpperCase() == '.VBS' || ext.toUpperCase() == '.BAT')
	{
		fld.style.background = '#ffee85'; 
		error = "Executables are not allowed";
		
	}
	return error;  
}

function checkZipLength (strValue)
{
	var objRegExp = /(^\d{5}$)/;   //|(^\d{5}-\d{4}$)/;
	return objRegExp.test(strValue);
}

function validateDetails(fld)
{
	var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Entry in the text box is required - if the body of your complaint is explained in an attachment, please enter SEE ATTACHMENT.\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}

function validateOther(fld)
{
	var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Program/Agency\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}

function validateFirstname(fld) {
    var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "First Name\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}

function validateSubjectName(fld, hidSubjectPanelValid) {
    var error = "";
  
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Entry in the name field is required - if you do not know the name of the subject, please enter UNKNOWN.\n"
    } else {
        fld.style.background = 'White';
       
        if (hidSubjectPanelValid !=  undefined)
        {
			hidSubjectPanelValid.value = 'VALID';
        }
    }
    return error;  
}


// New function to handle multiple subjects
// Hold off for now.  May use validateSubjectName instead.

/*function validateAdditionalSubjectName(fld) {
    var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Entry in the name field is required - if you do not know the name of the subject, please enter UNKNOWN.\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}*/


function validateLastname(fld) {
    var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Last Name\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}

function validateOrg(fld) {
    var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Organization\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}

function validateAdd(fld) {
    var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Street Address\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}

function validateCity(fld) {
    var error = "";
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "City\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  
}

function validateState(fld) {
    var error = "";
	
	if (fld.options.selectedIndex == 0) {
        fld.style.background = '#ffee85'; 
        error = "State\n"
    } else {
        fld.style.background = 'White';
    }
    return error;  

}

function validateZip(fld) {
    var error = "";
 
    if (fld.value.length == 0) {
		fld.style.background = 'White';
        
       
    } else {
    
    if(checkZipLength(fld.value) == false)
    {
	  fld.style.background = '#ffee85'; 
	  error = "Zip Code must be five digits\n"
    }
      else
      {
      fld.style.background = 'White';
      }  
    }
    return error;  
}

function validatePhone(fld) {
    var error = "";
    var isCorrectFormat;
 
    if (fld.value.length == 0) {
        fld.style.background = '#ffee85'; 
        error = "Phone Number\n"
    } else 
		{
		isCorrectFormat = checkPhoneNumberLength(fld.value);
		if (isCorrectFormat)
		{
			fld.style.background = 'White';
		}
		else
		{
			 fld.style.background = '#ffee85'; 
			 error = "Phone Number must be 10 digits long\n"
		}
        
    }
    return error;  
}

function validateEveningPhoneLength(fld)
{
	var error = "";
    var isCorrectFormat;
    
    if (fld.value == '')
    {
		fld.style.background = 'White';
		
    }
    else
    {
		isCorrectFormat = checkPhoneNumberLength(fld.value);
		if (isCorrectFormat == true)
		{
			fld.style.background = 'White';
		}
		else
		{
			 fld.style.background = '#ffee85'; 
			 error = "Evening Phone Number must be 10 digits long\n"
		}
	}
	return error;  
}

function checkPhoneNumberLength(val)
{
	var stripped = val.replace(/[\(\)\.\-\ ]/g, '');
		if (val.length < 10)
		{
			 return false
		    
		}
		else
		{
			return true
		}
}

function validateEmail(fld) {
    var error = "";
 
   if (fld.value == '')
   {
	fld.style.background = 'White';
   }
   else
   {
	if (checkEmailFormat(fld.value) == true)
	{
		 fld.style.background = 'White';
	}
	else
	{
		fld.style.background = '#ffee85'; 
		error = "Invalid email format\n";
	}
    
   }
   
    return error;  
}

function checkEmailFormat(strValue)
{
	var objRegExp  = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
  //check for valid email
  return objRegExp.test(strValue);
}






// New functions added 7/23/2009
function LaunchSubjectPanel(idx)
{
	var previousIdx;
	
	previousIdx = parseInt(idx) - 1;
	
	document.getElementById('btnAddSubject_' + previousIdx).style.display = 'none';
	
	document.getElementById('tr_' + idx).style.display = '';
	if (parseInt(idx) < 5)
	{ 
		document.getElementById('btnAddSubject_' + idx).style.display = '';
	}
}

function RemoveSubjectPanel(idx)
{
	var intTotalVisible = 0;
	var url;
	
	url = window.location.toString();
	
	if (url.indexOf('#top') == -1)
	{
		window.location = window.location + '#top';
	}
	
	
	document.getElementById('tr_' + idx).style.display = 'none';
	document.getElementById('strSubjectName_' + idx).value = '';
	document.getElementById('strSubjectTitle_' + idx).value = '';
	document.getElementById('strSubjectStreetAddress_' + idx).value = '';
	document.getElementById('strSubjectCityorCounty_' + idx).value = '';
	document.getElementById('strSubjectZipCode_' + idx).value = '';
	document.getElementById('strSubjectPhone_' + idx).value = '';
	document.getElementById('strSubjectState_' + idx).options[0].selected = true;
	
	for (intCounter = 2; intCounter <= 5; intCounter++)
	{
		if (document.getElementById('tr_' + intCounter).style.display == '')
		{
			intTotalVisible += 1;
		}
	}
	
	if (intTotalVisible < 4)
	{
		document.getElementById('btnAddSubject_1').style.display = '';
	}
	else
	{
		document.getElementById('btnAddSubject_1').style.display = 'none';
	}
}
</script>
</head>
<body>
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
							<a href="/fraud/index.asp">Fraud</a>
						</li>
						<li>
							<a href="/fraud/report-fraud/index.asp">Report Fraud</a>
						</li>
						<li>
					     Report Fraud Form
						</li>
					</ul>
				</div>
				<div id="leftContentInterior">
					<h1>Report Fraud Form</h1>
<form  onsubmit="return validateFormOnSubmit(this)" name="OIGFraudForm" action="report-fraud-form.asp" method="post"<%if encType > "" then %> encType="<%= encType %>"<%end if%> id="OIGFraudForm">
<p>
<%
select case currentPage
	case 1:
		call page_one
		if strCaptchaResult > "" then
		    Response.Write("<script language=""javascript"">document.getElementById('divCaptcha').style.display='';document.getElementById('divCaptcha').innerHTML='Wrong text.  Please try again.';</script>")
		  
		end if
	Case 2:
		If Request.Form("rdoIdentify") = "Yes" then
			call page_two
		elseIf Request.Form("rdoIdentify") = "No" then
			call page_three
		end if
	case 3:
		call page_three
	Case 4:
		call page_four
end select

%>

<input type="hidden" name="currentPage" id="currentPage" value="<%= currentPage %>">
</p>
</form>
				</div> <!-- leftContentInterior ends -->	
			</div>	<!-- leftSideInterior ends -->
			<div id="rightSide">
				<!--#include virtual="/layout/im-looking-for.asp" -->
				<!-- #include virtual="/layout/sub-navigation/subnavigation-fraud.asp" -->
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
