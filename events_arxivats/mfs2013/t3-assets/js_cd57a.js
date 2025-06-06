/* caption.js */
/*
		GNU General Public License version 2 or later; see LICENSE.txt
*/
var JCaption=new Class({initialize:function(a){this.selector=a;$$(a).each(function(a){this.createCaption(a)},this)},createCaption:function(a){var f=document.createTextNode(a.title),c=document.createElement("div"),d=document.createElement("p"),e=a.getAttribute("width"),b=a.getAttribute("align");if(!e)e=a.width;b||(b=a.getStyle("float"));if(!b)b=a.style.styleFloat;if(b==""||!b)b="none";d.appendChild(f);d.className=this.selector.replace(".","_");a.parentNode.insertBefore(c,a);c.appendChild(a);a.title!=
""&&c.appendChild(d);c.className=this.selector.replace(".","_");c.className=c.className+" "+b;c.setAttribute("style","float:"+b);c.style.width=e+"px"}});;

/* js_da110b45b06944ce7c4ac43b85d02023.script.js */
var JATypo=new Class({initialize:function(options){this.options=$extend({offsets:{x:10,y:10}},options||{});this.overlay=new Element('div',{'id':'jatypo-overlay'}).inject($(document.body));this.overlay.setStyles({'width':window.getScrollWidth(),'height':window.getScrollHeight()});this.wrapper=$('jatypo-wrap');if(!this.wrapper)return;var button2=new Element('div',{'class':'button2-right jatypo-btn'});if(Browser.ie){button2.innerHTML='<a href="#" onclick="IeCursorFix(); return false;"><span>JATypo</span></a>';}
else
{button2.innerHTML='<span>JATypo</span>';}
this.button=new Element('div',{'class':'button2-left'}).adopt(button2).injectBefore($('editor-xtd-buttons'));this.typos=this.wrapper.getElements('.typo');this.typos.addEvents({'mouseenter':function(){this.addClass('typo-over');var wrapper=$('jatypo-wrap');var sample=this.getElement('.sample');var pos_s=findPos(sample);var pos_w=findPos(wrapper);var scroll_w={x:wrapper.scrollLeft,y:wrapper.scrollTop};var x0=pos_w.x+scroll_w.x;var y0=pos_w.y+scroll_w.y;var w0=wrapper.offsetWidth;var h0=wrapper.offsetHeight;var x1=pos_s.x;var y1=pos_s.y;var w1=sample.offsetWidth;var h1=sample.offsetHeight;if(y1<y0){this.addClass('typo-top').removeClass('typo-bottom')}
if(y1+h1>y0+h0){this.addClass('typo-bottom').removeClass('typo-top')}
if(x1<x0){this.addClass('typo-left').removeClass('typo-right')}
if(x1+w1>x0+w0){this.addClass('typo-right').removeClass('typo-left')}},'mouseleave':function(){this.removeClass('typo-over');},'click':function(){var sample=this.getElement('.sample');var html=sample.innerHTML;if($('jform_content')){jInsertEditorText(html,'jform_content');}
else{jInsertEditorText(html,'jform_articletext');}
$('jatypo-wrap').style.display='none';}});this.wrapper.injectAfter(this.overlay);this.button.addEvent('click',function(event){event=new Event(event);this.position();event.stop();}.bind(this));this.overlay.addEvent('click',function(){this.wrapper.style.display='none';this.overlay.style.display='none';}.bind(this));var doc=null;if($('jform_articletext_ifr')){doc=$('jform_articletext_ifr').contentWindow.document;}
if($('jform_content_ifr')){doc=$('jform_content_ifr').contentWindow.document;}
if(doc){var head=doc.getElementsByTagName('head')[0];var css=doc.createElement('link');css.rel='stylesheet';css.type='text/css';css.href=this.options.typocss;head.appendChild(css);}},locate:function(event){var win={'x':window.getWidth(),'y':window.getHeight()};var scroll={'x':window.getScrollLeft(),'y':window.getScrollTop()};var pwin={'x':this.wrapper.offsetWidth,'y':this.wrapper.offsetHeight};var prop={'x':'left','y':'top'};for(var z in prop){var pos=event.page[z]+this.options.offsets[z];if((pos+pwin[z]-scroll[z])>win[z])pos=event.page[z]-this.options.offsets[z]-pwin[z];this.wrapper.style.prop[z]=pos;};this.wrapper.style.display='block';this.overlay.style.display='block';},position:function(){this.wrapper.style.display='block';this.overlay.style.display='block';var pos=this.button.getPosition();var scroll={'x':window.getScrollLeft(),'y':window.getScrollTop()};var pwin={'x':this.wrapper.offsetWidth,'y':this.wrapper.offsetHeight};this.wrapper.setStyles({'left':pos.x+this.options.offsets.x,'top':pos.y+this.options.offsets.y-pwin.y});}});function findPos(obj){var curleft=curtop=0;if(obj.offsetParent){do{curleft+=obj.offsetLeft;curtop+=obj.offsetTop;}while(obj=obj.offsetParent);}
return{x:curleft,y:curtop};};;

