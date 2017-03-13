<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title></title>

<!--Make sure page contains valid doctype at the very top!-->

<!-- main jquery files -->
  <script type="text/javascript" src="/layout/js/jquery-1.7.2.min.js"></script>  
  <script type="text/javascript" src="/layout/js/jquery-ui.min.js"></script>  

<script type="text/javascript" src="./stepcarousel.js">

/***********************************************
* Step Carousel Viewer script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* Please keep this notice intact
***********************************************/

</script>

<style type="text/css">

.stepcarousel{
position: relative; /*leave this value alone*/
border: 10px solid black;
overflow: scroll; /*leave this value alone*/
width: 600px; /*Width of Carousel Viewer itself*/
height: 220px; /*Height should enough to fit largest content's height*/
-webkit-box-sizing: border-box; /* set box model so container width and height value includes any padding/border defined */
-moz-box-sizing: border-box;
box-sizing: border-box;
}

.stepcarousel .belt{
position: absolute; /*leave this value alone*/
left: 0;
top: 0;
}

.stepcarousel .panel{
float: left; /*leave this value alone*/
overflow: hidden; /*clip content that go outside dimensions of holding panel DIV*/
margin: 10px; /*margin around each panel*/
width: 250px; /*Width of each panel holding each content. If removed, widths should be individually defined on each content DIV then. */
}

span.paginatecircle{ /* CSS for paginate circle spans. Required */
background: white;
border: 2px solid black;
border-radius: 10px;
width: 6px;
height: 6px;
cursor: pointer;
display: inline-block;
margin-right: 4px;
}

span.paginatecircle:hover{
background: gray;
}

span.paginatecircle.selected{
background: black;
}

</style>



<script type="text/javascript">

stepcarousel.setup({
	galleryid: 'mygallery', //id of carousel DIV
	beltclass: 'belt', //class of inner "belt" DIV containing all the panel DIVs
	panelclass: 'panel', //class of panel DIVs each holding content
	autostep: {enable:true, moveby:1, pause:3000},
	panelbehavior: {speed:500, wraparound:true, wrapbehavior:'slide', persist:true},
	defaultbuttons: {enable: true, moveby: 1, leftnav: ['arrowl.gif', -5, 80], rightnav: ['arrowr.gif', -20, 80]},
	statusvars: ['statusA', 'statusB', 'statusC'], //register 3 variables that contain current panel (start), current panel (last), and total panels
	contenttype: ['inline'] //content setting ['inline'] or ['ajax', 'path_to_external_file']
})

</script>






<!-------------/ head closes and body opens / --->

<!--#include virtual="/layout/head-body-tags.asp" -->

<!------------/ head closes and body opens / --->



<div id="mygallery" class="stepcarousel">
<div class="belt">

<div class="panel">
<img src="http://i30.tinypic.com/531q3n.jpg" />
</div>

<div class="panel">
<img src="http://i29.tinypic.com/xp3hns.jpg" />
</div>

<div class="panel">
<img src="http://i26.tinypic.com/11l7ls0.jpg" />
</div>

<div class="panel">
<img src="http://i31.tinypic.com/119w28m.jpg" />
</div>

<div class="panel">
<img src="http://i27.tinypic.com/34fcrxz.jpg" />
</div>

</div>
</div>

<p>
<b>Current Panel:</b> <span id="statusA"></span> <b style="margin-left: 30px">Total Panels:</b> <span id="statusC"></span>
</p>

<p id="mygallery-paginate">
<span class="paginatecircle" data-moveby="1"></span>
</p>

<p>
<a href="javascript:stepcarousel.stepBy('mygallery', -1)">Back 1 Panel</a> <a href="javascript:stepcarousel.stepBy('mygallery', 1)" style="margin-left: 80px">Forward 1 Panel</a> <br />

<a href="javascript:stepcarousel.stepTo('mygallery', 1)">To 1st Panel</a> <a href="javascript:stepcarousel.stepBy('mygallery', 2)" style="margin-left: 80px">Forward 2 Panels</a>
</p>


</body>
</html>
