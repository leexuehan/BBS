<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%/*
	User user = (User)session.getAttribute("user_session");
	int sectionid = Integer.parseInt(request.getParameter("SectionId"));
	String username = user.getUserName();
	SectionDAO sdao = new SectionMySQLDAO();
	String SectionName = sdao.getSectionName(sectionid);
System.out.println("主题位于"+SectionName);*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0053)http://bbs.pediy.com/newthread.php?do=newthread&f=131 -->
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="generator" content="vBulletin 3.8.7">
<meta name="keywords" content="安全,软件安全,WEB安全,加密,解密,加壳,脱壳,加密壳,软件保护,破解,debug,pack,unpack">
<meta name="description" content="安全,软件安全,WEB安全,加密,解密,加壳,脱壳,加密壳,软件保护,破解,debug,pack,unpack">
<!-- CSS Stylesheet -->
<style type="text/css" id="vbulletin_css">
/**
* vBulletin 3.8.7 CSS
* Style: 'VBB3'; Style ID: 7
*/
body
{
	background: #EFF3F9;
	color: #13253C;
	font: 12px verdana, simsun,tahoma,geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	margin: 5px 10px 10px 10px;
	padding: 0px;
}
a:link, body_alink
{
	color: #000000;
	text-decoration: none;
}
a:visited, body_avisited
{
	color: #000000;
	text-decoration: none;
}
a:hover, a:active, body_ahover
{
	color: #529AF2;
	text-decoration: underline;
}
.page
{
	background: #FFFFFF;
	color: #13253C;
}
td, th, p, li
{
	font: 12px 宋体,courier new,simsun,tahoma,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.tborder
{
	background: #FFFFFF;
	color: #13253C;
	border: 1px solid #8FA0B0;
}
.tcat
{
	background: #415881 url(images/pediy/gradients/gradient_tcat.gif) repeat-x top left;
	color: #F6F7FC;
	font: bold 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.tcat a:link, .tcat_alink
{
	color: #F6F7FC;
	text-decoration: none;
}
.tcat a:visited, .tcat_avisited
{
	color: #F6F7FC;
	text-decoration: none;
}
.tcat a:hover, .tcat a:active, .tcat_ahover
{
	color: #F6F7FC;
	text-decoration: underline;
}
.thead
{
	background: #D1D7DC url(images/pediy/gradients/gradient_thead.gif) repeat-x top left;
	color: #333333;
	font: 12px tahoma, verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	border-bottom: 1px solid #E2E7F0;
}
.thead a:link, .thead_alink
{
	color: #333333;
	text-decoration: none;
}
.thead a:visited, .thead_avisited
{
	color: #333333;
	text-decoration: none;
}
.thead a:hover, .thead a:active, .thead_ahover
{
	color: #333333;
	text-decoration: underline;
}
.tfoot
{
	background: #415881 url(images/pediy/gradients/gradient_tcat.gif) repeat-x top left;
	color: #F6F7FC;
}
.tfoot a:link, .tfoot_alink
{
	color: #F6F7FC;
}
.tfoot a:visited, .tfoot_avisited
{
	color: #F6F7FC;
}
.tfoot a:hover, .tfoot a:active, .tfoot_ahover
{
	color: #F6F7FC;
}
.alt1, .alt1Active
{
	background: #F5F5F5;
	color: #13253C;
	font: 12px 宋体,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	border-bottom: 1px solid #E2E7F0;line-height:20px;padding:5px;
}
.alt2, .alt2Active
{
	background: #DEE3E7;
	color: #333333;
	font: 12px 宋体,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	border-bottom: 1px solid #E2E7F0;
	
}
.inlinemod
{
	background: #FFFFCC;
	color: #333333;
}
.wysiwyg
{
	background: #F6F7FC;
	color: #333333;
	font: 10pt verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	margin: 5px 10px 10px 10px;
	padding: 0px;
}
.wysiwyg a:link, .wysiwyg_alink
{
	color: #00447F;
}
.wysiwyg a:visited, .wysiwyg_avisited
{
	color: #00447F;
}
.wysiwyg a:hover, .wysiwyg a:active, .wysiwyg_ahover
{
	color: #FF4400;
}
textarea, .bginput
{
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.bginput option, .bginput optgroup
{
	font-size: 12px;
	font-family: verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.button
{
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
select
{
	font: 12px verdana, tahoma, arial, sans-serif;
}
option, optgroup
{
	font-size: 12px;
	font-family: verdana, tahoma, arial, sans-serif;
}
.smallfont
{
	font: 12px 宋体,verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.time
{
	color: #333333;
}
.navbar
{
	font: 12px verdana, tahoma, arial, sans-serif;
}
.highlight
{
	color: #FF0000;
	font-weight: bold;
}
.fjsel
{
	background: #415881;
	color: #E0E0F6;
}
.fjdpth0
{
	background: #F7F7F7;
	color: #333333;
}
.panel
{
	background: #E4E7F5 url(images/gradients/gradient_panel.gif) repeat-x top left;
	color: #333333;
	padding: 10px;
	border: 2px outset;
}
.panelsurround
{
	background: #D1D4E0 url(images/gradients/gradient_panelsurround.gif) repeat-x top left;
	color: #333333;
}
legend
{
	color: #00447F;
	font: 12px tahoma, verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
}
.vbmenu_control
{
	background: #415881 url(images/pediy/gradients/gradient_tcat.gif) repeat-x top left;
	color: #FFFFFF;
	font: bold 12px tahoma, verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	padding: 6px;
	white-space: nowrap;
}
.vbmenu_control a:link, .vbmenu_control_alink
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_control a:visited, .vbmenu_control_avisited
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_control a:hover, .vbmenu_control a:active, .vbmenu_control_ahover
{
	color: #FFFFFF;
	text-decoration: underline;
}
.vbmenu_popup
{
	background: #FFFFFF;
	color: #333333;
	border: 1px solid #00447F;
}
.vbmenu_option
{
	background: #F6F7FC;
	color: #333333;
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	white-space: nowrap;
	cursor: pointer;
	border-bottom: 1px solid #E2E7F0;
}
.vbmenu_option a:link, .vbmenu_option_alink
{
	color: #00447F;
	text-decoration: none;
}
.vbmenu_option a:visited, .vbmenu_option_avisited
{
	color: #00447F;
	text-decoration: none;
}
.vbmenu_option a:hover, .vbmenu_option a:active, .vbmenu_option_ahover
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_hilite
{
	background: #8A949E;
	color: #FFFFFF;
	font: 12px verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif;
	white-space: nowrap;
	cursor: pointer;
	border-bottom: 1px solid #E2E7F0;
}
.vbmenu_hilite a:link, .vbmenu_hilite_alink
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_hilite a:visited, .vbmenu_hilite_avisited
{
	color: #FFFFFF;
	text-decoration: none;
}
.vbmenu_hilite a:hover, .vbmenu_hilite a:active, .vbmenu_hilite_ahover
{
	color: #FFFFFF;
	text-decoration: none;
}
/* ***** styling for 'big' usernames on postbit etc. ***** */
.bigusername { font-size: 11pt; FONT-FAMILY: verdana, geneva, lucida, 'lucida grande', arial, helvetica, sans-serif} 


/* ***** small padding on 'thead' elements ***** */
td.thead, th.thead, div.thead { padding: 4px; }

/* ***** basic styles for multi-page nav elements */
.pagenav a { text-decoration: none; }
.pagenav td { padding: 2px 4px 2px 4px; }

/* ***** de-emphasized text */
.shade, a.shade:link, a.shade:visited { color: #777777; text-decoration: none; }
a.shade:active, a.shade:hover { color: #FF4400; text-decoration: underline; }
.tcat .shade, .thead .shade, .tfoot .shade { color: #DDDDDD; }

/* ***** define margin and font-size for elements inside panels ***** */
.fieldset { margin-bottom: 6px; }
.fieldset, .fieldset td, .fieldset p, .fieldset li { font-size: 12px; }

/* *****文字换行及横排***** */
.tb {table-layout:fixed;}
.columncell {background: #E1E4F2; color: #000000; border: 1px solid #0B198C; padding: 5px 5px 5px 5px;}
#wrap{word-break:break-all; width:100%;}
.divh {background-color: #FFFFCC;border: 1px dashed #000000;text-align: center;}
/* ***** quote style 2 ***** */  
.quoted1 { width: 95%; border: 1px solid #909090; padding: 8px; padding-top: 0px; margin: 8px; margin-top: 12pt; text-align: left; }  
.quoted2 { position: relative; left: 4px; top: -7.5pt; width: 150px;  color: #ffffff; border: 1px solid #909090; background-color: #909090; padding: 1px; padding-left: 6px; padding-right: 6px; z-index: 1; }  

/* *****CCF背景是深色的***** */
.ccf{background: #DEDFDF; color: #000000}
.ccffont{color: #000080}
</style>
<link rel="stylesheet" type="text/css" href="./Styles/PostArticleStyle/vbulletin_important.css">
<!-- Editor Styles -->
<style type="text/css" id="vbulletin_editor_css_dynamic">
<!--
@import url("clientscript/vbulletin_editor.css?v=383");

.vBulletin_editor {
	background: #E1E1E2;
	padding: 6px;
}
.imagebutton {
	background: #E1E1E2;
	color: #000000;
	padding: 1px;
	border: none;
}
.ocolor, .ofont, .osize, .osmilie, .osyscoloar, .smilietitle {
	background: #FFFFFF;
	color: #000000;
	border: 1px solid #FFFFFF;
}
.popup_pickbutton {
	border: 1px solid #FFFFFF;
}
.popup_feedback {
	background: #FFFFFF;
	color: #000000;
	border-right: 1px solid #FFFFFF;
}
.popupwindow {
	background: #FFFFFF;
}
#fontOut, #sizeOut, .popup_feedback div {
	background: #FFFFFF;
	color: #000000;
}
.alt_pickbutton {
	border-left: 1px solid #E1E1E2;
}
.popup_feedback input, .popup_feedback div
{
	border: 0px solid;
	padding: 0px 2px 0px 2px;
	cursor: default;
	font: 12px tahoma;
	overflow: hidden;
}
-->
</style>
<!-- / Editor Styles -->
<!-- / CSS Stylesheet -->
<script type="text/javascript" src="./Styles/PostArticleStyle/yahoo-dom-event.js"></script>
<script type="text/javascript" src="./Styles/PostArticleStyle/connection-min.js"></script>
<script type="text/javascript">
<!--
var SESSIONURL = "";
var SECURITYTOKEN = "1432639519-0f5a87149d9ed5912343d1658d5232682b7ab139";
var IMGDIR_MISC = "images/pediy/misc";
var vb_disable_ajax = parseInt("0", 10);
// -->
function whodownloaded(attachmentid)
{
    window.open("whodownloaded.php?s=&attachmentid=" + attachmentid, "whodownloaded", "toolbar=no, scrollbars=yes, resizable=yes, width=240, height=300, top=50, left=50");
}
// -->
</script>
<script type="text/javascript" src="./Styles/PostArticleStyle/vbulletin_global.js"></script>
<script type="text/javascript" src="./Styles/PostArticleStyle/vbulletin_menu.js"></script>
<link rel="alternate" type="application/rss+xml" title="看雪安全论坛 RSS Feed" href="http://bbs.pediy.com/external.php?type=RSS2">
<title>看雪安全论坛 - 发表新主题</title>
</head>
<body>
<!-- logo -->
<a name="top"></a>
<table border="0" width="980" cellpadding="0" cellspacing="0" align="center">
  <tbody>
    <tr>
      <td width="32" rowspan="2" align="left"><a href="http://www.pediy.com/">logo</a></td>
      <td width="603" rowspan="2" align="right" id="header_right_cell"><a href="http://www.ijiami.cn/activity/rencai" target="_blank"></a></td>
      <td width="320" align="right" id="header_right_cell"><p>&nbsp;</p>
        <p>&nbsp;</p></td>
      <td width="92" align="right" id="header_right_cell"><p>&nbsp;</p>
        <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td align="right" id="header_right_cell"><a href="http://bbs.pediy.com/"></a></td>
      <td align="right" id="header_right_cell"><a href="http://www.kanxue.com/bbs/"></a></td>
    </tr>
  </tbody>
</table>
<!-- /logo -->
<!-- content table -->
<!-- open content container -->
<if></if>
<div align="center">
  <div class="page" style="width:980px; text-align:left">
    <div style="padding:0px 7px 0px 7px" align="left"> <br>
      <!-- breadcrumb, login, pm info -->
      <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
        <tbody>
          <tr>
            <td class="alt1" width="100%">Tree</td>
            <td nowrap="nowrap" class="alt2"><strong><s:property value="username"/></strong></td>
          </tr>
        </tbody>
      </table>
      <!-- / breadcrumb, login, pm info -->
      <!-- nav buttons bar -->
      <div class="tborder" style="padding:1px; border-top-width:0px">
        <table cellpadding="0" cellspacing="0" border="0" width="100%" align="center">
          <tbody>
            <tr align="center">
              <td width="30%" class="vbmenu_control"><a href="http://bbs.pediy.com/usercp.php">控制面板</a></td>
              <td width="2%" class="vbmenu_control">&nbsp;</td>
              <td width="41%" class="vbmenu_control"><a id="navbar_search" href="http://bbs.pediy.com/search.php" accesskey="4" rel="nofollow" style="cursor: pointer;">搜索论坛 <img src="./Styles/PostArticleStyle/menu_open.gif" border="0" title="" alt=""></a>
                <script type="text/javascript"> vbmenu_register("navbar_search"); </script></td>
              <td width="27%" class="vbmenu_control"><a href="">退出论坛</a></td>
            </tr>
          </tbody>
        </table>
      </div>
      <!-- / nav buttons bar -->
      <br>
      <!-- 
      <form action="http://bbs.pediy.com/profile.php?do=dismissnotice" method="post" id="notices">
        <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
          <tbody>
            <tr>
              <td class="thead">重要通知</td>
            </tr>
            <tr>
              <td class="alt1"><font color="#000000">公告</font></td>
            </tr>
          </tbody>
        </table>
        <br>
      </form>
       -->
      <!-- NAVBAR POPUP MENUS -->
      <!-- / community link menu -->
      <!-- header quick search form -->
      <div class="vbmenu_popup" id="navbar_search_menu" style="display:none;margin-top:3px" align="left">
        <table cellpadding="4" cellspacing="1" border="0">
          <tbody>
            <tr>
              <td class="thead">搜索论坛</td>
            </tr>      
          </tbody>
        </table>
      </div>
      <!-- / header quick search form -->
      <!-- / NAVBAR POPUP MENUS -->
      
      <script type="text/javascript">
<!--

function validaddTitle(titleForm, titlesubctVal, TitlesubjectText)
{
if (TitlesubjectText.length < 1)
{
alert("请选择一个话题分类!"); 
return false;
}

return vB_Editor['vB_Editor_001'].prepare_submit(titlesubctVal, 4);

}
//-->
</script>
      <form action="PostTopic!Post.action?SectionId=<s:property value='SectionId'/>" method="post">
        <table class="tborder" cellpadding="6" cellspacing="1" border="0" width="100%" align="center">
          <tbody>
            <tr>
              <td class="tcat"> 发表新主题 </td>
            </tr>
            <tr>
              <td class="panelsurround" align="center"><div class="panel">
                  <div style="width:640px" align="left">
                    <table cellpadding="0" cellspacing="0" border="0" class="fieldset">
                      <tbody>
                        <tr>
                          <td class="smallfont" colspan="4">标题:</td>
                        </tr>
                        <tr>                   
                          <!-- 标题 -->
                          <td>
                          <input type="text" class="bginput" name="Name" size="40" maxlength="85" tabindex="1">                    
                          </td>                       
                          <td>&nbsp;&nbsp;</td>
                          <td><img id="display_posticon" src="./Styles/PostArticleStyle/clear.gif" alt=""></td>
                        </tr>
                      </tbody>
                    </table>
                    <!-- VBZH - PHPForce - Joey 专题-->
                    <!-- /VBZH - PHPForce - Joey 专题-->
                    <!-- / subject field -->
                    <!-- message area -->
                    <div class="smallfont">信息:</div>
                    <!-- Editor Scripts -->                
                    <script type="text/javascript">

</script>
                    <!-- / Editor Scripts -->
                    <table cellpadding="0" cellspacing="0" border="0">
                      <tbody>
                        <tr>
                          <td id="vB_Editor_001" class="vBulletin_editor" width="100%"><div id="vB_Editor_001_controls" class="controlbar">
                              <table cellpadding="0" cellspacing="0" border="0">
                                <tbody>
                                  <tr>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_removeformat" style="color: rgb(0, 0, 0); padding: 1px; border: none; background: rgb(225, 225, 226);"><img src="./Styles/PostArticleStyle/removeformat.gif" width="21" height="20" alt="清除文本格式" title="清除文本格式"></div></td>
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_popup_fontname" title="字体" style="color: rgb(0, 0, 0); padding: 1px; border: none; background: rgb(225, 225, 226);">
                                        <table cellpadding="0" cellspacing="0" border="0">
                                          <tbody>
                                            <tr>
                                              <td class="popup_feedback" style="border-right-width: 1px; border-right-style: solid; border-right-color: rgb(255, 255, 255);"><div id="vB_Editor_001_font_out" style="width:91px">字体</div>
                                                <div id="vB_Editor_001_fontoption_宋体" style="width: 91px; display: none;">宋体</div>
                                                <div id="vB_Editor_001_fontoption_黑体" style="width: 91px; display: none;">黑体</div>
                                                <div id="vB_Editor_001_fontoption_微软雅黑" style="width: 91px; display: none;">微软雅黑</div>
                                                <div id="vB_Editor_001_fontoption_楷体" style="width: 91px; display: none;">楷体</div>
                                                <div id="vB_Editor_001_fontoption_幼圆" style="width: 91px; display: none;">幼圆</div>
                                                <div id="vB_Editor_001_fontoption_仿宋体" style="width: 91px; display: none;">仿宋体</div>
                                                <div id="vB_Editor_001_fontoption_新細明體" style="width: 91px; display: none;">新細明體</div>
                                                <div id="vB_Editor_001_fontoption_Arial" style="width: 91px; display: none;">Arial</div>
                                                <div id="vB_Editor_001_fontoption_Arial Black" style="width: 91px; display: none;">Arial Black</div>
                                                <div id="vB_Editor_001_fontoption_Arial Narrow" style="width: 91px; display: none;">Arial Narrow</div>
                                                <div id="vB_Editor_001_fontoption_Book Antiqua" style="width: 91px; display: none;">Book Antiqua</div>
                                                <div id="vB_Editor_001_fontoption_Century Gothic" style="width: 91px; display: none;">Century Gothic</div>
                                                <div id="vB_Editor_001_fontoption_Comic Sans MS" style="width: 91px; display: none;">Comic Sans MS</div>
                                                <div id="vB_Editor_001_fontoption_Courier New" style="width: 91px; display: none;">Courier New</div>
                                                <div id="vB_Editor_001_fontoption_Fixedsys" style="width: 91px; display: none;">Fixedsys</div>
                                                <div id="vB_Editor_001_fontoption_Franklin Gothic Medium" style="width: 91px; display: none;">Franklin Gothic Medium</div>
                                                <div id="vB_Editor_001_fontoption_Garamond" style="width: 91px; display: none;">Garamond</div>
                                                <div id="vB_Editor_001_fontoption_Georgia" style="width: 91px; display: none;">Georgia</div>
                                                <div id="vB_Editor_001_fontoption_Impact" style="width: 91px; display: none;">Impact</div>
                                                <div id="vB_Editor_001_fontoption_Lucida Console" style="width: 91px; display: none;">Lucida Console</div>
                                                <div id="vB_Editor_001_fontoption_Lucida Sans Unicode" style="width: 91px; display: none;">Lucida Sans Unicode</div>
                                                <div id="vB_Editor_001_fontoption_Microsoft Sans Serif" style="width: 91px; display: none;">Microsoft Sans Serif</div>
                                                <div id="vB_Editor_001_fontoption_Palatino Linotype" style="width: 91px; display: none;">Palatino Linotype</div>
                                                <div id="vB_Editor_001_fontoption_System" style="width: 91px; display: none;">System</div>
                                                <div id="vB_Editor_001_fontoption_Tahoma" style="width: 91px; display: none;">Tahoma</div>
                                                <div id="vB_Editor_001_fontoption_Terminal" style="width: 91px; display: none;">Terminal</div>
                                                <div id="vB_Editor_001_fontoption_Times New Roman" style="width: 91px; display: none;">Times New Roman</div>
                                                <div id="vB_Editor_001_fontoption_Trebuchet MS" style="width: 91px; display: none;">Trebuchet MS</div>
                                                <div id="vB_Editor_001_fontoption_Verdana" style="width: 91px; display: none;">Verdana</div></td>
                                              <td class="popup_pickbutton" style="border-color: rgb(255, 255, 255);"><img src="./Styles/PostArticleStyle/menupop.gif" width="11" height="16" alt=""></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_popup_fontsize" title="大小" style="color: rgb(0, 0, 0); padding: 1px; border: none; background: rgb(225, 225, 226);">
                                        <table cellpadding="0" cellspacing="0" border="0">
                                          <tbody>
                                            <tr>
                                              <td class="popup_feedback" style="border-right-width: 1px; border-right-style: solid; border-right-color: rgb(255, 255, 255);"><div id="vB_Editor_001_size_out" style="width:25px">大小</div>
                                                <div id="vB_Editor_001_sizeoption_1" style="width: 25px; display: none;">1</div>
                                                <div id="vB_Editor_001_sizeoption_2" style="width: 25px; display: none;">2</div>
                                                <div id="vB_Editor_001_sizeoption_3" style="width: 25px; display: none;">3</div>
                                                <div id="vB_Editor_001_sizeoption_4" style="width: 25px; display: none;">4</div>
                                                <div id="vB_Editor_001_sizeoption_5" style="width: 25px; display: none;">5</div>
                                                <div id="vB_Editor_001_sizeoption_6" style="width: 25px; display: none;">6</div>
                                                <div id="vB_Editor_001_sizeoption_7" style="width: 25px; display: none;">7</div></td>
                                              <td class="popup_pickbutton" style="border-color: rgb(255, 255, 255);"><img src="./Styles/PostArticleStyle/menupop.gif" width="11" height="16" alt=""></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div></td>
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_popup_forecolor" title="[颜色]" style="color: rgb(0, 0, 0); padding: 1px; border: none; background: rgb(225, 225, 226);">
                                        <table cellpadding="0" cellspacing="0" border="0">
                                          <tbody>
                                            <tr>
                                              <td id="vB_Editor_001_color_out"><img src="./Styles/PostArticleStyle/color.gif" width="21" height="16" alt=""><br>
                                                <img src="./Styles/PostArticleStyle/clear.gif" id="vB_Editor_001_color_bar" alt="" style="background-color:black" width="21" height="4"></td>
                                              <td class="alt_pickbutton" style="padding-left: 1px; border-left-style: none;"><img src="./Styles/PostArticleStyle/menupop.gif" width="11" height="16" alt=""></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div></td>
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_popup_smilie" title="表情图标">
                                        <table cellpadding="0" cellspacing="0" border="0">
                                          <tbody>
                                            <tr>
                                              <td><img src="./Styles/PostArticleStyle/smilie.gif" alt="" width="21" height="20"></td>
                                              <td class="alt_pickbutton"><img src="./Styles/PostArticleStyle/menupop.gif" width="11" height="16" alt=""></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_popup_attach" title="附件管理" style="color: rgb(0, 0, 0); padding: 1px; border: none; background: rgb(225, 225, 226);">
                                        <table cellpadding="0" cellspacing="0" border="0">
                                          <tbody>
                                            <tr>
                                              <td><img src="./Styles/PostArticleStyle/attach.gif" alt="" width="21" height="20"></td>
                                              <td class="alt_pickbutton" style="padding-left: 1px; border-left-style: none;"><img src="./Styles/PostArticleStyle/menupop.gif" width="11" height="16" alt=""></td>
                                            </tr>
                                          </tbody>
                                        </table>
                                      </div></td>
                                    <!--
				<td><img src="images/editor/separator.gif" width="6" height="20" alt="" /></td>
				<td><div class="imagebutton" id="vB_Editor_001_cmd_cut"><img src="images/editor/cut.gif" width="21" height="20" alt="剪切" /></div></td>
				<td><div class="imagebutton" id="vB_Editor_001_cmd_copy"><img src="images/editor/copy.gif" width="21" height="20" alt="复制" /></div></td>
				<td><div class="imagebutton" id="vB_Editor_001_cmd_paste"><img src="images/editor/paste.gif" width="21" height="20" alt="粘贴" /></div></td>
				-->
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_undo"><img src="./Styles/PostArticleStyle/undo.gif" width="21" height="20" alt="撤销" title="撤销"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_redo" style="color: rgb(0, 0, 0); padding: 1px; border: none; background: rgb(225, 225, 226);"><img src="./Styles/PostArticleStyle/redo.gif" width="21" height="20" alt="重做" title="重做"></div></td>
                                    <td width="100%">&nbsp;</td>
                                    <!--  -->
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_resize_0_100"><img src="./Styles/PostArticleStyle/resize_0.gif" width="21" height="9" alt="收缩编辑框" title="收缩编辑框"></div>
                                      <div class="imagebutton" id="vB_Editor_001_cmd_resize_1_100"><img src="./Styles/PostArticleStyle/resize_1.gif" width="21" height="9" alt="扩展编辑框" title="扩展编辑框"></div></td>
                                  </tr>
                                </tbody>
                              </table>
                              <table cellpadding="0" cellspacing="0" border="0">
                                <tbody>
                                  <tr>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_bold"><img src="./Styles/PostArticleStyle/bold.gif" width="21" height="20" alt="粗体" title="粗体"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_italic"><img src="./Styles/PostArticleStyle/italic.gif" width="21" height="20" alt="斜体" title="斜体"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_underline"><img src="./Styles/PostArticleStyle/underline.gif" width="21" height="20" alt="下划线" title="下划线"></div></td>
                                    <!-- <td><img src="images/editor/separator.gif" width="6" height="20" alt="" /></td> -->
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_justifyleft"><img src="./Styles/PostArticleStyle/justifyleft.gif" width="21" height="20" alt="居左" title="居左"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_justifycenter"><img src="./Styles/PostArticleStyle/justifycenter.gif" width="21" height="20" alt="居中" title="居中"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_justifyright"><img src="./Styles/PostArticleStyle/justifyright.gif" width="21" height="20" alt="居右" title="居右"></div></td>
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_insertorderedlist"><img src="./Styles/PostArticleStyle/insertorderedlist.gif" width="21" height="20" alt="项目编号" title="项目编号"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_insertunorderedlist"><img src="./Styles/PostArticleStyle/insertunorderedlist.gif" width="21" height="20" alt="项目列表" title="项目列表"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_outdent"><img src="./Styles/PostArticleStyle/outdent.gif" width="21" height="20" alt="减少缩进" title="减少缩进"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_indent" style="color: rgb(0, 0, 0); padding: 1px; border: none; background: rgb(225, 225, 226);"><img src="./Styles/PostArticleStyle/indent.gif" width="21" height="20" alt="增加缩进" title="增加缩进"></div></td>
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_createlink"><img src="./Styles/PostArticleStyle/createlink.gif" width="21" height="20" alt="插入链接" title="插入链接"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_unlink"><img src="./Styles/PostArticleStyle/unlink.gif" width="21" height="20" alt="移除链接" title="移除链接"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_email"><img src="./Styles/PostArticleStyle/email.gif" width="21" height="20" alt="插入邮件链接" title="插入邮件链接"></div></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_insertimage"><img src="./Styles/PostArticleStyle/insertimage.gif" width="21" height="20" alt="插入图片" title="插入图片"></div></td>
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_wrap0_quote"><img src="./Styles/PostArticleStyle/quote.gif" width="21" height="20" alt="在选择的文本前后插入 [QUOTE] (引用) 标签" title="在选择的文本前后插入 [QUOTE] (引用) 标签"></div></td>
                                    <td><img src="./Styles/PostArticleStyle/separator.gif" width="6" height="20" alt=""></td>
                                    <td><div class="imagebutton" id="vB_Editor_001_cmd_wrap0_code"><img src="./Styles/PostArticleStyle/code.gif" width="21" height="20" alt="在选择的文本前后插入 [CODE] (代码) 标签" title="在选择的文本前后插入 [CODE] (代码) 标签"></div></td>
                                  </tr>
                                </tbody>
                              </table>
                            </div>
                            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                              <tbody>
                                <tr valign="top">
                                  <td class="controlbar">
                                  <!-- 帖子内容 -->
                                  <textarea name="Contents" id="vB_Editor_001_textarea" rows="10" cols="60" style="display: block; width: 540px; height: 250px;" tabindex="1" dir="ltr"></textarea>
                                  </td>
                                  <td class="controlbar"><fieldset id="vB_Editor_001_smiliebox" title="表情图标">
                                    <legend>表情图标</legend>
                                    <table cellpadding="4" cellspacing="0" border="0" align="center">
                                      <tbody>
                                        <tr align="center" valign="bottom">
                                          <td><img src="./Styles/PostArticleStyle/frown.gif" id="vB_Editor_001_smilie_2" alt=":(:" title="皱眉" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/eek.gif" id="vB_Editor_001_smilie_10" alt=":eek:" title="恐怖!" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/cool.gif" id="vB_Editor_001_smilie_7" alt=":cool:" title="酷" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                        </tr>
                                        <tr align="center" valign="bottom">
                                          <td><img src="./Styles/PostArticleStyle/biggrin.gif" id="vB_Editor_001_smilie_4" alt=":D:" title="狂笑" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/124.gif" id="vB_Editor_001_smilie_12" alt=":3:" title="124.gif" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/smile.gif" id="vB_Editor_001_smilie_1" alt=":):" title="微笑" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                        </tr>
                                        <tr align="center" valign="bottom">
                                          <td><img src="./Styles/PostArticleStyle/mad.gif" id="vB_Editor_001_smilie_9" alt=":mad:" title="狂怒" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/tongue.gif" id="vB_Editor_001_smilie_6" alt=":p:" title="扮鬼脸" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/redface.gif" id="vB_Editor_001_smilie_3" alt=":o:" title="尴尬" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                        </tr>
                                        <tr align="center" valign="bottom">
                                          <td><img src="./Styles/PostArticleStyle/confused.gif" id="vB_Editor_001_smilie_11" alt=":confused:" title="伤心" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/rolleyes.gif" id="vB_Editor_001_smilie_8" alt=":rolleyes:" title="碌眼" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                          <td><img src="./Styles/PostArticleStyle/wink.gif" id="vB_Editor_001_smilie_5" alt=";):" title="使眼色" border="0" class="inlineimg" style="cursor: pointer;"></td>
                                        </tr>
                                      </tbody>
                                    </table>
                                    </fieldset></td>
                                </tr>
                              </tbody>
                            </table></td>
                        </tr>
                      </tbody>
                    </table>
                    <script type="text/javascript"><!--
vB_Editor['vB_Editor_001'] = new vB_Text_Editor('vB_Editor_001', 0, '131', '1', undefined, '');
//-->
</script>
                    <!-- / message area -->
                    <!--悬赏功能 By Aoron-->
                    <!--结束 -->
                    <fieldset class="fieldset" style="margin-top: 6px">                  
                    <div id="tag_add_menu" class="vbmenu_popup" style="display: none; position: absolute; z-index: 50;"></div>
                    
                    <script type="text/javascript">
				<!--
				vbmenu_register('tag_add', true);
				tag_add_comp = new vB_AJAX_TagSuggest('tag_add_comp', 'tag_add_input', 'tag_add');
				tag_add_comp.allow_multiple = true;
				tag_add_comp.set_delimiters('');
				//-->
				</script>
                    </fieldset>
                    <script type="text/javascript">
	<!--
	function swap_posticon(imgid)
	{
		var out = fetch_object("display_posticon");
		var img = fetch_object(imgid);
		if (img)
		{
			out.src = img.src;
			out.alt = img.alt;
		}
		else
		{
			out.src = "clear.gif";
			out.alt = "";
		}
	}
	// -->
	</script>
                    <fieldset class="fieldset" style="margin-top: 6px">
                    <legend></legend>
                    </fieldset>
                    <!-- PHPForce - Joey修改隐藏 -->
                    <!-- /PHPForce - Joey修改隐藏 -->
                  </div>
                </div>
                <div style="margin-top:6px">
                  <input type="submit" class="button"  value="发表主题" accesskey="s" tabindex="1">
                  <!--  <input type="submit" class="button" name="preview" value="预览帖子" accesskey="r" tabindex="1">-->
                </div></td>
            </tr>
          </tbody>
        </table>
        <br>
      </form>
      <br>
      <div align="center"></div>
    </div>
  </div>
</div>
<!-- / close content container -->
<!-- /content area table -->
<script type="text/javascript">
<!--
	// Main vBulletin Javascript Initialization
	vBulletin_init();
//-->
</script>
<!-- google-->
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script src="./Styles/PostArticleStyle/ga.js" type="text/javascript"></script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-9784446-1");
pageTracker._trackPageview();
} catch(err) {}</script>
<s:debug/>
</body>
</html>
