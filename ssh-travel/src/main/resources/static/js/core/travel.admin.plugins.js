(function($){
	var __validate = $.fn.validate;
	$.fn.cmsvalidate = function(opts) {
		var __rules = $.extend({
			username:"required",
			password:"required",
			name:"required",
			confirmPwd:{
				equalTo:"#password"
			},
			email:"email",
			title:"required",
			brief:"required",
			content:"required",
			cid:{
				min:1
			},
			newName:"required",
		},opts?(opts.rules||{}):{});
		var __messages = $.extend({
			username:"用户名不能为空",
			password:"用户密码不能为空",
			brief:"简介不能为空",
			content:"内容不能为空",
			confirmPwd:"两次输入的密码不正确",
			email:"邮件格式不正确",
			name:"名称不能为空",
			cid:"文章必须选择所属栏目",
			title:"标题必须输入",
			newName:"首页图片必须上传"
		},opts?(opts.messages||{}):{});
		var __defaultOpts = $.extend(opts||{},{
			rules:__rules,
			messages:__messages,
			errorElement: opts?(opts.errorElement||"span"):"span",
			errorClass:opts?(opts.errorClass||"errorContainer"):"errorContainer"
		});
		$.extend($.fn.validate.prototype,__defaultOpts);
		__validate.call(this,__defaultOpts);
		return this;
	}
})(jQuery);

(function($){
	
	$.fn.confirmOperator = function(opts) {
		var settings = $.extend({
			msg:"该操作不可逆，确定进行该操作吗？",
			eventName:"click"
		},opts||{});
		$(this).on(settings.eventName,function(event){
			if(!confirm(settings.msg)) {
				event.preventDefault();
			}
		});
	}
	
	
	$.fixedTopicLength = function (str,opts) {
		var settings = $.extend({
			length:30,
			fill:".",
			fillLength:3
		},opts||{});
		
		var pos = settings.length - str.length;
		
		if(pos > 0){
			return str;
		}else{
			if(settings.fill){
				var fs = "";
				for(var i=0;i<settings.fillLength;i++){
					fs += settings.fill;
				}
				return (str.substr(0,settings.length-settings.fillLength)+fs)
			}else{
				return str.substr(0,settings.length);
			}	
			
		}
	};
	
	
	$.fn.formatTopic = function (opts){
		this.each(function(n){
			$(this).html($.fixedTopicLength($(this).html(),opts));
		});
		return this;
	};
	
})(jQuery);


(function($){
	var setting;
	$.fn.keywordinput = function(opts) {
		setting = $.extend({
			number:5,
			msg:"请输入关键字，通过逗号或者回车确认",
			autocomplete:{
				enable:true,
				url:"#",
				minLength:1
			},
			exists_id:"keyword-exists"
		},opts||{});
		init(this);
		if(setting.autocomplete.enable) {
			$(this).autocomplete({
				source:setting.autocomplete.url,
				minLength:setting.autocomplete.minLength
			});
		}
		$(this).keydown(inputKeyword);
		/**
		 * 通过事件委派处理
		 */
		$("#keywords-wrap").on("click","a.keyword-shut",function(event){
			$(this).parent(".keyword-in").remove();
			event.preventDefault();
		});
	}
	function initAddKeyword() {
		$("#"+setting.exists_id+" span").each(function() {
			var ki = createKeyword($(this).html());
			$("#keywords-wrap").append(ki);
		})
	}
	function init(input) {
		$(input).val(setting.msg);
		$(input).addClass("keyword-input");
		$(input).wrap("<div id='keyword-container'></div>")
				.before("<div id='keywords-wrap'></div>");
		initAddKeyword();
		$(input).focus(function(){
			$(this).val("");
		});
		$(input).blur(function(){
			$(this).val("请输入关键字，通过逗号或者回车确认");
		});
	}
	function inputKeyword(event) {
		var code = event.keyCode;
		if(code==188||code==13) {
			var c = $(this).val();
			if(c!="") {
				if($(".keyword-in").length>=setting.number) {
					alert("最多只能允许添加"+setting.number+"个关键字");
					event.preventDefault();
					return false;
				}
				var aks = $("input[name='aks']");
				for(var i=0;i<aks.length;i++) {
					if($(aks[i]).val()==c) {
						alert("不能添加重复的关键字");
						event.preventDefault();
						return false;
					}
				}
				var ki = createKeyword(c);
				$("#keywords-wrap").append(ki);
				$(this).val("");
			}
		}
	}
	function createKeyword(val) {
		return "<div class='keyword-in'><span>"+val
		+"</span><a href='#' class='keyword-shut'>×</a><input type='hidden' name='aks' value='"+val+"'/></div>";
	}
})(jQuery);