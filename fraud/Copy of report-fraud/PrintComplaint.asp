<%@ Language=VBScript %>
<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<title>Report Fraud | Submitted Information</title>
</HEAD>
<BODY onLoad="javascript:window.print()">

<div id="divContent">

</div>
</BODY>
</HTML>
<script language="Javascript" src="Hashtable.js"></script>
<script language="Javascript">
	
	var col;
	var strContent = '<table border="1">';
	var elemName = '';
	var elemValue = '';
	var strSearch = 'PRINT_'
	var idx = -1;
	var aInputTags = [];
	var oHashtable = new Hashtable();
	
	col = window.opener.document.getElementsByTagName("input");
	
	for (var i = 0; i < col.length; i++)
	{
	
		elemName = col[i].name;
		idx = elemName.indexOf(strSearch)
		
		if(idx > -1)
			{
			
			elemValue = col[i].value;
			elemName = elemName.substring(idx + strSearch.length)
			oHashtable.put(elemName, elemValue);
			}
		
	}
	
	strContent += createTableRow('Information about user', 'hid_rdoidentify', oHashtable);
    strContent += createTableRow('First name', 'hid_fname', oHashtable);
    strContent += createTableRow('Last name', 'hid_lname', oHashtable);
	strContent += createTableRow('Company', 'hid_company', oHashtable);
	strContent += createTableRow('Address (Line 1)', 'hid_address', oHashtable);
	strContent += createTableRow('Address (Line 2)', 'hid_address2', oHashtable);
	strContent += createTableRow('City', 'hid_city', oHashtable);
    strContent += createTableRow('State', 'hid_state', oHashtable);
	strContent += createTableRow('Zip', 'hid_zip', oHashtable);
	strContent += createTableRow('Phone', 'hid_phone', oHashtable);
	strContent += createTableRow('Evening phone', 'hid_evening_phone', oHashtable);
    strContent += createTableRow('Email', 'hid_email', oHashtable);
	strContent += createTableRow('Narrative', 'details', oHashtable);
	strContent += createTableRow('Type of complaint', 'selcomplainttype', oHashtable);
	strContent += createTableRow('HHS department or program being affected', 'selhhsdept', oHashtable);
	strContent += createTableRowHeading('Information for subject #1')
	strContent += createTableRow('Subject name', 'strsubjectname', oHashtable);
	strContent += createTableRow('Subject title', 'strsubjecttitle', oHashtable);
	strContent += createTableRow('Subject street address', 'strsubjectstreetaddress', oHashtable);
	strContent += createTableRow('Subject city or county', 'strsubjectcityorcounty', oHashtable);
	strContent += createTableRow('Subject state', 'strsubjectstate', oHashtable);
	strContent += createTableRow('Subject zip code', 'strsubjectzipcode', oHashtable);
	strContent += createTableRow('Subject phone', 'strsubjectphone', oHashtable);
	strContent += generateAdditionalSubjects(oHashtable);
	
	document.getElementById('divContent').innerHTML = strContent;
	
	function createTableRow(strLabel, oKey, oHashtable)
	{
		
		var f = (oHashtable.get(oKey) == undefined || oHashtable.get(oKey) == '') ? '&nbsp;' :  oHashtable.get(oKey);
		return '<tr><td>' + strLabel + '</td><td>' + f + '</td></tr>';
	}
	
	function createTableRowHeading(strLabel)
	{
		return '<tr><td colspan="2"><b>' + strLabel + '</b></td></tr>';
	}
	
	function generateAdditionalSubjects(oHashtable)
	
	{
		
		var intCounter = 2;
		var strContent = '';
		
		for (var i = 2; i < 6; i++)
		{
			
			if (oHashtable.get('hidsubjectpanelvalid_' + i) == 'VALID')
			{
				strContent += createTableRowHeading('Information for subject #' + intCounter);
				strContent += createTableRow('Subject name', 'strsubjectname_' + i, oHashtable);
				strContent += createTableRow('Subject title', 'strsubjecttitle_' + i, oHashtable);
				strContent += createTableRow('Subject street address', 'strsubjectstreetaddress_' + i, oHashtable);
				strContent += createTableRow('Subject city or county', 'strsubjectcityorcounty_' + i, oHashtable);
				strContent += createTableRow('Subject state', 'strsubjectstate_' + i, oHashtable);
				strContent += createTableRow('Subject zip code', 'strsubjectzipcode_' + i, oHashtable);
				strContent += createTableRow('Subject phone', 'strsubjectphone_' + i, oHashtable);
				
				intCounter += 1;
			}
			
		}
		
		return strContent;
	}
</script>