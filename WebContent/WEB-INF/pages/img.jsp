<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://files.codepedia.info/files/uploads/iScripts/html2canvas.js"></script>

<!-- frame -->
<link type='text/css' rel='stylesheet' href='http://192.168.50.19:8080/psiform/components/viewer/resources/bootstrap/css/bootstrap.css'>
 <link type='text/css' rel='stylesheet' hrefhttp://192.168.50.19:8080/psiform/components/viewer/resources/bootstrap/css/bootstrap-datepicker.css'>
 <link type='text/css' rel='stylesheet' href='http://192.168.50.19:8080/psiform/components/viewer/resources/en_us/css/ifomstyle.css'>
 <link type='text/css' rel='stylesheet' href='http://192.168.50.19:8080/psiform/components/viewer/resources/bootstrap/css/bootstrap-multiselect.css'>
 <link type='text/css' rel='stylesheet' href='http://192.168.50.19:8080/psiform/components/viewer/resources/bootstrap/css/bootstrap-datepicker.min.css'>
 <link type='text/css' rel='stylesheet' href='http://192.168.50.19:8080/psiform/components/viewer/resources/en_us/css/floating-labels.css'>
 <link type='text/css' rel='stylesheet' href='http://192.168.50.19:8080/psiform/components/viewer/resources/bootstrap/css/bootstrap-datetimepicker.css'>
 <link type='text/css' rel='stylesheet' href='http://192.168.50.19:8080/psiform/components/viewer/resources/bootstrap/css/jquery.datetimepicker.css'>
 <style>.affix { top: 0;width: 100%;}.affix + .affix_padding { padding-top:50px; }.formStyle{ font-style: Normal;font-weight: Bold;font-size: 18px;color: #000000;background-color: #ffffff;border-color:ffffff;font-family:Calibri;}.headerstyle{font-style: Normal;font-weight: Bold;font-size: 18px;color: #000000;background-color: #ffffff;border-color:ffffff;font-family:Calibri;}.labelStyle{ word-break:break-word;font-style: Normal;font-weight: Bold;		  font-size: 14px;color: #000000;background-color: #ffffff;font-family:Calibri;}.inputStyle{font-style: Normal;font-weight: Normal;font-size: 14px;			 color: #000000;background-color: #FFFFFF;font-family:Calibri;border:1px solid;border-color:#ccc;}.inputStyle::-ms-clear {display: none;}.picklistStyle{ background-color: #ffffff;}.buttonStyle{font-style: Normal;padding:0px 8px;border-radius:3px;outline:none;font-weight: Bold;font-size: 16px;color: #ffffff; background-color: #0072c6;font-family:Calibri;border:1px solid;border-color:#ccc;-webkit-transition-duration: 0.4s;     transition-duration: 0.4s;}			.sectionStyle{ color: #ffffff;background-color: #0072c6;border-bottom-width:1px;border-top-left-radius:2px; border-top-right-radius:2px;}			.sectionStyleOuter{}.tableStyle{font-style: Normal;font-weight: Bold;font-size: 14px; color: #000000;background-color: #efefef;font-family:Calibri;border:1px solid !important;border-color:#ccc !important;text-align:center!important ;}.nav-tab-viewer>li>a.tabtheme2{background-color: #ffffff;}			.nav-tab-viewer>li>a.tabtheme4{  background-color: #ffffff;padding-top:6.5px !important;border-top: 0px solid #ccc;border-right: 0px solid #ccc;			border-bottom: 0px solid #ccc;border-left: 0px solid #ccc;}.nav-tab-viewer>li.active>a.tabtheme4{ background-color: #0072c6;}ul.tabtheme4{ 			 background-color: #ffffff;height:32px;}.tabButtons.tabtheme4{ background-color:#ffffff66;border-color:#000000;color:#000000;}			.scrtabs-tab-scroll-arrow>span{ background-color:transparent;color:#000000;}.iformTabControl>.scrtabs-tab-container{ background-color: #ffffff;}			.nav-tab-viewer>li.active>div.tabtheme4Tabs{ display:block;background-color:#000000;}.nav-tab-viewer>li>div.tabtheme4Tabs{ display:none}			.nav-tab-viewer>li.active>a.tabtheme2{ background-color: #0072c6;}.tabs-style-tzoid nav ul li.active a::after{ background-color: #0072c6;}			.tabs-style-tzoid nav ul li.active a{ color: #000000;}.tabs-style-tzoid nav ul li a{ color: #000000;}.tabs-style-tzoid nav ul li a::after{ background-color: #ffffff;}.tabhyperlink{}.nav-tab-viewer>li.active>a, .nav-tab-viewer>li.active>a:focus, .nav-tab-viewer>li.active>a:hover{ border-bottom: 2px solid #0072c6; color: #000000 !important;}.nav-tab-viewer>li>a{ color: #000000 !important;}.tabStyle{font-style: Normal;font-weight: Bold;font-size: 14px;				  font-family:Calibri;}.themeStyle{ color: #0072c6;;}.disabledInputStyle{ font-style: Normal; font-weight: Bold; font-size: 14px;color: #000000;			  font-family:Calibri;height:1px;word-break: break-all;}.disabledInputStyle::-ms-clear {display: none;}.disabledInputLinkStyle{font-style: Normal;font-weight: Bold;font-size: 14px;color: #000000;font-family:Calibri;word-break: break-all;}.disabledInputLabelStyle{text-align:left} .formStyle{ 
      font-style: Normal;
      font-weight: Bold;
      font-size: 18px;
 color: #000000;
 background-color: #efe3b1;
 border-color:ffffff;      font-family:Calibri;
}

