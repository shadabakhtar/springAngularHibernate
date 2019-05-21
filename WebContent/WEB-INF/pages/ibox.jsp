<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/stylesheet.css">
<link type="text/css" rel="stylesheet" href="css/theme.css">
<link type="text/css" rel="stylesheet" href="css/dhtml.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="mainbody" onload="onBodyInit();initMainViewNew();showFailedLoginCount();checkApplicationSession();initGlobalVariables()" onmousemove="move(event);" onmouseup="getPosition(event);" style="overflow: auto; cursor: auto;">
            <input type="hidden" id="etkn" value="3741906854171760172"><input id="viewTableStruct" type="hidden" name="viewTableStruct" value=""><table id="successmsgDiv" class="successMsgdiv" cellpadding="0" cellspacing="0" style="display: none; position: absolute; width: 0px; left: 660.5px;">
<tbody>
<tr>
<td><span class="successIcondiv"></span></td>
<td><span id="successmsgText" class="messagediv" style="white-space: nowrap">Your view has been saved</span></td>
</tr>
</tbody>
</table>
<table id="failuremsgDiv" class="errorMsgdiv" cellpadding="0" cellspacing="0" style="display: none; position: absolute; width: 0px; left: 660.5px;">
<tbody>
<tr>
<td><span class="errorIcondiv"></span></td>
<td><span id="failuremsgText" class="messagediv" style="white-space: nowrap">Unable to save view</span></td>
</tr>
</tbody>
</table>
<table id="generalmsgDiv" class="infoMsgdiv" style="display: none;position: absolute;width: 0px;">
<tbody>
<tr>
<td><span class="infoIcondiv"></span></td>
<td><span id="generalmsgText" class="messagediv" style="white-space: nowrap"></span></td>
</tr>
</tbody>
</table>
<table id="headerPG" border="0" cellpadding="0" cellspacing="0" style="visibility: visible; width: 1333px;">
<tbody>
<tr>
<td class="oawidth100top"><!--?xml version='1.0' encoding='UTF-8' ?-->

