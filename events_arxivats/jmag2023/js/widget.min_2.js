(function(s){var a=PhpDebugBar.utils.makecsscls("phpdebugbar-widgets-"),m=PhpDebugBar.Widgets.SQLQueriesWidget=PhpDebugBar.Widget.extend({className:a("sqlqueries"),onFilterClick:function(p){s(p).toggleClass(a("excluded"));var n=[];this.$toolbar.find(a(".filter")+a(".excluded")).each(function(){n.push(this.rel)}),this.$list.$el.find("li[connection="+s(p).attr("rel")+"]").toggle(),this.set("exclude",n)},onFilterDupesClick:function(p){s(p).toggleClass(a("excluded"));var n=[];this.$toolbar.find(a(".filter")+a(".excluded")).each(function(){n.push(this.rel)}),this.$list.$el.find("li[dupeindex="+s(p).attr("rel")+"]").toggle(),this.set("exclude",n)},onCopyToClipboard:function(p){var n=s(p).parent("li").find("code").get(0),t=function(){try{document.execCommand("copy"),alert("Query copied to the clipboard")}catch{console.log("Oops, unable to copy")}},e=function(l){if(document.selection){var d=document.body.createTextRange();d.moveToElementText(l),d.select()}else if(window.getSelection){var d=document.createRange();d.selectNodeContents(l),window.getSelection().removeAllRanges(),window.getSelection().addRange(d)}t(),window.getSelection().removeAllRanges()};e(n)},render:function(){this.$status=s("<div />").addClass(a("status")).appendTo(this.$el),this.$toolbar=s("<div></div>").addClass(a("toolbar")).appendTo(this.$el);var p=[],n=this;this.$list=new PhpDebugBar.Widgets.ListWidget({itemRenderer:function(t,e){s("<code />").addClass(a("sql")).html(PhpDebugBar.Widgets.highlight(e.sql,"sql")).appendTo(t),e.duration_str&&s('<span title="Duration" />').addClass(a("duration")).text(e.duration_str).appendTo(t),e.memory_str&&s('<span title="Memory usage" />').addClass(a("memory")).text(e.memory_str).appendTo(t),typeof e.row_count<"u"&&s('<span title="Row count" />').addClass(a("row-count")).text(e.row_count).appendTo(t),typeof e.stmt_id<"u"&&e.stmt_id&&s('<span title="Prepared statement ID" />').addClass(a("stmt-id")).text(e.stmt_id).appendTo(t),e.connection&&(s('<span title="Connection" />').addClass(a("database")).text(e.connection).appendTo(t),t.attr("connection",e.connection),s.inArray(e.connection,p)==-1&&(p.push(e.connection),s("<a />").addClass(a("filter")).text(e.connection).attr("rel",e.connection).on("click",function(){n.onFilterClick(this)}).appendTo(n.$toolbar),p.length>1&&(n.$toolbar.show(),n.$list.$el.css("margin-bottom","20px")))),typeof e.is_success<"u"&&!e.is_success&&(t.addClass(a("error")),t.append(s("<span />").addClass(a("error")).text("["+e.error_code+"] "+e.error_message)));var l;function d(){if(l){l.show();return}l=s("<table>").addClass(a("params")).appendTo(t),l.append('<tr><th colspan="3">Query Parameters</th></tr>'),l.append("<tr><td>ID</td><td>Value</td><td>Data Type</td></tr>");var c;for(var r in e.params)c=e.params[r],l.append("<tr><td>"+r+"</td><td>"+c.value+"</td><td>"+c.dataType+"</td></tr>");l.show()}if(e.params&&!s.isEmptyObject(e.params))var o=s('<span title="Params" />').text("Params").addClass(a("eye")).css("cursor","pointer").on("click",function(){l&&l.is(":visible")?(l.hide(),o.addClass(a("eye")),o.removeClass(a("eye-dash"))):(d(),o.addClass(a("eye-dash")),o.removeClass(a("eye")))}).appendTo(t);var i;function g(){if(i){i.show();return}i=s("<table>").addClass(a("explain")).appendTo(t),i.append("<tr><th>"+e.explain_col.join("</th><th>")+"</th></tr>");var c,r,u;for(c in e.explain)u=[],r=e.explain[c],e.explain_col.forEach(function(y){u.push(r[y])}),i.append("<tr><td>"+u.join("</td><td>")+"</td></tr>");i.show()}if(e.explain&&!s.isEmptyObject(e.explain))var h=s('<span title="Explain" />').text("Explain").addClass(a("eye")).css("cursor","pointer").on("click",function(){i&&i.is(":visible")?(i.hide(),h.addClass(a("eye")),h.removeClass(a("eye-dash"))):(g(),h.addClass(a("eye-dash")),h.removeClass(a("eye")))}).appendTo(t);var f;function _(){if(f){f.show();return}f=s('<table><tr><th colspan="3">Call Stack</th></tr></table>').addClass(a("callstack")).appendTo(t);var c,r,u,y,v;for(c in e.callstack)r=e.callstack[c],u=r[3]?r[3].replace(n.root_path,"")+":"+r[4]:"",y=r[2].replace(n.root_path,""),v=r[1]?"caller":"",u&&n.xdebug_link&&(u='<a href="'+n.xdebug_link.replace("%f",r[3]).replace("%l",r[4])+'">'+u+"</a>"),f.append('<tr class="'+v+'"><th>'+r[0]+"</th><td>"+y+"</td><td>"+u+"</td></tr>");f.show()}if(e.callstack&&!s.isEmptyObject(e.callstack))var C=s('<span title="Call Stack" />').text("Stack").addClass(a("eye")).css("cursor","pointer").on("click",function(){f&&f.is(":visible")?(f.hide(),C.addClass(a("eye")),C.removeClass(a("eye-dash"))):(_(),C.addClass(a("eye-dash")),C.removeClass(a("eye")))}).appendTo(t);if(typeof e.caller<"u"&&e.caller){var x=e.caller.replace(n.root_path,"");if(n.xdebug_link){var b=e.caller.split(":");s("<a />").text(x).addClass(a("editor-link")).attr("href",n.xdebug_link.replace("%f",b[0]).replace("%l",b[1])).appendTo(t)}else s('<span title="Caller" />').text(x).addClass(a("stmt-id")).appendTo(t)}s('<span title="Copy to clipboard" />').text("Copy").addClass(a("copy-clipboard")).css("cursor","pointer").on("click",function(c){n.onCopyToClipboard(this),c.stopPropagation()}).appendTo(t),t.attr("dupeindex","dupe-0")}}),this.$list.$el.appendTo(this.$el),this.bindAttr("data",function(t){if(t.length<=0)return!1;this.root_path=t.root_path,this.xdebug_link=t.xdebug_link,this.$list.set("data",t.statements),this.$status.empty();for(var e={},l=0,d=0,o=0;o<t.statements.length;o++){var i=t.statements[o].sql;t.statements[o].params&&!s.isEmptyObject(t.statements[o].params)&&(i+=" {"+s.param(t.statements[o].params,!1)+"}"),e[i]=e[i]||{keys:[]},e[i].keys.push(o)}var g=0;for(var i in e)if(e[i].keys.length>1){d+=e[i].keys.length,g++;for(var o=0;o<e[i].keys.length;o++)this.$list.$el.find("."+a("list-item")).eq(e[i].keys[o]).addClass(a("sql-duplicate")).attr("dupeindex","dupe-"+g)}else l++;if(d){for(o=0;o<=g;o++)s("<a />").addClass(a("filter")).text(o?"Duplicates "+o:"Uniques").attr("rel","dupe-"+o).on("click",function(){n.onFilterDupesClick(this)}).appendTo(n.$toolbar);n.$toolbar.show(),n.$list.$el.css("margin-bottom","20px")}var h=s("<span />").text(t.nb_statements+" statements were executed").appendTo(this.$status);t.nb_failed_statements&&h.append(", "+t.nb_failed_statements+" of which failed"),d&&(h.append(", "+d+" of which were duplicates"),h.append(", "+l+" unique")),t.accumulated_duration_str&&this.$status.append(s('<span title="Accumulated duration" />').addClass(a("duration")).text(t.accumulated_duration_str)),t.memory_usage_str&&this.$status.append(s('<span title="Memory usage" />').addClass(a("memory")).text(t.memory_usage_str))})}})})(PhpDebugBar.$);