.headerstyle{ 
      font-style: Normal;
      font-weight: Bold;
      font-size: 18px;
 color: #000000;
 background-color: #efe3b1;
 border-color:ffffff;      font-family:Calibri;
}

.labelStyle{ 
       word-break:break-word;
      font-style: Normal;
      font-weight: Normal;
      font-size: 14px;
 color: #000000;
 background-color: #ffffff;
      font-family:Arial;
}

.inputStyle{ 
       font-style: Normal;
      font-weight: Normal;
      font-size: 11px;
 color: #000000;
 background-color: #b1ede5;
      font-family:Arial;
      border-color:#ccc;

}

.inputStyle::-ms-clear {display: none;}.picklistStyle{
 background-color: #ffffff;

}.buttonStyle{ 
       font-style: Normal;
      padding:0px 8px;border-radius:3px;outline:none;
      font-weight: Bold;
      font-size: 16px;
 color: #ffffff;
 background-color: #0072c6;
      font-family:Calibri;      border:1px solid;
      border-color:#ccc;
    -webkit-transition-duration: 0.4s;     transition-duration: 0.4s;
}
.sectionStyle{font-weight: Bold; color: #FFFFFF;
 background-color: #efe3b1;
border-bottom-width:1px;border-top-left-radius:2px; border-top-right-radius:2px;}


.sectionStyleOuter{      border:1px solid;
}


.tableStyle{ 
       font-style: Normal;
      font-weight: Bold;
      font-size: 14px;
 color: #000000;
 background-color: #efefef;
      font-family:Calibri;
      border:1px solid !important;
      border-color:#ccc !important;
      text-align:center!important ;

}

.nav-tab-viewer>li>a.tabtheme2{ 
 background-color: #ffffff;

}

.nav-tab-viewer>li>a.tabtheme4{ 
 background-color: #ffffff;
padding-top:6.5px !important;
border-top: 0px solid #ccc;
border-right: 0px solid #ccc;
border-bottom: 0px solid #ccc;
border-left: 0px solid #ccc;
}

.nav-tab-viewer>li.active>a.tabtheme4{ 
 background-color: #0072c6;

}

ul.tabtheme4{ 
 background-color: #ffffff;

height:32px;
}

.tabButtons.tabtheme4{ 
background-color:#ffffff66;

border-color:#000000;
color:#000000;
}

.scrtabs-tab-scroll-arrow>span{ 
background-color:transparent;

color:#000000;
}

.iformTabControl>.scrtabs-tab-container{ 
 background-color: #ffffff;

}

.nav-tab-viewer>li.active>div.tabtheme4Tabs{ 
display:block;background-color:#000000;
}

.nav-tab-viewer>li>div.tabtheme4Tabs{ 
display:none
}

.nav-tab-viewer>li.active>a.tabtheme2{ 
 background-color: #0072c6;

}

.tabs-style-tzoid nav ul li.active a::after{ background-color: #0072c6;

}

.tabs-style-tzoid nav ul li.active a{ color: #000000;

}

.tabs-style-tzoid nav ul li a{ color: #000000;

}

.tabs-style-tzoid nav ul li a::after{ border-radius: 0px 0px 0 0 !important;
 background-color: #ffffff;

}

.tabhyperlink{ border-radius: 0px 0px 0 0 !important;

}