</td>
</tr>
<tr>
<td class="oawidth100top"></td>
</tr>
<tr>
<td class="oawidth100top">
        <title>Main Header</title>
        <script type="text/javascript">
            var isAdminUser='true';
            var UniqueUserId= '1553579188607';
            var OAP_Id = 'e156e20c-82ec-4fb0-81e0-4f4ad19810d2';
            var PasswordDaysLeft = '0';
            var passwordExpiryFlag='false';
            var pageDirection = 'LTR';
            
            var SessionID='-2083835973';
            var Username='shadab';
            var CabinetName='ibps02nov';
            var userIndex='31';
            var encryptionFlag='Y';            
            var lastFailedLoginTime = '';
            var lastSuccessLoginTime = '18/Mar/2019 11:17:42';
            var setTimer = null;
            var bgColorDiv = null;
            var showFailedLoginMsg = 'N';
            var isODChangePassword='N';
            function IsODChangePassword(){
               if(isODChangePassword=='Y'){
                   changePasswordOD()
               }
               else{
                   changePassword()
               }  
            }
            
            function init(){                
                

                if(isMainView){
                    try{                   
                        if(viewJson.View.LayoutMerging != "Y"){
                            document.getElementById("txtRecentlyused").style.display = "inline";
                            document.getElementById("form:homeSeparator").style.display = "inline";
                            document.getElementById("configureViewDiv").style.display = "none";
                        }
                    } catch(e){
                    }
                }
                if(isAdminView){
                    try{                        
                        document.getElementById("form:homeLink").style.display = "inline";
                        document.getElementById("form:userInfoSeparator").style.display = "inline";
                        
                        document.getElementById("saveViewDiv").style.display = "none";
                        document.getElementById("resetViewDiv").style.display = "none";
                        document.getElementById("configureViewDiv").style.display = "none";
                        document.getElementById("form:groupedInfoDivMarker").style.visibility = "visible";
                      //  document.getElementById("settingDiv").style.display = "none";
                        document.getElementById("userViewCombo").onclick = null;
                        document.getElementById("userViewCombo").onmouseover = null;
                        document.getElementById("userViewCombo").onmouseout = null;
                        document.getElementById("userViewCombo").className = "oapadding5";
                        document.getElementById("userViewComboArrowDownDiv").style.display = "none";
                        document.getElementById("administrationDiv").style.display = "none";
                    } catch(e){
                    }
                }
                if(isAdminUser=='true'){
                    document.getElementById("form:groupedInfoDivMarker").style.visibility = "visible";
                }else{
                    document.getElementById("form:groupedInfoDivMarker").style.visibility = "visible";
                }
                
                renderOption();
                                
                if(!SESSION_REQ_SENT_REC){                    
                    disableUserViewMenu();                 

                    return false;
                } else {                
                    enableUserViewMenu();
                }
            }
            
            function enableUserViewMenu(){
                document.getElementById("userViewCombo").onmouseover = function (e){
                    onMouseOverHandler('userViewCombo');
                }

                document.getElementById("userViewCombo").onmouseout = function (e){
                    onMouseOutHandler('userViewCombo');
                }

                document.getElementById("userViewComboArrowDownDiv").style.display = "inline"; 
            }
            
            function disableUserViewMenu(){                    
                document.getElementById("userViewCombo").onmouseover = null;
                document.getElementById("userViewCombo").onmouseout = null;                             
                document.getElementById("userViewCombo").style.backgroundColor = '';
                document.getElementById("userViewComboArrowDownDiv").style.display = "none";  
            }

            function openApplicationScreenWindow(){
                var url = "/omniapp/pages/bizusr/bizusrmgmt.jsf?Action=1&OAP_Id="+OAP_Id;
                setPopupMask();
                window.parent.createPopUpIFrame('appScreenWin',url,390,451);
                window.parent.document.getElementById("appScreenWin").style.zIndex="201";
            }

            function loadUserView(data){
                if(data.status == "success"){           
					bBrowserWindowClose = false;				
                    window.location.href = window.location;
                }
            }
            
            function hideMenu(){
                /*var DivRef = document.getElementById("userViews");
                if(DivRef.style.display == "inline") {
                   hideUserInfo();
                }
                
                DivRef = document.getElementById("groupedInfo");
                if(DivRef.style.display == "inline") {
                    hideGroupedInfo();
                }
                
                DivRef = document.getElementById("settingInfo");
                if(DivRef.style.display == "inline") {
                    hideSettingInfo();
                }*/
            }

            function showUserViews(){                                
                if(!SESSION_REQ_SENT_REC){                    
                    disableUserViewMenu();                   
                    
                    return false;
                }
                
                var DivRef = document.getElementById("userViews");
                if(DivRef.style.display == "none") {
                    document.getElementById("userViewCombo").onmouseover = function (e){
                        onMouseOverHandler('userViewCombo');
                    }
                    
                    document.getElementById("userViewCombo").onmouseout = null;
                    document.getElementById("userViewCombo").style.backgroundColor = '#cccccc';
                    document.getElementById("userViewComboArrowDownDiv").style.display = "inline";                    
                    DivRef.style.display = "inline";
                    if(pageDirection == 'rtl'){
                        DivRef.style.left = findAbsPosX(document.getElementById("form:userViewSeparator")) + 3 + "px"
                    } else {
                        DivRef.style.left = findAbsPosX(document.getElementById("form:userViewSeparator")) - parseInt(document.getElementById("userViews").style.width.split("p")[0]) - 6 + "px"
                    }
                    
                    if((typeof document.documentMode != 'undefined') && (document.documentMode == 7)){
                        DivRef.style.top = findAbsPosY(document.getElementById("form:userViewSeparator")) + 15 + "px";
                    } else {
                        DivRef.style.top = findAbsPosY(document.getElementById("form:userViewSeparator")) + 17 + "px";
                    }
                    
                    onMenuElememtShow(DivRef);
                } else if(DivRef.style.display == "inline") {
                   hideUserInfo();
                }
            }
            
            function hideUserInfo(){
                onElementHide('userViewCombo');
                document.getElementById("userViews").style.display = "none";
                hideIframe("DivShim");
            }

            function onMouseOverHandler(elementId){
                document.getElementById(elementId).style.backgroundColor = '#cccccc';
               
            }

            function onMenuElememtShow(ref)
            {
                var IfrRef = document.getElementById('DivShim');
                IfrRef.style.width = ref.offsetWidth;
                IfrRef.width = ref.offsetWidth;
                IfrRef.style.height = ref.offsetHeight;
                IfrRef.height = ref.offsetHeight;
                IfrRef.style.top = ref.style.top;
                IfrRef.style.left = ref.style.left;
                IfrRef.style.zIndex = ref.style.zIndex - 1;
                //IfrRef.style.border = "1px solid red";
                IfrRef.style.display = "block";
            }

            function onMouseOutHandler(elementId){
                 document.getElementById(elementId).style.backgroundColor = '';
            }

            function onUserViewClick(event, userViewId, userViewGroupIndex){
                 SESSION_REQ_SENT_REC = false; 
                
                 document.getElementById("form:selectedUserViewId").value = userViewId;
                 document.getElementById("form:selectedUserViewGroupIndex").value = userViewGroupIndex;  
                 
                 if(typeof omniappLogoutController != 'undefined'){
                    omniappLogoutController();
                 }
                 
                 invalidateSessions("VC");
                 
                 //clickLink("form:submitButton");
            }
            
            function onUserViewClickCB(){
                window.onunload = window.onbeforeunload = null;
                clickLink("form:submitButton");
            }

            function onRowMouseOver(ref)
            {
                ref.style.backgroundColor = "#e8e8e8";
                ref.style.cursor = "pointer";
                bgColorDiv = "#e8e8e8";
            }

            function onRowMouseOut(ref)
            {
                ref.style.backgroundColor = "";
                bgColorDiv = "";
            }

            function hideIframe(id){
                var IfrRef = document.getElementById(id);
                IfrRef.style.display = "none";
            }
            
            function onElementHide(elementId){
                onMouseOutHandler(elementId);
                document.getElementById(elementId).onmouseout = function (){
                    onMouseOutHandler(elementId);
                }
            }

            function showGroupedInfo(){
                var DivRef = document.getElementById("groupedInfo");
                if(DivRef.style.display == "none") {
                    document.getElementById("userInfo").onmouseout = null;
                    document.getElementById("userInfo").style.backgroundColor = '#cccccc';
                    DivRef.style.display = "inline";

                    var pos = 0;
                    if(pageDirection == 'rtl'){
                        pos = findAbsPosX(document.getElementById("form:groupedInfoDivMarker")) + 3;
                    } else {
                        pos = findAbsPosX(document.getElementById("form:groupedInfoDivMarker")) - parseInt(DivRef.style.width.split("p")[0]) - 6;
                    }
                    
                    DivRef.style.left = pos + "px";
                    if((typeof document.documentMode != 'undefined') && (document.documentMode == 7)){
                        DivRef.style.top = findAbsPosY(document.getElementById("form:groupedInfoDivMarker")) + 16 + "px";
                    } else {
                        DivRef.style.top = findAbsPosY(document.getElementById("form:groupedInfoDivMarker")) + 17 + "px";
                    }

                    onMenuElememtShow(DivRef);
                    
                } else if(DivRef.style.display == "inline") {
                    hideGroupedInfo();
                }
            }

            function hideGroupedInfo(){
                onElementHide('userInfo');
                document.getElementById("groupedInfo").style.display = "none";
                hideIframe("DivShim");
            }

            function clickElement(elementRef){
                clickLink(elementRef);
            }

            function showSettingInfo(){
                var DivRef = document.getElementById("settingInfo");
                if(DivRef.style.display == "none") {
                    document.getElementById("settingDiv").onmouseout = null;
                    document.getElementById("settingDiv").style.backgroundColor = '#cccccc';
                    DivRef.style.display = "inline";

                    var pos = 0;
                    
                    if(pageDirection == 'rtl'){
                        pos = findAbsPosX(document.getElementById("form:settingMarker"));
                    } else {                    
                        pos = findAbsPosX(document.getElementById("form:settingMarker")) - parseInt(document.getElementById("groupedInfo").style.width.split("p")[0]) - 3;
                    }
                    
                    if(pos-30 < 0){
                        DivRef.style.left = pos+"px";
                    }else{
                        DivRef.style.left = pos-30+"px";
                    }
                    
                    if((typeof document.documentMode != 'undefined') && (document.documentMode == 7)){
                        DivRef.style.top = findAbsPosY(document.getElementById("form:settingMarker")) + 16 + "px";
                    } else {
                        DivRef.style.top = findAbsPosY(document.getElementById("form:settingMarker")) + 17 + "px";
                    }

                    onMenuElememtShow(DivRef);
                } else if(DivRef.style.display == "inline") {
                    hideSettingInfo();
                }
            }
            function hideSettingInfo(){
                onElementHide('settingDiv');
                document.getElementById("settingInfo").style.display = "none";
                hideIframe("DivShim");
            }
            function changePassword()
            {   
                var Url= "/orm/login/loginapp.jsf";
                //var Url= "/omniapp/pages/usermgmt/changepasswd.jsf";
                var ScreenHeight=screen.height;
                var ScreenWidth=screen.width;
                var WindowHeight=windowH-100;
                var WindowWidth=windowW;
                var WindowLeft=parseInt(ScreenWidth/2)-parseInt(WindowWidth/2);
                var WindowTop=parseInt(ScreenHeight/2)-parseInt(WindowHeight/2);
                var wFeatures = 'height='+WindowHeight+',width='+WindowWidth+',resizable=0,status=1,scrollbars=0,top='+WindowTop+',left='+WindowLeft;
                var listParam=new Array();
                listParam.push(new Array("Action","1"));
                listParam.push(new Array("FromAppConf","3"));
                listParam.push(new Array("CabinetName",decode_ParamValue(CabinetName)));
                listParam.push(new Array("UserName",decode_ParamValue(Username)));
                listParam.push(new Array("DbSessionID",decode_ParamValue(SessionID)));                
                listParam.push(new Array("UserIndex",decode_ParamValue(userIndex)));
                listParam.push(new Array("ServerType",decode_ParamValue('JBossEAP')));
                listParam.push(new Array("encryption",decode_ParamValue(encryptionFlag)));
                listParam.push(new Array("OAPDomPrt","http:"));
                listParam.push(new Array("OAPDomHost","192.168.52.192:8080"));
                var win = openNewWindow(Url,"changepass"+UniqueUserId,wFeatures, true,listParam);
                try {
                    addWindows(win);
                }
                catch(e)
                {}
                       
            }
            
            //used When OD change password is to be called
            function changePasswordOD()
            {   
              

                  //  var ConfirmMessage = YOUR_PASSWORD_WILL_EXPIRE + PasswordDaysLeft + DAYS_DO_YOU_WANT_TO_CHANGE;
                   //   setPopupMask();
                    // showPopupAlert("form:conformDivForPassword", ConfirmMessage, "form:wp:messageLabel");
                     //var confirmFlag=confirm(ConfirmMessage);
    
                     
                            var Url= "/omniapp/pages/usermgmt/changepasswd.jsf";
                            var ScreenHeight=screen.height;
                            var ScreenWidth=screen.width;
                            var WindowHeight=windowH;
                            var WindowWidth=windowW;
                            var WindowLeft=parseInt(ScreenWidth/2)-parseInt(WindowWidth/2);
                            var WindowTop=parseInt(ScreenHeight/2)-parseInt(WindowHeight/2);
                            var wFeatures = 'height='+WindowHeight+',width='+WindowWidth+',resizable=0,status=1,scrollbars=0,top='+WindowTop+',left='+WindowLeft;
                            var listParam=new Array();
                            var win = openNewWindow(Url,"changepass"+UniqueUserId,wFeatures, true,listParam);
                            try {
                                addWindows(win);
                            }
                            catch(e)
                            {}
                       
            }
            function changePasswordScreen()
            {
                hidePopupAlert('form:conformDivForPassword');
                hidePopupMask();
                 var Url= "/omniapp/pages/usermgmt/changepasswd.jsf";
                            var ScreenHeight=screen.height;
                            var ScreenWidth=screen.width;
                            var WindowHeight=windowH;
                            var WindowWidth=windowW;
                            var WindowLeft=parseInt(ScreenWidth/2)-parseInt(WindowWidth/2);
                            var WindowTop=parseInt(ScreenHeight/2)-parseInt(WindowHeight/2);
                            var wFeatures = 'height='+WindowHeight+',width='+WindowWidth+',resizable=0,status=1,scrollbars=0,top='+WindowTop+',left='+WindowLeft;
                            var listParam=new Array();
                            var win = openNewWindow(Url,"changepass"+UniqueUserId,wFeatures, true,listParam);
                            try {
                                addWindows(win);
                            }
                            catch(e)
                            {}
            }
            function userPreferences(ref){
                var url = "../usermgmt/userpreferences.jsf?OAP_Id="+OAP_Id;
               window.parent.createPopUpIFrame('userpreference',url,232,350);
               var posX = findAbsPosX(ref);
               var posY = findAbsPosY(ref);               
               if( ( posX - 360 ) > 0 )
                    document.getElementById("userpreference").style.left = posX - 360;
               else
                    document.getElementById("userpreference").style.left = posX;
                     
               document.getElementById("userpreference").style.top = posY - 50;
            }
            
            function stopEventPropagation(event){
                 if (event.stopPropagation){
                     event.stopPropagation();
                 } else {
                     window.event.cancelBubble=true;
                 }
            }
            
            function renderOption(){                
                if((typeof document.documentMode != 'undefined') && (document.documentMode == 7)){
                    var rctUsedPG = document.getElementById("form:rctUsedPG");
                    var userViewsPG = document.getElementById("form:userViewsPG");
                    var userInfoPG = document.getElementById("form:userInfoPG");
                    var userViewComboPG = document.getElementById("form:userViewComboPG");
                    var userInfoSettingPG = document.getElementById("form:userInfoSettingPG");
                    var homeLinkPG = document.getElementById("form:homeLinkPG");
                    
                    rctUsedPG.style.display = "inline";                    
                    if(userViewsPG != null){
                        userViewsPG.style.display = "inline";
                        userViewComboPG.style.display = "inline";
                    }
                    
                    homeLinkPG.style.display = "inline";
                    userInfoSettingPG.style.display = "inline";
                    userInfoPG.style.display = "inline";
                }
            }
            
            function OAPLogoutClick()
            {      
                logout = "fromlogout";
                if(!isAdminView)
                {
                    if(typeof OAPUnloadInitHandler != 'undefined')
                    {                        
                        if(OAPUnloadInitHandler("LOGOUT")){
                            disconnectFromNodeServer();
                          //  clickElement('form:logoutLink');                            
                        } else {
                            showGeneralMessage(WATING_FOR_RESPONSE);
                        }                    
                    } else {
                        disconnectFromNodeServer();
                     //   clickElement('form:logoutLink');                        
                    }
                }
                else
                {
                    disconnectFromNodeServer();
                  //  clickElement('form:logoutLink');                    
                }
            }
            
            function OAPViewChange(event, userViewId, userViewGroupIndex) 
            {
                bBrowserWindowClose = false;               
                
                hideUserInfo();
                //showPopupMask();                
                
                disableUserViewMenu();
                
                if(typeof OAPUnloadInitHandler != 'undefined')
                {                   
                    if(OAPUnloadInitHandler("CV:"+userViewId)){
                        disconnectFromNodeServer();
                        onUserViewClick(event, userViewId, userViewGroupIndex);
                    } else {
                        showGeneralMessage(WATING_FOR_RESPONSE);                         
                    }  
                } else {
                    disconnectFromNodeServer();
                    onUserViewClick(event, userViewId, userViewGroupIndex);
                }
            }
            
            function showFailedLoginTime()
            {
                document.getElementById('form:lastFailedLogin').style.display = "inline";
                document.getElementById('form:lastSuccessfullLogin').style.display = "none";
                document.getElementById('form:failedLoginCount').style.display = "none";
                setTimeout("showSuccessfullLoginTime();",5000);
            }
            function showSuccessfullLoginTime()
            {
                document.getElementById('form:lastSuccessfullLogin').style.display = "inline";
                document.getElementById('form:lastFailedLogin').style.display = "none";
                document.getElementById('form:failedLoginCount').style.display = "none";
                setTimeout("showFailedLoginCount();",5000);
            }
            function showFailedLoginCount()
            {
                if(showFailedLoginMsg == 'Y')
                    { 
                        
                        document.getElementById('form:failedLoginCount').style.display = "inline";
                        document.getElementById('form:lastSuccessfullLogin').style.display = "none";
                        document.getElementById('form:lastFailedLogin').style.display = "none";
                
                        if(lastFailedLoginTime == ''){
                            setTimeout("showSuccessfullLoginTime();",5000);
                        }else{
                            setTimeout("showFailedLoginTime();",5000);
                        }
                    }
            }
 
            function setbgColorDisable()
            {
                bgColorDiv = "disable";
            }
            
            function setbgColorClear()
            {
                bgColorDiv = "";
            }
            // Bug 44767 - View list should get closed automatically if user is performing some other activity.
            function clearViewIfOn(ref , divId)
            { 
                if( divId != undefined && divId == "userViewCombo" || divId == "userInfo" )
                {
                    if( bgColorDiv == null )
                        {
                            if( setTimer != null )
                            {
                                clearTimeout(setTimer);
                            }
                            
                            setTimer = setTimeout( function()
                            {
                                
                                document.getElementById("userViews").style.display = "none";
                                document.getElementById("groupedInfo").style.display = "none";
                                document.getElementById("userViewCombo").style.backgroundColor = '';
                                document.getElementById("userInfo").style.backgroundColor = '';
                                hideIframe("DivShim");
                            } , 3000); 
                            return;
                        }
                }
                if( setTimer != null )
                {
                    clearTimeout(setTimer);
                }
                if( bgColorDiv == "" )
                {
                    setTimer = setTimeout(function(){                      
                        if( ref != null && ref != undefined &&ref.style.display != "none")
                        {
                            ref.style.display = "none";                            
                            bgColorDiv = null;
                            document.getElementById("userViewCombo").style.backgroundColor = '';
                            document.getElementById("userInfo").style.backgroundColor = '';
                            hideIframe("DivShim");
                        }
                    } , 500);
                }
                
                return true;
            }    
           /* function openAuditLog(){
                var Url= "/omniapp/pages/auditlog/auditlog.jsf";
                var ScreenHeight=screen.height;
                var ScreenWidth=screen.width;
                var WindowHeight=400;
                var WindowWidth=500;
                var WindowLeft=parseInt(ScreenWidth/2)-parseInt(WindowWidth/2);
                var WindowTop=parseInt(ScreenHeight/2)-parseInt(WindowHeight/2);
                var wFeatures = 'height='+WindowHeight+',width='+WindowWidth+',resizable=0,status=1,scrollbars=0,top='+WindowTop+',left='+WindowLeft;
                var listParam=new Array();
                var win = openNewWindow(Url,"AuditLog",wFeatures,true,listParam);
                try {
                    addWindows(win);
                }
                catch(e)
                {}
            }*/


            function refreshOAPView(){
                var selectedUserViewId = document.getElementById("form:selectedUserViewId").value;
                var selectedUserViewGroupIndex = document.getElementById("form:selectedUserViewGroupIndex").value;    
                OAPViewChange(null, selectedUserViewId, selectedUserViewGroupIndex);
            }
            
            var bOAPLogoutCalled = false;
            function OAPLogoutWrapper(linkId){
                if(!bOAPLogoutCalled){
                    clickElement(linkId);
                    bOAPLogoutCalled = true;
                }
            }
			
			var bBrowserWindowClose = true;
            function onHomeClick(){
                bBrowserWindowClose = false;
                stopOnBeforeUnload();                
            }
            
            var OAPId = 'e156e20c-82ec-4fb0-81e0-4f4ad19810d2';
            var OAPQueryString = "&OAP_Id="+OAPId;
            
            function disconnectCabinet(){
                //return;
                var url="/omniapp/pages/login/disconnect.jsf";
                var qString="Action=1"+OAPQueryString
                new net.ContentLoader(url, disconnectCabinetCallback, null, "POST", qString, true);

                function disconnectCabinetCallback(){                    
                }                
            }
            
            
        </script></td>
