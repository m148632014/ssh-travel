(function(){
	$.fn.thumbslider = function(opts){
		opts = $.extend({},$.fn.thumbslider.opts,opts);
		this.each(function (){
			var slidewrap = $(this).find('.show-image');
            var slide = slidewrap.find('li');
            var count = slide.length;
            var that = this;
            var index = 0;
            var time = null;
            $(this).data('opts', opts);
            startAtuoPlay();
            // auto play
            function startAtuoPlay(){
                if(opts.autoPlay){
                    time  = setInterval(function(){
                        var old = index;
                        if(index >= count - 1){
                            index = 0;
                        }else{
                            index++;
                        }
                        change.call(that, index, old);
                    }, 3000);
                }
            }
               // focus clean auto play
            $(this).on('mouseover', function(){
                if(opts.autoPlay){
                    clearInterval(time);
                }
            });
              //  leave
            $(this).on('mouseleave', function(){
                if(opts.autoPlay){
                    startAtuoPlay();
                }
            });
		});
	}
	$.fn.thumbslider.opts = {
		autoPlay: true,
	}
	function change(show, hide){
        var opts = $(this).data('opts');
        $(this).find('.show-image li').eq(hide).hide();
        $(this).find('.show-image li').eq(show).fadeIn(1000);
       
       
        $(this).find('.show-nav li').removeClass('active');
        $(this).find('.show-nav li').eq(show).addClass('active');
    
    }
	
	$.fn.defaultslider = function(opts){
		opts = $.extend({},$.fn.thumbslider.opts,opts);
		this.each(function (){
			var slidewrap = $(this).find('#slide_box');
            var slide = slidewrap.find('li');
            var count = slide.length;
            var that = this;
            var index = 0;
            var time = null;
            $(this).data('opts', opts);
            startAtuoPlay();
            // auto play
            function startAtuoPlay(){
                if(opts.autoPlay){
                    time  = setInterval(function(){
                        var old = index;
                        if(index >= count - 1){
                            index = 0;
                        }else{
                            index++;
                        }
                        defaultslider_change.call(that, index, old);
                    }, 3000);
                }
            }
               // focus clean auto play
            $(this).on('mouseover', function(){
                if(opts.autoPlay){
                    clearInterval(time);
                }
            });
              //  leave
            $(this).on('mouseleave', function(){
                if(opts.autoPlay){
                    startAtuoPlay();
                }
            });
		});
	}
	$.fn.defaultslider.opts = {
		autoPlay: true,
	}
	function defaultslider_change(show, hide){
        var opts = $(this).data('opts');
        $(this).find('#slide_box li').eq(hide).slideUp();
        //$(this).find('#slide_box li').eq(hide).animate( {width:0},"slow");
        $(this).find('#slide_box li').eq(show).slideDown();
        //$(this).find('#slide_box li').eq(hide).animate( {width:0},"slow");
      
      	$(this).find('#thumb_box li').removeClass('on');
        $(this).find('#thumb_box li').eq(show).addClass('on');
    
    }


		$.fn.smallslider = function(opts){
			opts = $.extend({},$.fn.smallslider.opts,opts);
			this.each(function (){
				var slidewrap = $(this).find('.slide-ul');
	            var slide = slidewrap.find('li');
	            var count = slide.length;
	            var that = this;
	            var index = 0;
	            var time = null;
	            $(this).data('opts', opts);
	            startAtuoPlay();
	            // auto play
	            function startAtuoPlay(){
	                if(opts.autoPlay){
	                    time  = setInterval(function(){
	                        var old = index;
	                        if(index >= count - 1){
	                            index = 0;
	                        }else{
	                            index++;
	                        }
	                        smallslider_change.call(that, index, old);
	                    }, 3000);
	                }
	            }
	               // focus clean auto play
	            $(this).on('mouseover', function(){
	                if(opts.autoPlay){
	                    clearInterval(time);
	                }
	            });
	              //  leave
	            $(this).on('mouseleave', function(){
	                if(opts.autoPlay){
	                    startAtuoPlay();
	                }
	            });
			});
		}
		$.fn.smallslider.opts = {
			autoPlay: true,
		}
		function smallslider_change(show, hide){
	        var opts = $(this).data('opts');
	        $(this).find('.slide-ul li').eq(hide).hide();
        	$(this).find('.slide-ul li').eq(show).fadeIn(1000);
	       
	       
	        $(this).find('.slide-ol li').removeClass('active');
	        $(this).find('.slide-ol li').eq(show).addClass('active');
	    
	    }
		

})(jQuery);