.nav-tab-viewer>li.active>a, .nav-tab-viewer>li.active>a:focus, .nav-tab-viewer>li.active>a:hover{ border-bottom: 2px solid #0072c6; color: #000000 !important;
}

.nav-tab-viewer>li>a{ color: #000000 !important;
}

.tabStyle{      font-style: Normal;
      font-weight: Bold;
      font-size: 14px;
      font-family:Calibri;
}

.themeStyle{ color: #0072c6;
;
}.disabledInputStyle{ 
       font-style: Normal;
      font-weight: Bold;
      font-size: 14px;
 color: #000000;
      font-family:Calibri;
height:1px;
word-break: break-all;

}

.disabledInputStyle::-ms-clear {display: none;}
.disabledInputLinkStyle{ 
       font-style: Normal;
      font-weight: Bold;
      font-size: 14px;
 color: #000000;
      font-family:Calibri;
word-break: break-all;

}

.disabledInputLabelStyle{
text-align:left
}

</style>
<!--/frame  -->
</head>
<body>
<div id="html-content-holder" style="background-color: #F0F0F1; color: #00cc65;
        padding-left: 25px; padding-top: 10px;">
        
        <div id='oforms_iform'><div style='width: 100%;text-align:center' class='affix_padding'></div><div class='row row-last'><div class='col-md-12 col-sm-12 col-xs-12' style=''><div style='' id='frame1' class='panel panel-default FrameControl sectionStyleOuter'><div style="" id="frame1" class="panel panel-default FrameControl sectionStyleOuter"><div onclick="toggleSection(this);"class="sectionStyle labelheight30" style=" word-break: break-all;white-space: nowrap; overflow: hidden; text-overflow: ellipsis; "state="expanded" painted="true">Section1<img class="frame-collapse-expand" class="collapseIcon" id="frame1_img"  src="http://192.168.50.19:8080/psiform/components/viewer/resources/images/Arrows-Up-4-icon.png" ></img></div><div class="panel-body sectionInnerStyle" style="padding-bottom:0px;padding-top:12px;background-color:#"><div class="row row-last"><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class=" iform-control"  style=""><div class="row"><label style=";margin-bottom:0px !important;" id="C_Form_fields_SSN_label" class="control-label labelStyle  col-sm-12" for="1f73a70d" title="" >C_Form_fields.SSN</label><div class="controls has-feedback col-sm-12"><input onmouseover=" this.title=this.value"style="margin-bottom:12px;" id="C_Form_fields_SSN" name="C_Form_fields_SSN" dataClass="C_Form_fields.SSN" maskingPattern="nomasking" typeofvalue="Text" Precision=""onblur="" onkeydown="if(!TitleCharacterValidation(event,1,'C_Form_fields_SSN')){return false;}if(event.keyCode==114){event.preventDefault();}"  onfocus="" value="" onchange="ctrOnchangeHandler(this,1);" datatype="Text" type="text" class="form-control1   control-class inputStyle textbox " maxlength="100"  labelName="" ><label id="C_Form_fields_SSN_patternString" style="display:none;"allowSpaces="true"allowNumbers="true"SpecialCharacters=""allowAlphabets="true">[\s\S]*</label><label id="C_Form_fields_SSN_validationString" style="display:none;">ANS</label><div class="mandatoryMessageDiv" id="C_Form_fields_SSN_msg" style="display:none;">Missing or Invalid Value</div><div class="mandatoryMessageDiv" id="C_Form_fields_SSN_patternMsg" style="display:none;"></div></div></div></div></div><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class="form-group"  style=""><div class="row"><label style="" title="" " id="C_HEADER_SSN_label" class="control-label labelStyle  col-sm-12" for="c46962f3">C_HEADER.SSN</label><div class="controls col-sm-12"><select onmouseover="this.title=this.options[this.selectedIndex].text"id="C_HEADER_SSN" onfocus=""style="text-align:left;margin-bottom:0px !important;" datatype="combobox" name="C_HEADER_SSN"dataClass="C_HEADER.SSN" onchange="ctrOnchangeHandler(this,1);" class="control-class form-control1 inputStyle "  class="control-class form-control1 inputStyle " labelName=""><option value="" selected>Select</option></select></div></div><div class="mandatoryMessageDiv" id="C_HEADER_SSN_msg" style="display:none;">Missing or Invalid Value</div></div></div><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class="iform-control" style="padding-bottom:10px;"><div class=" controls squaredTwo " style="float:left;padding-left:0px;margin-top:0px; "><input datatype="checkbox" type="checkbox"  name="C_Form_fields_DEPT" id="C_Form_fields_DEPT" value=""  onchange="ctrOnchangeHandler(this,1);" dataClass="C_Form_fields.DEPT"  class="control-class" style="margin-bottom:0px;" labelName="" onclick="this.style.opacity=0.0;" onfocus='this.style.opacity=0.9;' onblur='this.style.opacity=0.0;' ><label for="C_Form_fields_DEPT"></label></div><span id="C_Form_fields_DEPT_label" title=""  style="padding-left:7px; word-break:break-word;  border:0px;" class="labelStyle checkbox-label  " for ="35aa681b"  >C_Form_fields.DEPT </span><div class="mandatoryMessageDiv" id="C_Form_fields_DEPT_msg" style="display:none;margin-top:10px">Missing or Invalid Value</div></div><script>$('<style>.squaredTwo input[type=checkbox]:checked + label{background-color:#0072c6 !important;}</style>').appendTo('head')</script></div><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class="  iform-control"  style="padding:right:6px;"><div class="row"><label title="" style=""  id="C_Form_fields_TASK_label" class="control-label labelStyle  col-sm-12" for="16ae3d72">C_Form_fields.TASK</label><div style=" padding-bottom:12px;" class="controls col-sm-12"><div class="container" style="padding-left:0px;padding-right:0px;width:100%;">
       <div class="">
        <div class="col-sm-12" style="padding-left:0px;padding-right:0px;">
            <div>