</tr>
<tr>
<td class="oawidth100top">
<form id="form" name="form" method="post" action="/omniapp/pages/main/main.jsf" enctype="application/x-www-form-urlencoded">
<input type="hidden" name="form" value="form">

            <iframe id="DivShim" src="about:blank" scrolling="no" frameborder="0" style="position:absolute; top:0px; left:0px; display:none;"></iframe><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth0left"><table width="100%">
<tbody>
<tr>
<td><img src="images/ibps.png"></td>
</tr>
</tbody>
</table>
</td>
<td class="oawidth100right">
        <input type="hidden" id="OAP_Id" name="OAP_Id" value="e156e20c-82ec-4fb0-81e0-4f4ad19810d2"><input id="form:selectedUserViewId" type="hidden" name="form:selectedUserViewId" value="1"><input id="form:selectedUserViewGroupIndex" type="hidden" name="form:selectedUserViewGroupIndex" value="5">
                    <input type="hidden" id="forcedLogoutVar" name="forcedLogoutVar" value="N">
<script type="text/javascript" src="/omniapp/javax.faces.resource/jsf.js.jsf?ln=javax.faces"></script>
<input id="form:submitButton" type="button" name="form:submitButton" value="submit" style="display: none" onclick="mojarra.jsfcljs(document.getElementById('form'),{'form:submitButton':'form:submitButton','llt':'09f98d50-193b-412c-a15c-a84a97a7f1af'},'');return false"><table id="form:rctUsedPG" cellpadding="0" cellspacing="0" style="display: inline-block;">
<tbody>
<tr>
<td>
                            <div id="txtRecentlyused" class="oapadding5 oacursorpointer" style="width: 140px; display: inline; cursor: pointer;" onmouseover="onMouseOverHandler('txtRecentlyused');" onmouseout="onMouseOutHandler('txtRecentlyused');"><img id="form:recentlyUsedImg" src="images/group.png" alt="Minimized Components" height="14px" onclick="showRecentlyUsed()" style="padding-left: 4px;padding-right: 5px; vertical-align: bottom" title="Minimized Components" width="14px" class="oacursorpointer">
                            </div></td>