/* js_99240225466f6bbb1945e95241f0801e.core.js */
function switchFontSize(ckname,val){var bd=document.getElementsByTagName('body');if(!bd||!bd.length)return;bd=bd[0];switch(val){case'inc':if(CurrentFontSize+1<7){CurrentFontSize++;}
break;case'dec':if(CurrentFontSize-1>0){CurrentFontSize--;}
break;case'reset':default:CurrentFontSize=DefaultFontSize;}
var newclass='fs'+CurrentFontSize;bd.className=bd.className.replace(new RegExp('fs.?','g'),'');bd.className=trim(bd.className);bd.className+=(bd.className?' ':'')+newclass;createCookie(ckname,CurrentFontSize,365);}
function switchTool(ckname,val){createCookie(ckname,val,365);window.location.reload();}
function cpanel_reset(){var matches=document.cookie.match(new RegExp('(?:^|;)\\s*'+tmpl_name.escapeRegExp()+'_([^=]*)=([^;]*)','g'));if(!matches)return;for(var i=0;i<matches.length;i++){var ck=matches[i].match(new RegExp('(?:^|;)\\s*'+tmpl_name.escapeRegExp()+'_([^=]*)=([^;]*)'));if(ck){createCookie(tmpl_name+'_'+ck[1],'',-1);}}
if(window.location.href.indexOf('?')>-1){window.location.href=window.location.href.substr(0,window.location.href.indexOf('?'));}else{window.location.reload(true);}}
function cpanel_apply(){var elems=document.getElementById('ja-cpanel-main').getElementsByTagName('*');var usersetting={};for(var i=0;i<elems.length;i++){var el=elems[i];if(el.name&&(match=el.name.match(/^user_(.*)$/))){var name=match[1];var value='';if(el.tagName.toLowerCase()=='input'&&(el.type.toLowerCase()=='radio'||el.type.toLowerCase()=='checkbox')){if(el.checked)value=el.value;}else{value=el.value;}
if(usersetting[name]){if(value)usersetting[name]=value+','+usersetting[name];}else{usersetting[name]=value;}}}
for(var k in usersetting){name=tmpl_name+'_'+k;value=usersetting[k].trim();if(value.length>0){createCookie(name,value,365);}}
if(window.location.href.indexOf('?')>-1){window.location.href=window.location.href.substr(0,window.location.href.indexOf('?'));}else{window.location.reload(true);}}
function createCookie(name,value,days){if(days){var date=new Date();date.setTime(date.getTime()+(days*24*60*60*1000));var expires="; expires="+date.toGMTString();}else{expires="";}
document.cookie=name+"="+value+expires+"; path=/";}
function trim(str,chars){return ltrim(rtrim(str,chars),chars);}
function ltrim(str,chars){chars=chars||"\\s";return str.replace(new RegExp("^["+chars+"]+","g"),"");}
function rtrim(str,chars){chars=chars||"\\s";return str.replace(new RegExp("["+chars+"]+$","g"),"");}
function getScreenWidth(){var x=0;if(self.innerHeight){x=self.innerWidth;}else if(document.documentElement&&document.documentElement.clientHeight){x=document.documentElement.clientWidth;}else if(document.body){x=document.body.clientWidth;}
return x;}
function equalHeight(els){els=$$_(els);if(!els||els.length<2)return;var maxh=0;var els_=[];els.each(function(el,i){if(!el)return;els_[i]=el;var ch=els_[i].getCoordinates().height;maxh=(maxh<ch)?ch:maxh;},this);els_.each(function(el,i){if(!el)return;if(el.getStyle('padding-top')!=null&&el.getStyle('padding-bottom')!=null){if(maxh-el.getStyle('padding-top').toInt()-el.getStyle('padding-bottom').toInt()>0){el.setStyle('min-height',maxh-el.getStyle('padding-top').toInt()-el.getStyle('padding-bottom').toInt());}}else{if(maxh>0)el.setStyle('min-height',maxh);}},this);}
function getDeepestWrapper(el){while(el.getChildren().length==1){el=el.getChildren()[0];}
return el;}
function fixHeight(els,group1,group2){els=$$_(els);group1=$$_(group1);group2=$$_(group2);if(!els||!group1)return;var height=0;group1.each(function(el){if(!el)return;height+=el.getCoordinates().height;});if(group2){group2.each(function(el){if(!el)return;height-=el.getCoordinates().height;});}
els.each(function(el,i){if(!el)return;if(el.getStyle('padding-top')!=null&&el.getStyle('padding-bottom')!=null){if(height-el.getStyle('padding-top').toInt()-el.getStyle('padding-bottom').toInt()>0){el.setStyle('min-height',height-el.getStyle('padding-top').toInt()-el.getStyle('padding-bottom').toInt());}}else{if(height>0){el.setStyle('min-height',height);}}});}
function addFirstLastItem(el){el=$(el);if(!el||!el.getChildren()||!el.getChildren().length)return;el.getChildren()[0].addClass('first-item');el.getChildren()[el.getChildren().length-1].addClass('last-item');}
function $$_(els){if(typeOf(els)=='string')return $$(els);var els_=[];els.each(function(el){el=$(el);if(el)els_.push(el);});return els_;}
$(document).addEvent('domready',function(){$$('[data-dismiss="alert"]').each(function(el){el.addEvent('click',function(){el.getParent().destroy();if($('system-message').getChildren().length==0){Joomla.removeMessages();}});});});;;

/* js_3b0fad8bb089b94056f553374b3cf287.css.js */
window.addEvent('domready',function(){var sfEls=$$('#ja-cssmenu li');sfEls.each(function(li){if((a=li.getElement('a'))&&li.contains(a))li.a=a;else li.a=null;});sfEls.each(function(li){li.addEvent('mouseenter',function(e){clearTimeout(this.timer);if(this.hasClass("havechild"))this.addClass('havechildsfhover').removeClass('havechild');else if(this.hasClass("havesubchild"))this.addClass('havesubchildsfhover').removeClass('havesubchild');this.addClass('sfhover');if(this.a)this.a.addClass('sfhover');});li.addEvent('mouseleave',function(e){this.timer=setTimeout(sfHoverOut.bind(this,e),100);});});});function sfHoverOut(){clearTimeout(this.timer);if(this.hasClass("havechildsfhover"))this.addClass('havechild').removeClass('havechildsfhover');else if(this.hasClass("havesubchildsfhover"))this.addClass('havesubchild').removeClass('havesubchildsfhover');this.removeClass('sfhover');if(this.a)this.a.removeClass('sfhover');};;