<div class="date "><input onmouseover="this.title=this.value"style="margin-bottom:0px;" id="C_Form_fields_TASK" name="C_Form_fields_TASK" dataClass="C_Form_fields.TASK"  value="" onblur="ctrOnchangeHandler(this,1);" type="text" datatype="date"class="control-class form-control1 mydatepicker inputStyle   " dateformat="1_1_1" mindate="" maxdate="" onfocus=" attachDateRange(this);" labelName="" /><script>$('#C_Form_fields_TASK').on('dp.change',function(e){});</script><div class="mandatoryMessageDiv" id="C_Form_fields_TASK_msg" style="display:none;">Missing or Invalid Value</div></div><span class="input-group-addon calenderinput" style="position:absolute;background-color: inherit;padding:0px;right:15px;border-bottom-width:0px !important;top:6px;color:gray !important;"onclick="openDatePicker('C_Form_fields_TASK');">
                        <span class="glyphicon glyphicon-calendar" style="cursor:pointer;"></span>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div></div></div></div><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class=" iform-control"  style=""><div class="row"><label style=";margin-bottom:0px !important;" id="CreatedDateTime_label" class="control-label labelStyle  col-sm-12" for="71d81855" title="" >CreatedDateTime</label><div class="controls has-feedback col-sm-12"><input onmouseover=" this.title=this.value"style="margin-bottom:12px;" id="CreatedDateTime" name="CreatedDateTime" dataClass="CreatedDateTime" maskingPattern="nomasking" typeofvalue="Date" Precision=""onblur="" onkeydown="if(!TitleCharacterValidation(event,1,'CreatedDateTime')){return false;}if(event.keyCode==114){event.preventDefault();}"  onfocus="" value="" onchange="ctrOnchangeHandler(this,1);" datatype="Text" type="text" class="form-control1   control-class inputStyle textbox " labelName="" ><label id="CreatedDateTime_patternString" style="display:none;"allowSpaces="true"allowNumbers="true"SpecialCharacters=""allowAlphabets="true">[\s\S]*</label><label id="CreatedDateTime_validationString" style="display:none;">ANS</label><div class="mandatoryMessageDiv" id="CreatedDateTime_msg" style="display:none;">Missing or Invalid Value</div><div class="mandatoryMessageDiv" id="CreatedDateTime_patternMsg" style="display:none;"></div></div></div></div></div><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class="form-group"  style=""><div class="row"><label style="" title="" " id="CreatedByName_label" class="control-label labelStyle  col-sm-12" for="0ed1dc14">CreatedByName</label><div class="controls col-sm-12"><select onmouseover="this.title=this.options[this.selectedIndex].text"id="CreatedByName" onfocus=""style="text-align:left;margin-bottom:0px !important;" datatype="combobox" name="CreatedByName"dataClass="CreatedByName" onchange="ctrOnchangeHandler(this,1);" class="control-class form-control1 inputStyle "  class="control-class form-control1 inputStyle " labelName=""><option value="" selected>Select</option></select></div></div><div class="mandatoryMessageDiv" id="CreatedByName_msg" style="display:none;">Missing or Invalid Value</div></div></div><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class="iform-control" style="padding-bottom:10px;"><div class=" controls squaredTwo " style="float:left;padding-left:0px;margin-top:0px; "><input datatype="checkbox" type="checkbox"  name="INTRO_CHYANNEL" id="INTRO_CHYANNEL" value=""  onchange="ctrOnchangeHandler(this,1);" dataClass="INTRO_CHYANNEL"  class="control-class" style="margin-bottom:0px;" labelName="" onclick="this.style.opacity=0.0;" onfocus='this.style.opacity=0.9;' onblur='this.style.opacity=0.0;' ><label for="INTRO_CHYANNEL"></label></div><span id="INTRO_CHYANNEL_label" title=""  style="padding-left:7px; word-break:break-word;  border:0px;" class="labelStyle checkbox-label  " for ="33ab8ca3"  >INTRO_CHYANNEL </span><div class="mandatoryMessageDiv" id="INTRO_CHYANNEL_msg" style="display:none;margin-top:10px">Missing or Invalid Value</div></div><script>$('<style>.squaredTwo input[type=checkbox]:checked + label{background-color:#0072c6 !important;}</style>').appendTo('head')</script></div><div class="col-md-6 col-sm-6 col-xs-12 outerControlDiv"style=""><div class="  iform-control"  style="padding:right:6px;"><div class="row"><label title="" style=""  id="Initial_Task_Type_label" class="control-label labelStyle  col-sm-12" for="1ee42a16">Initial_Task_Type</label><div style=" padding-bottom:12px;" class="controls col-sm-12"><div class="container" style="padding-left:0px;padding-right:0px;width:100%;">
       <div class="">
        <div class="col-sm-12" style="padding-left:0px;padding-right:0px;">
            <div>