<td><label id="form:homeSeparator" style="display: inline;" class="oalabelstyleblack">
 | </label></td>
</tr>
</tbody>
</table>
<table id="form:homeLinkPG" cellpadding="0" cellspacing="0" style="display: inline-block;">
<tbody>
<tr>
<td><a id="form:homeLink" name="form:homeLink" href="../main/main.jsf?OAP_Id=e156e20c-82ec-4fb0-81e0-4f4ad19810d2&amp;llt=35a546f7-cbcd-49cc-991c-5727c0eac37c" onclick="onHomeClick()" style="display: none"><img id="form:homeImg" src="/omniapp/javax.faces.resource/home.png.jsf?ln=images" alt="Home" height="14px" style="border: 0px; padding-left: 4px;padding-right: 5px; vertical-align: bottom" title="Home" width="14px" class="oacursorpointer"></a></td>
<td><label id="form:userInfoSeparator" style="display: none">
 | </label></td>
</tr>
</tbody>
</table>
<table id="form:userViewsPG" cellpadding="0" cellspacing="0" style="display: inline-block;">
<tbody>
<tr>
<td>
                            <div id="userViewCombo" class="oapadding5 oacursorpointer" style="width: 120px; display: inline;" onclick="return showUserViews() &amp;&amp; clearViewIfOn(null,'userViewCombo')" onmouseover="onMouseOverHandler('userViewCombo');" onmouseout="onMouseOutHandler('userViewCombo');"><table id="form:userViewComboPG" cellpadding="0" cellspacing="0" style="display: inline-block; position: relative; top:3px;">
<tbody>
<tr>
<td><label id="form:selectedUserViewName" style="display: inline" title="Associated Views">
Process Designer</label></td>
<td><span style="position: relative; top:0px; padding-left: 3px;">
                                        <div id="userViewComboArrowDownDiv" class="oaArrowDown" style="display: inline;"></div></span></td>
</tr>
</tbody>
</table>


                            </div></td>
<td>
                            <div id="userViews" onmouseover="bgColorDiv='-';clearViewIfOn(this);" class="oapadding0" style="width: 162px;overflow: auto;border: 3px solid #cccccc; position:absolute; display: none; z-index: 210; background-color: white" onmouseout="bgColorDiv='';clearViewIfOn(this);"><table id="form:dataTable" border="0" cellpadding="0" cellspacing="0" style="border: 2px solid #9c9c9c; padding: 5px;" width="100%">
<tbody>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onclick="OAPViewChange(event,'2','4')" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="white-space: nowrap"><label id="form:dataTable:0:userViewName1" class="oacursorpointer">
Business Admin</label>
                                            </div></td>
</tr>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onclick="OAPViewChange(event,'1001','4')" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="white-space: nowrap"><label id="form:dataTable:1:userViewName1" class="oacursorpointer">
Business Rule Management</label>
                                            </div></td>
</tr>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onclick="OAPViewChange(event,'7','10')" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="white-space: nowrap"><label id="form:dataTable:2:userViewName1" class="oacursorpointer">
Case Manager</label>
                                            </div></td>
</tr>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onclick="OAPViewChange(event,'5','8')" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="white-space: nowrap"><label id="form:dataTable:3:userViewName1" class="oacursorpointer">
Dashboard</label>
                                            </div></td>
</tr>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onclick="OAPViewChange(event,'4','7')" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="white-space: nowrap"><label id="form:dataTable:4:userViewName1" class="oacursorpointer">
MDM</label>
                                            </div></td>
</tr>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onclick="OAPViewChange(event,'6','9')" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="white-space: nowrap"><label id="form:dataTable:5:userViewName1" class="oacursorpointer">
OTMS</label>
                                            </div></td>
</tr>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onmouseout="setbgColorClear()" onmouseover="setbgColorDisable()"><label id="form:dataTable:6:userViewName2" class="oadisabletext">
Process Designer</label>
                                            </div></td>
</tr>
<tr class="oaalignleft">
<td class="wdwidth100">
                                            <div class="oapadding5" onclick="OAPViewChange(event,'3','6')" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="white-space: nowrap"><label id="form:dataTable:7:userViewName1" class="oacursorpointer">
User Desktop</label>
                                            </div></td>
</tr>
</tbody>
</table>

                            </div></td>
<td><label id="form:userViewSeparator" class="oalabelstyleblack">
 | </label></td>
</tr>
</tbody>
</table>
<table id="form:userInfoPG" cellpadding="0" cellspacing="0" style="display: inline-block;">
<tbody>
<tr>
<td>
                            <div id="userInfo" class="oapadding5 oacursorpointer" style="width: 120px; display: inline;" onclick="showGroupedInfo();clearViewIfOn(null,'userInfo')" onmouseover="onMouseOverHandler('userInfo');" onmouseout="onMouseOutHandler('userInfo');"><table id="form:userInfoSettingPG" cellpadding="0" cellspacing="0" style="display: inline-block; position: relative; top:3px;">
<tbody>
<tr>
<td><label title="User's Settings" class="oacursorpointer">
shadab</label></td>
<td><span style="position: relative; top:0px; padding-left: 2px;">
                                        <div id="arrowDownGoupedInfoDiv" class="oaArrowDown" style="display: inline;"></div></span></td>
</tr>
</tbody>
</table>

                            </div></td>
<td>
                            <div id="groupedInfo" onmouseover="clearViewIfOn(this)" class="oapadding0" style="width: 160px; overflow: auto; border: 3px solid #cccccc; position:absolute; display: none; z-index: 210; background-color: white">
                                <div class="oapadding5 oaalignleft" style="border: 2px solid #9c9c9c;">
                                    <div class="oapadding5"><label id="form:userViewName" class="oatextpaddingleft oaFontWeightBold">
shadab</label>
                                    </div>
                                    <div class="oapadding5" style="padding-top: 0px; color: #888888"><label id="form:userCabinetName" class="oatextpaddingleft">
ibps02nov</label>
                                    </div>
                                    <div class="oapadding5"><table border="0" cellpadding="0" cellspacing="0" style="border-bottom:1px solid #dedede;" width="100%">
<tbody>
<tr><td></td></tr></tbody>
</table>

                                    </div>
                                    <div id="saveViewDiv" class="oapadding5" onclick="hideGroupedInfo(); saveUserView();" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><label id="form:saveView" class="oacursorpointer">
Save View</label>
                                    </div>
                                    <div id="resetViewDiv" class="oapadding5" onclick="hideGroupedInfo(); resetUserView();" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><label id="form:resetView" class="oacursorpointer">
Reset View</label>
                                    </div>
                                    <div id="configureViewDiv" class="oapadding5" onclick="hideGroupedInfo(); configureUserView();" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);" style="display: none;"><label id="form:configureView" class="oacursorpointer">
Configure View</label>
                                    </div>
                                    <div class="oapadding5" onclick="userPreferences(this);hideGroupedInfo();" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><label class="oatextpaddingleft oacursorpointer">
My Settings</label>
                                    </div>
                                        <div class="oapadding5" onclick="hideGroupedInfo();IsODChangePassword();" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><label class="oatextpaddingleft">
Change Password</label>
                                        </div>
                                    
                                    <div class="oapadding5" onclick="hideGroupedInfo();openHelp('');" style="display:none" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><a id="form:helpLink" href="#" style="color: #000000;" onclick="mojarra.jsfcljs(document.getElementById('form'),{'form:helpLink':'form:helpLink'},'');return false" class="oatextpaddingleft">Help</a>
                                    </div>

                                    <div class="oapadding5"><table border="0" cellpadding="0" cellspacing="0" style="border-bottom:1px solid #dedede;" width="100%">
<tbody>
<tr><td></td></tr></tbody>
</table>

                                    </div>

                                    <div class="oapadding5" onclick="hideGroupedInfo();OAPLogoutClick();stopEventPropagation(event);" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><a id="form:logoutLink2" href="#" style="color: #000000;" onclick="jsf.util.chain(this,event,'return false;','mojarra.jsfcljs(document.getElementById(\'form\'),{\'form:logoutLink2\':\'form:logoutLink2\'},\'\')');return false" class="oatextpaddingleft">Logout</a>
                                    </div><input id="form:logoutLink" type="button" name="form:logoutLink" value="Logout" style="display: none" class="oatextpaddingleft" onclick="jsf.util.chain(this,event,'stopOnBeforeUnload();logoutCallBack();stopEventPropagation(event);','mojarra.jsfcljs(document.getElementById(\'form\'),{\'form:logoutLink\':\'form:logoutLink\',\'OAP_Id\':\'e156e20c-82ec-4fb0-81e0-4f4ad19810d2\'},\'\')');return false">
                                </div>
                            </div></td>
<td><label id="form:groupedInfoDivMarker" style="visibility: visible;" class="oalabelstyleblack">
 | </label></td>
</tr>
</tbody>
</table>
</td>
<td class="oawidth0">
                    <div id="settingDiv" class="oacursorpointer" style="display: block;" onclick="showSettingInfo();" onmouseover="onMouseOverHandler('settingDiv');" onmouseout="onMouseOutHandler('settingDiv');"><table cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td><img id="form:settingImg" src="images/setting.png" alt="Settings" height="14px" style="padding-left: 6px; padding-right: 6px; padding-top: 5px; padding-bottom: 5px;" title="Configurations" width="14px" class="oacursorpointer"></td>
<td><label id="form:settingMarker" style="visibility: hidden" class="oalabelstyleblack">
|</label></td>
</tr>
<tr>
<td>
                                <div id="settingInfo" class="oapadding0" style="width: 190px; overflow: none; border: 3px solid #cccccc; position:absolute; display: none; z-index: 210; background-color: white">
                                    <div class="oapadding5 oaalignleft" style="border: 2px solid #9c9c9c;">
                                        <div id="adminDiv" class="oapadding5" onclick="hideSettingInfo(); openApplicationScreenWindow(); stopEventPropagation(event);" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><label id="form:adminLink" style="white-space: nowrap;" class="oatextpaddingleft">
Application Configuration</label>
                                        </div>
                                        <div id="administrationDiv" class="oapadding5" onclick="hideSettingInfo();stopOnBeforeUnload('admin');loadManageapp();" onmouseover="onRowMouseOver(this);" onmouseout="onRowMouseOut(this);"><label id="form:administrationLink" style="color: #000000;white-space: nowrap;">
Omniapp Configuration</label>
                                        </div>
                                    </div>
                                </div></td>
</tr>
</tbody>
</table>

                    </div></td>
</tr>
</tbody>
</table>
<table id="form:conformDivForPassword" style="width: 400px; height: 100px; display: none; position: absolute; z-index: 1000;">
<tbody>
<tr>
<td>            
            <div class="whitepanel">
                <div class="whitepanelt">
                    <div class="whitepanelb">
                        <div class="whitepanell">
                            <div class="whitepanelr">
                                <div class="whitepanelbl">
                                    <div class="whitepanelbr">
                                        <div class="whitepaneltl">
                                            <div class="whitepaneltr">
                                                <div class="whitepanelcontent"><table class="panelBgColor oapadding10" width="100%">
<tbody>
<tr>
<td><table class="panelBgColor" style="width: 345px">
<tbody>
<tr class="oatextcenter">
<td><label id="form:wp:messageLabel" class="oaerrorstylered">
</label></td>
</tr>
<tr class="oatextcenter">
<td><table>
<tbody>
<tr>
<td class="oawidth40"><label style="visibility: hidden;">
.</label></td>
<td class="oawidth10"><label onclick="changePasswordScreen();" class="linkstyle">
OK</label></td>
<td class="oawidth0"><label style="visibility: hidden;">
.</label></td>
<td class="oawidth10"><label onclick="hidePopupAlert('form:conformDivForPassword');hidePopupMask();" class="linkstyle">
Cancel</label></td>
<td class="oawidth40"><label style="visibility: hidden;">
.</label></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></td>
</tr>
</tbody>
</table>
<input type="hidden" name="javax.faces.ViewState" id="javax.faces.ViewState" value="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" autocomplete="off">
</form></td>
</tr>
<tr>
<td class="oawidth100top">
    <script>init();</script>
</td>
</tr>
</tbody>
</table>

                
            <div id="lgPanel2Div" style="display: none; position: relative; margin-left: 5px; width: 1321px;" onmouseover="clearBlinkNotifier();"><img id="recentUsedCloseImg" src="/omniapp/javax.faces.resource/closehw.png.jsf?ln=images" height="15px" onclick="hideRecentlyUsed();" style="position: absolute; cursor: pointer; top: 5px; left: 1301px;" title="Close " width="15px">            
            <div class="lgp">
                <div class="lgpt">
                    <div class="lgpb">
                        <div class="lgpl">
                            <div class="lgpr">
                                <div class="lgpbl">
                                    <div class="lgpbr">
                                        <div class="lgptl">
                                            <div class="lgptr">
                                                <div class="lgpcontent"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth90">
                            <div id="scrollabletabs" style="border: 0px solid green; overflow: hidden; white-space: nowrap; height: 23px; width: 1261px;"></div></td>
<td class=" oawidth10"><table id="lgpanel2:arrowPanel" cellpadding="0" cellspacing="0" style="display: none" width="100%">
<tbody>
<tr>
<td class="oawidth0"><table cellpadding="2" cellspacing="0" width="100%">
<tbody>
<tr>
<td><img src="/omniapp/javax.faces.resource/arrow_left.gif.jsf?ln=images" onmouseout="stopScrollingTimer()" onmouseover="scrollDivLeft('scrollabletabs');" style="cursor: pointer;" title="Slide Left"></td>
<td><img src="/omniapp/javax.faces.resource/arrow_right.gif.jsf?ln=images" onmouseout="stopScrollingTimer()" onmouseover="scrollDivRight('scrollabletabs');" style="cursor: pointer;" title="Slide Right"></td>
</tr>
</tbody>
</table>
</td>
<td class="oawidth100"><span style="visibility: hidden">.</span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div><table id="alertDiv" style="width: 250px; height: 100px; display: none; position: absolute; z-index: 1000;">
<tbody>
<tr>
<td>            
            <div class="whitepanel">
                <div class="whitepanelt">
                    <div class="whitepanelb">
                        <div class="whitepanell">
                            <div class="whitepanelr">
                                <div class="whitepanelbl">
                                    <div class="whitepanelbr">
                                        <div class="whitepaneltl">
                                            <div class="whitepaneltr">
                                                <div class="whitepanelcontent"><table width="100%">