<div class="date "><input onmouseover="this.title=this.value"style="margin-bottom:0px;" id="Initial_Task_Type" name="Initial_Task_Type" dataClass="Initial_Task_Type"  value="" onblur="ctrOnchangeHandler(this,1);" type="text" datatype="date"class="control-class form-control1 mydatepicker inputStyle   " dateformat="1_1_1" mindate="" maxdate="" onfocus=" attachDateRange(this);" labelName="" /><script>$('#Initial_Task_Type').on('dp.change',function(e){});</script><div class="mandatoryMessageDiv" id="Initial_Task_Type_msg" style="display:none;">Missing or Invalid Value</div></div><span class="input-group-addon calenderinput" style="position:absolute;background-color: inherit;padding:0px;right:15px;border-bottom-width:0px !important;top:6px;color:gray !important;"onclick="openDatePicker('Initial_Task_Type');">
                        <span class="glyphicon glyphicon-calendar" style="cursor:pointer;"></span>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div></div></div></div></div></div></div></div></div>
        
        
       <!--  <p style="color: #3e4b51;">
            <b>Codepedia.info</b> is a programming blog. Tutorials focused on Programming ASP.Net,
            C#, jQuery, AngularJs, Gridview, MVC, Ajax, Javascript, XML, MS SQL-Server, NodeJs,
            Web Design, Software</p>
        <p style="color: #3e4b51;">
            <b>html2canvas</b> script allows you to take "screenshots" of webpages or parts
            of it, directly on the users browser. The screenshot is based on the DOM and as
            such may not be 100% accurate to the real representation.
        </p> -->
    </div></div></div>
    <input id="btn-Preview-Image" class="btn btn-warning" type="button" value="Preview"/>
    <a id="btn-Convert-Html2Image" href="#" class="btn btn-primary">Download</a>
    <br/>
    <h3>Preview :</h3>
    <div id="previewImage">
    </div>


<script>
$(document).ready(function(){

	
var element = $("#html-content-holder"); // global variable
var getCanvas; // global variable
 
    $("#btn-Preview-Image").on('click', function () {
         html2canvas(element, {
         onrendered: function (canvas) {
                $("#previewImage").append(canvas);
                getCanvas = canvas;
             }
         });
    });

	$("#btn-Convert-Html2Image").on('click', function () {
    var imgageData = getCanvas.toDataURL("image/png");
    // Now browser starts downloading it instead of just showing it
    var newData = imgageData.replace(/^data:image\/png/, "data:application/octet-stream");
    $("#btn-Convert-Html2Image").attr("download", "your_pic_name.png").attr("href", newData);
	});

});

</script>
</body>
</html>