<tbody>
<tr>
<td><table style="width: 250px">
<tbody>
<tr class="oatextcenter">
<td><label id="wp:messageLabel" class="oaerrorstylered">
</label></td>
</tr>
<tr class="oatextcenter">
<td><label id="wp:submessageLabel" class="fieldlabel">
Click Ok to Relogin</label></td>
</tr>
<tr class="oatextcenter">
<td><table class="paddingtop6" border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth50"><label style="visibility: hidden;">
.</label></td>
<td class="oawidth0"><input type="submit" name="wp:j_idt142" value="OK" title="OK" class="buttonstyle" onclick="logoutPopupAlert('alertDiv');hidePopupMask();return false;"></td>
<td class="oawidth50"><label style="visibility: hidden;">
.</label></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></td>
</tr>
</tbody>
</table>
<table id="confirmDiv" cellpadding="0" cellspacing="0" style="width: 400px; height: 100px; display: none; position: absolute; z-index: 1000;">
<tbody>
<tr>
<td>            
            <div class="whitepanel">
                <div class="whitepanelt">
                    <div class="whitepanelb">
                        <div class="whitepanell">
                            <div class="whitepanelr">
                                <div class="whitepanelbl">
                                    <div class="whitepanelbr">
                                        <div class="whitepaneltl">
                                            <div class="whitepaneltr">
                                                <div class="whitepanelcontent"><table class="panelBgColor " cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td><table class="panelBgColor" style="width: 345px;">
<tbody>
<tr class="textalignleft">
<td><label id="wp2:confirmMessageLabel" class="oatitlelabelstyle">
</label></td>
</tr>
<tr class="textalignleft">
<td><table cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td class="oawidth100"><label style="visibility: hidden;">
.</label></td>
<td class="oawidth0 "><input type="button" name="wp2:j_idt148" value="Yes" style="margin-right:3px" class="buttonstyle " onclick="submitResetUserView();hidePopupMask();"></td>
<td class="oawidth0"><input type="button" name="wp2:j_idt149" value="No" class="buttonstyle" onclick="hidePopupAlert('confirmDiv');hidePopupMask();"></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div></td>
</tr>
</tbody>
</table>
<div id="BeeperBox1" class="UIBeeper" style="position: fixed; display: none"><div class="UIBeeper_Full"><div class="Beeps"><div class="UIBeep UIBeep_Top UIBeep_Bottom UIBeep_Selected" style="opacity: 1; "><div class="UIBeep_NonIntentional"><div class="UIBeep_Title"><div id="identifierMsg" class="identifier"></div></div></div></div></div></div></div><div id="BeeperBox" class="UIBeeper" style="top: 42px;position: fixed;"><div class="UIBeeper_Full"><div class="Beeps"><div class="UIBeep UIBeep_Top UIBeep_Bottom UIBeep_Selected" style="opacity: 1; "><div class="UIBeep_NonIntentional"><span id="beeper_x" class="beeper_x">&nbsp;</span><div class="UIBeep_Title"><div id="identifier" class="identifier"></div></div></div></div></div></div></div><div id="BeeperBoxCenter" class="UIBeeper" style="top:6px !important"><div class="UIBeeper_Full"><div class="Beeps"><div class="UIBeep UIBeep_Top UIBeep_Bottom UIBeep_Selected" style="opacity: 1; "><div class="UIBeep_NonIntentional"><div class="UIBeep_Title"><div id="identifierMsgCenter" class="identifier"></div></div></div></div></div></div></div>
             


            <div id="compContainerDiv" style="visibility: visible; width: 1338px;">
                
            <div id="div_Int25" class="containerShadow containerRadius overflowHidden" style="position: absolute; left: 12px; top: 53px; width: 326px; height: 396px;"><!--?xml version="1.0" encoding="UTF-8"?-->

        <div class="containerRadius" style="width: 100%; height: 100%">
            <div class="containerHeaderGradient containerHeaderRadius" style="width:100%;"><table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
<tbody>
<tr>
<td class="oawidth100top"><table id="blankp1_bp_Int25_bluepanel" border="0" cellpadding="0" cellspacing="0" style="padding: 0px; margin: 0px;" width="100%">
<tbody>
<tr>
<td class="lImgColumn">
                            <div id="leftImageDiv" class="lBlueBg"></div></td>
<td class="headerColumn"><table border="0" cellpadding="0" cellspacing="0" onmousedown="setPositionForDrag(event,'Int25')" onmouseout="cursorSimple(this);" onmouseover="cursorMove(this);" style="position: relative" width="100%" class="cursorSimple">
<tbody>
<tr>
<td><span style="vertical-align:middle;left:10px; overflow: hidden; white-space: nowrap;"><label id="blankp1_bp_Int25bp_title_Int25" title="Project  Tree" class="panelstyle oa-ellipsis">Project  Tree</label></span></td>
</tr>
<tr>
<td><label style="visibility: hidden">
.</label></td>
</tr>
</tbody>
</table>
</td>
<td class="menuButtonColumn"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth100"><label style="visibility: hidden">
.</label></td>
<td class="oaalignright"><table border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td class="oaalignright">
                                        <span class="oap-icon-refresh oa-tool-margin-r" id="blankp1:bp_Int25:refreshImg" title="Refresh Project View" onclick="refreshInstance('Int25','Project View','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-minimize oa-tool-margin-r" id="blankp1:bp_Int25:minimizeImg" title="Minimize" onclick="minimizeInstance('Int25','Project View');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-maximize oa-tool-margin-r" id="blankp1:bp_Int25:maxImg" title="Maximize" onclick="maximizeInstance('Int25');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int25:popoutImg" class="oap-icon-popout oa-tool-margin-r" title="Popout Project View" onclick="popoutInstanceWrapper('Int25','Project View','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int25:popinImg" class="oap-icon-popin oa-tool-margin-r" title="Popin Project View" onclick="popinInstanceWrapper('Int25','Project View','I');" style="display:none;cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int25:logoutImg" class="oap-icon-logout oa-tool-margin-r" title="Logout Project View" onclick="logoutFromOAP('Int25');" style="cursor:pointer;display: none;"></span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
<td class="rImgColumn">
                            <div id="rightImageDiv" class="rBlueBg"></div></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

            </div>
            <!-- <iframe id="iframe_Int25" name="iframe_Int25" style="border: 0px solid green;height: 373px;" src="http://192.168.52.192:8080/pmweb/components/treeView/projectTree.jsf?PMWEB_UUID=f6ae07c4-1dc2-4b5c-bfec-1d31a77f8a2f&amp;Action=1&amp;Comp_ins_id=25&amp;Comp_width=326&amp;Comp_height=373&amp;Application=pmweb&amp;CompDefId=1&amp;AppId=1" width="324px;" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" onmouseout="onMouseOutCompIframe('Int25')" onmouseover="onMouseOverCompIframe('Int25')">
            </iframe> -->
        </div>
</div><div id="slider_Int25" style="position: absolute; left: 12px; top: 453px; width: 330px; height: 4px; cursor: row-resize; background-color: rgb(245, 245, 245);"></div><div id="div_Int26" class="containerShadow containerRadius overflowHidden" style="position: absolute; left: 346px; top: 53px; width: 987px; height: 496px; z-index: 0;"><!--?xml version="1.0" encoding="UTF-8"?-->

        <div class="containerRadius" style="width: 100%; height: 100%">
            <div class="containerHeaderRadius containerHeaderGradient" style="width:100%;"><table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
<tbody>
<tr>
<td class="oawidth100top"><table id="blankp1_bp_Int26_bluepanel" border="0" cellpadding="0" cellspacing="0" style="padding: 0px; margin: 0px;" width="100%">
<tbody>
<tr>
<td class="lImgColumn">
                            <div id="leftImageDiv" class="lBlueBg"></div></td>
<td class="headerColumn"><table border="0" cellpadding="0" cellspacing="0" onmousedown="setPositionForDrag(event,'Int26')" onmouseout="cursorSimple(this);" onmouseover="cursorMove(this);" style="position: relative" width="100%" class="cursorSimple">
<tbody>
<tr>
<td><span style="vertical-align:middle;left:10px; overflow: hidden; white-space: nowrap;"><label id="blankp1_bp_Int26bp_title_Int26" title="Loan_Process(Checked Out By shadab)" class="panelstyle oa-ellipsis">Loan_Process(Checked Out By shadab)</label></span></td>
</tr>
<tr>
<td><label style="visibility: hidden">
.</label></td>
</tr>
</tbody>
</table>
</td>
<td class="menuButtonColumn"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth100"><label style="visibility: hidden">
.</label></td>
<td class="oaalignright"><table border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td class="oaalignright">
                                        <span class="oap-icon-minimize oa-tool-margin-r" id="blankp1:bp_Int26:minimizeImg" title="Minimize" onclick="minimizeInstance('Int26','Process View');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-maximize oa-tool-margin-r" id="blankp1:bp_Int26:maxImg" title="Maximize" onclick="maximizeInstance('Int26');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int26:popoutImg" class="oap-icon-popout oa-tool-margin-r" title="Popout Process View" onclick="popoutInstanceWrapper('Int26','Process View','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int26:popinImg" class="oap-icon-popin oa-tool-margin-r" title="Popin Process View" onclick="popinInstanceWrapper('Int26','Process View','I');" style="display:none;cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int26:logoutImg" class="oap-icon-logout oa-tool-margin-r" title="Logout Process View" onclick="logoutFromOAP('Int26');" style="cursor:pointer;display: none;"></span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
<td class="rImgColumn">
                            <div id="rightImageDiv" class="rBlueBg"></div></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

            </div>
            <!-- <iframe id="iframe_Int26" name="iframe_Int26" style="border: 0px solid green;height: 473px;" src="http://192.168.52.192:8080/pmweb/components/process/processView.jsf?PMWEB_UUID=f6ae07c4-1dc2-4b5c-bfec-1d31a77f8a2f&amp;Action=1&amp;Comp_ins_id=26&amp;Comp_width=987&amp;Comp_height=473&amp;Application=pmweb&amp;CompDefId=2&amp;AppId=1" width="985px;" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" onmouseout="onMouseOutCompIframe('Int26')" onmouseover="onMouseOverCompIframe('Int26')">
            </iframe> -->
        </div>
</div><div id="slider_Int26" style="position: absolute; left: 346px; top: 553px; width: 991px; height: 4px; cursor: row-resize; background-color: rgb(245, 245, 245);"></div><div id="div_Int27" class="containerShadow containerRadius overflowHidden" style="position: absolute; left: 12px; top: 457px; width: 326px; height: 301px;"><!--?xml version="1.0" encoding="UTF-8"?-->

        <div class="containerRadius" style="width: 100%; height: 100%">
            <div class="containerHeaderRadius containerHeaderGradient" style="width:100%;"><table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
<tbody>
<tr>
<td class="oawidth100top"><table id="blankp1_bp_Int27_bluepanel" border="0" cellpadding="0" cellspacing="0" style="padding: 0px; margin: 0px;" width="100%">
<tbody>
<tr>
<td class="lImgColumn">
                            <div id="leftImageDiv" class="lBlueBg"></div></td>
<td class="headerColumn"><table border="0" cellpadding="0" cellspacing="0" onmousedown="setPositionForDrag(event,'Int27')" onmouseout="cursorSimple(this);" onmouseover="cursorMove(this);" style="position: relative" width="100%" class="cursorSimple">
<tbody>
<tr>
<td><span style="vertical-align:middle;left:10px; overflow: hidden; white-space: nowrap;"><label id="blankp1_bp_Int27bp_title_Int27" title="Loan_Process" class="panelstyle oa-ellipsis">Loan_Process</label></span></td>
</tr>
<tr>
<td><label style="visibility: hidden">
.</label></td>
</tr>
</tbody>
</table>
</td>
<td class="menuButtonColumn"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth100"><label style="visibility: hidden">
.</label></td>
<td class="oaalignright"><table border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td class="oaalignright">
                                        <span class="oap-icon-refresh oa-tool-margin-r" id="blankp1:bp_Int27:refreshImg" title="Refresh Process Tree View" onclick="refreshInstance('Int27','Process Tree View','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-minimize oa-tool-margin-r" id="blankp1:bp_Int27:minimizeImg" title="Minimize" onclick="minimizeInstance('Int27','Process Tree View');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-maximize oa-tool-margin-r" id="blankp1:bp_Int27:maxImg" title="Maximize" onclick="maximizeInstance('Int27');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int27:popoutImg" class="oap-icon-popout oa-tool-margin-r" title="Popout Process Tree View" onclick="popoutInstanceWrapper('Int27','Process Tree View','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int27:popinImg" class="oap-icon-popin oa-tool-margin-r" title="Popin Process Tree View" onclick="popinInstanceWrapper('Int27','Process Tree View','I');" style="display:none;cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int27:logoutImg" class="oap-icon-logout oa-tool-margin-r" title="Logout Process Tree View" onclick="logoutFromOAP('Int27');" style="cursor:pointer;display: none;"></span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
<td class="rImgColumn">
                            <div id="rightImageDiv" class="rBlueBg"></div></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

            </div>
          <!--   <iframe id="iframe_Int27" name="iframe_Int27" style="border: 0px solid green;height: 278px;" src="http://192.168.52.192:8080/pmweb/components/treeView/processTree.jsf?PMWEB_UUID=f6ae07c4-1dc2-4b5c-bfec-1d31a77f8a2f&amp;Action=1&amp;Comp_ins_id=27&amp;Comp_width=326&amp;Comp_height=278&amp;Application=pmweb&amp;CompDefId=4&amp;AppId=1" width="324px;" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" onmouseout="onMouseOutCompIframe('Int27')" onmouseover="onMouseOverCompIframe('Int27')">
            </iframe> -->
        </div>
</div><div id="slider_Int27" style="position: absolute; left: 12px; top: 762px; width: 330px; height: 4px; cursor: row-resize; background-color: rgb(245, 245, 245);"></div><div id="div_Int28" class="containerShadow containerRadius overflowHidden" style="position: absolute; left: 346px; top: 557px; width: 987px; height: 496px;"><!--?xml version="1.0" encoding="UTF-8"?-->

        <div class="containerRadius" style="width: 100%; height: 100%">
            <div class="containerHeaderRadius containerHeaderGradient" style="width:100%;"><table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
<tbody>
<tr>
<td class="oawidth100top"><table id="blankp1_bp_Int28_bluepanel" border="0" cellpadding="0" cellspacing="0" style="padding: 0px; margin: 0px;" width="100%">
<tbody>
<tr>
<td class="lImgColumn">
                            <div id="leftImageDiv" class="lBlueBg"></div></td>
<td class="headerColumn"><table border="0" cellpadding="0" cellspacing="0" onmousedown="setPositionForDrag(event,'Int28')" onmouseout="cursorSimple(this);" onmouseover="cursorMove(this);" style="position: relative" width="100%" class="cursorSimple">
<tbody>
<tr>
<td><span style="vertical-align:middle;left:10px; overflow: hidden; white-space: nowrap;"><label id="blankp1_bp_Int28bp_title_Int28" title="Process &quot;Loan_Process&quot;" class="panelstyle oa-ellipsis">Process "Loan_Process"</label></span></td>
</tr>
<tr>
<td><label style="visibility: hidden">
.</label></td>
</tr>
</tbody>
</table>
</td>
<td class="menuButtonColumn"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth100"><label style="visibility: hidden">
.</label></td>
<td class="oaalignright"><table border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td class="oaalignright">
                                        <span class="oap-icon-refresh oa-tool-margin-r" id="blankp1:bp_Int28:refreshImg" title="Refresh Properties View" onclick="refreshInstance('Int28','Properties View','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-minimize oa-tool-margin-r" id="blankp1:bp_Int28:minimizeImg" title="Minimize" onclick="minimizeInstance('Int28','Properties View');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-maximize oa-tool-margin-r" id="blankp1:bp_Int28:maxImg" title="Maximize" onclick="maximizeInstance('Int28');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int28:popoutImg" class="oap-icon-popout oa-tool-margin-r" title="Popout Properties View" onclick="popoutInstanceWrapper('Int28','Properties View','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int28:popinImg" class="oap-icon-popin oa-tool-margin-r" title="Popin Properties View" onclick="popinInstanceWrapper('Int28','Properties View','I');" style="display:none;cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int28:logoutImg" class="oap-icon-logout oa-tool-margin-r" title="Logout Properties View" onclick="logoutFromOAP('Int28');" style="cursor:pointer;display: none;"></span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
<td class="rImgColumn">
                            <div id="rightImageDiv" class="rBlueBg"></div></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

            </div>
          <!--   <iframe id="iframe_Int28" name="iframe_Int28" style="border: 0px solid green;height: 473px;" src="http://192.168.52.192:8080/pmweb/components/propertyview/propertyview.jsf?PMWEB_UUID=f6ae07c4-1dc2-4b5c-bfec-1d31a77f8a2f&amp;Action=1&amp;Comp_ins_id=28&amp;Comp_width=987&amp;Comp_height=473&amp;Application=pmweb&amp;CompDefId=3&amp;AppId=1" width="985px;" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" onmouseout="onMouseOutCompIframe('Int28')" onmouseover="onMouseOverCompIframe('Int28')">
            </iframe> -->
        </div>
</div><div id="slider_Int28" style="position: absolute; left: 346px; top: 1057px; width: 991px; height: 4px; cursor: row-resize; background-color: rgb(245, 245, 245);"></div><div id="div_Int29" class="containerShadow containerRadius overflowHidden" style="position: absolute; left: 12px; top: 766px; width: 326px; height: 286px;"><!--?xml version="1.0" encoding="UTF-8"?-->

        <div class="containerRadius" style="width: 100%; height: 100%">
            <div class="containerHeaderGradient containerHeaderRadius" style="width:100%;"><table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
<tbody>
<tr>
<td class="oawidth100top"><table id="blankp1_bp_Int29_bluepanel" border="0" cellpadding="0" cellspacing="0" style="padding: 0px; margin: 0px;" width="100%">
<tbody>
<tr>
<td class="lImgColumn">
                            <div id="leftImageDiv" class="lBlueBg"></div></td>
<td class="headerColumn"><table border="0" cellpadding="0" cellspacing="0" onmousedown="setPositionForDrag(event,'Int29')" onmouseout="cursorSimple(this);" onmouseover="cursorMove(this);" style="position: relative" width="100%" class="cursorSimple">
<tbody>
<tr>
<td><span style="vertical-align:middle;left:10px; overflow: hidden; white-space: nowrap;"><label id="blankp1_bp_Int29bp_title_Int29" title="Chat" class="panelstyle oa-ellipsis">
Chat</label></span></td>
</tr>
<tr>
<td><label style="visibility: hidden">
.</label></td>
</tr>
</tbody>
</table>
</td>
<td class="menuButtonColumn"><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td class="oawidth100"><label style="visibility: hidden">
.</label></td>
<td class="oaalignright"><table border="0" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td class="oaalignright">
                                        <span class="oap-icon-refresh oa-tool-margin-r" id="blankp1:bp_Int29:refreshImg" title="Refresh Chat" onclick="refreshInstance('Int29','Chat','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-minimize oa-tool-margin-r" id="blankp1:bp_Int29:minimizeImg" title="Minimize" onclick="minimizeInstance('Int29','Chat');" style="cursor:pointer;"></span></td>
<td>
                                        <span class="oap-icon-maximize oa-tool-margin-r" id="blankp1:bp_Int29:maxImg" title="Maximize" onclick="maximizeInstance('Int29');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int29:popoutImg" class="oap-icon-popout oa-tool-margin-r" title="Popout Chat" onclick="popoutInstanceWrapper('Int29','Chat','I');" style="cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int29:popinImg" class="oap-icon-popin oa-tool-margin-r" title="Popin Chat" onclick="popinInstanceWrapper('Int29','Chat','I');" style="display:none;cursor:pointer;"></span></td>
<td>
                                        <span id="blankp1:bp_Int29:logoutImg" class="oap-icon-logout oa-tool-margin-r" title="Logout Chat" onclick="logoutFromOAP('Int29');" style="cursor:pointer;display: none;"></span></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
</td>
<td class="rImgColumn">
                            <div id="rightImageDiv" class="rBlueBg"></div></td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>

            </div>
        <!--     <iframe id="iframe_Int29" name="iframe_Int29" style="border: 0px solid green;height: 263px;" src="http://192.168.52.192:8080/chat/chatapp/chatview.jsf?CHAT_UUID=36472b7a-a6f4-4bfb-8df9-429059f6641d&amp;Action=1&amp;Comp_ins_id=29&amp;Comp_width=326&amp;Comp_height=263&amp;Application=chat&amp;CompDefId=1&amp;AppId=6" width="324px;" scrolling="no" frameborder="0" marginheight="0" marginwidth="0" onmouseout="onMouseOutCompIframe('Int29')" onmouseover="onMouseOverCompIframe('Int29')">
            </iframe> -->
        </div>
</div><div id="slider_Int29" style="position: absolute; left: 12px; top: 1056px; width: 330px; height: 4px; cursor: row-resize; background-color: rgb(245, 245, 245);"></div><div id="sliderVer_1" style="position: absolute; left: 342px; top: 53px; width: 4px; height: 1013px; cursor: col-resize; background-color: rgb(245, 245, 245);"></div></div>
             
            <iframe id="OAPMainDivShim" src="about:blank" scrolling="no" frameborder="0" style="position:absolute; top:0px; left:0px; display:none;"></iframe> 
            <iframe id="OAPMovingDivShim" src="about:blank" scrolling="no" frameborder="0" style="position: absolute; top: 53px; left: 346px; display: none; width: 986px; height: 495px; z-index: 100;"></iframe> 
            <div id="verMovingScroll" style="position: absolute; top:0px;left:0px;display: none;"></div>
            <div id="horMovingScroll" style="position: absolute; top:0px;left:0px;display: none;"></div>
            
            <div id="menuContainer" class="menuContainer" style="display: none;">
                <div style="overflow: auto"><label id="emptyListMsg" title="No Component available" class="emptyListCSS">
No Component available</label><table cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td>
                            <div class="normal compMenuItemHide" id="compMenuItemContainer_Int25" onclick="createNLoadNewComponentWrapper(event,this,'Int25','menuContainer');" onmouseover="insMenuMOver(this);" onmouseout="insMenuMOut(this);"><label id="j_idt171:0:insNameLabel" title="Project View">
Project View</label><input id="j_idt171:0:insIdLabel" type="hidden" name="j_idt171:0:insIdLabel" value="Int25">
                            </div></td>
</tr>
<tr>
<td>
                            <div class="normal compMenuItemHide" id="compMenuItemContainer_Int26" onclick="createNLoadNewComponentWrapper(event,this,'Int26','menuContainer');" onmouseover="insMenuMOver(this);" onmouseout="insMenuMOut(this);"><label id="j_idt171:1:insNameLabel" title="Process View">
Process View</label><input id="j_idt171:1:insIdLabel" type="hidden" name="j_idt171:1:insIdLabel" value="Int26">
                            </div></td>
</tr>
<tr>
<td>
                            <div class="normal compMenuItemHide" id="compMenuItemContainer_Int27" onclick="createNLoadNewComponentWrapper(event,this,'Int27','menuContainer');" onmouseover="insMenuMOver(this);" onmouseout="insMenuMOut(this);"><label id="j_idt171:2:insNameLabel" title="Process Tree View">
Process Tree View</label><input id="j_idt171:2:insIdLabel" type="hidden" name="j_idt171:2:insIdLabel" value="Int27">
                            </div></td>
</tr>
<tr>
<td>
                            <div class="normal compMenuItemHide" id="compMenuItemContainer_Int28" onclick="createNLoadNewComponentWrapper(event,this,'Int28','menuContainer');" onmouseover="insMenuMOver(this);" onmouseout="insMenuMOut(this);"><label id="j_idt171:3:insNameLabel" title="Properties View">
Properties View</label><input id="j_idt171:3:insIdLabel" type="hidden" name="j_idt171:3:insIdLabel" value="Int28">
                            </div></td>
</tr>
<tr>
<td>
                            <div class="normal compMenuItemHide" id="compMenuItemContainer_Int29" onclick="createNLoadNewComponentWrapper(event,this,'Int29','menuContainer');" onmouseover="insMenuMOver(this);" onmouseout="insMenuMOut(this);"><label id="j_idt171:4:insNameLabel" title="Chat">
Chat</label><input id="j_idt171:4:insIdLabel" type="hidden" name="j_idt171:4:insIdLabel" value="Int29">
                            </div></td>
</tr>
</tbody>
</table>

                </div>

            </div>
<div id="popupMask" style="display: none; position: absolute; z-index: 200; top: 0px; left: 0px; opacity: 0.4; background-color: rgb(216, 220, 224); height: 1066px; width: 1358px;"></div></body>
</html>