<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

	<head>
		<meta charset="UTF-8" />
		<title>添加游记</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/core/travelnote.css" />
		<!-- 必须引入dwr的engine.js -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.form.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/core/jquery.imgScoller.js"></script>
		<script type="text/javascript">
			$(function (){
				$("#headerPic").change(function (event){
					$("#headerPicForm").ajaxSubmit({
						type: "post",
			            url: $("#ctx").val()+"/travelnote/upload",
			            success:function (data){
			            	$(".fully_loading").css("display","block");
			              	$(".set_page").css("display","none");
		                	//从服务器端加载图片，成功后显示
		                	var img = new Image();
		                    //图片加载成功后执行
		                    $(img).load(function() {
		                    	var ctx = $("#ctx").val(); //得到的是项目的名字 --->/travel
		                        //图片默认隐藏
		                        $(this).hide();
		                        //移除小动画和覆盖默认背景图片
		                        $(".fully_loading").css("display","none");
		                        $(".set_drag").css("display","block");
		          				//$(".set_index").css("background-image","url("+ctx+"/resources/tnpics/1348814002177.jpg");
		          				 $(this).attr("rel",$("#ctx").val()+"/resources/tnpics/1348814045192.jpg");
		          				$(".set_bg").append(this);
		                        //使用fadeIn特效
		                        $(this).fadeIn("slow");
								$(".set_bg").imageView();
		                    }).error(function() {
		                        //加载失败时的处理
		                    	 alert("加载失败");
		                    	//最后设置src
		                    }).attr("src", $("#ctx").val()+"/resources/tnpics/1348814045192.jpg");
			            },
			            error: function (msg) {
			                alert("文件上传失败");
			            }
					});
		                    
		                    
		            //添加修改文字部分
					$(".add_list").on("click",".eo_word",function (){
						$(this).parents(".edit_object").next().css("display","block").addClass("flash");
						$(this).parents(".add_button").find(".add_word_v2 textarea").val("");
					});
		            $(".add_list").on("click",".add_ico",function(){
		            	var $btns = $(this).parent().siblings();
		            	$.each($btns,function(){
		            		if($(this).hasClass("add_button_show")){
		            			$(this).removeClass("add_button_show");
		            		}
		            	});
		            	
		            	if($(this).parent().hasClass("add_button_show")){
		            		$(this).parent().removeClass("add_button_show");
	            		}else{
		            		$(this).parent().addClass("add_button_show");
	            		}
		            	
		            	
		            	
		            });
					$(".add_list").on("click","._j_canceltext",function (){
						$(this).parent().parent().css("display","none");
					});
					$(".add_list").on("click","._j_savetext",function (){
						var text_val = $(this).parent().prev().val().trim();
						$.ajax({
							url:$("#ctx").val()+"/travelnote/add/textnote",
							type:"post",
							datatype:"json",
							data:$(this).closest(".textnote-form").serializeArray(),
							success:function(data){
								alert(data.result+"-"+data.msg+"-"+data.obj);
							}							
						})
						
						
						if(text_val==""){
							$(this).parent().parent().css("display","none");
						}else{
							//alert("save to  db and show");
							//var clonenode = $(".add_button_show").clone(true,true);
							var content = "";
							var node = "";
							content = text_val;
							node+="<div class='add_word'  data-no='1'><p><span class='_j_wordhtml'>"+content+"</span>";
							node+="<a class='edit_again _j_edittext' role='button'>编辑</a></p><div class='article hide'><div class='art_title'>";
							node+="<div class='add_article'><a class='save _j_savetext' title='保存' role='button'>保存</a><a class='cancel _j_canceltext' title='取消' role='button'>取消</a></div>";
							node+="<div class='clear'></div><div class='art_pop hide'></div></div><div class='art_con'><textarea rows='10' cols='30'>"+content+"</textarea></div></div></div>";
							node+="<div class='clear'></div><div class='add_button'><a title='添加'class='add_ico _j_addbtn_toggler'role='button'></a><div class='edit_object _j_editobject'><ul><li class='eo_word _j_add_text_btn'><a title='添加文字'role='button'><i></i><span>添加文字</span></a></li><li class='eo_pic _j_uploadbtncnt'id='_j_pluplader_btn_container_3'><a class='_j_uploadbtn'title='添加照片'role='button'style='position: relative;'><i></i><span>添加照片</span></a><div id='html5_1a4s6fld51msj1d461ufitde0d_container'class='moxie-shim moxie-shim-html5'style='position: absolute; top: 0px; left: 0px; width: 102px; height: 28px; overflow: hidden; z-index: -1;'><input type='file'accept='image/jpeg,image/png,image/gif'multiple=''style='font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;'id='html5_1a4s6fld51msj1d461ufitde0d'></div></li><li class='eo_video _j_add_movie_btn'><a title='添加视频'role='button'><i></i><span>添加视频</span></a></li><li class='eo_title _j_add_paragraph_title_btn'><a title='添加段落标题'role='button'><i></i><span>添加段落标题</span></a><span title='更多详情'class='eo_title_tips _j_paragraphtip'></span></li></ul></div> </div>";						

							$(this).parents(".add_button").after(node);
							$(this).parent().parent().css("display","none");
						}
					});
				});
					
				$(".add_list").on("click","._j_savetext",function (){
					
				});	
				
				$(".add_list").on("click","._j_edittext",function (){
					//1.隐藏
					$(this).parent().css("display","none");
					//2.添加编辑
					$(this).parent().siblings().removeClass("hide");
				});	
			});	
		</script>
	</head>

	<body>
	<input type="hidden" id="ctx" value="<%=request.getContextPath()%>">
		<div class="cp_placeholder">
			<div class="complete_percent complete_percent_fixed">
				<div class="cp_center">
					<a href="#" title="预览" class="btn_big cp_preview flt2 btn_preview" tabindex="0" role="button">预览</a>
					<div class="store_draft flt2">
						<span class="hide">内容自动保存于 <em>15:15:06</em></span>
						<a title="保存草稿" class="store_it draft_remain" role="button">保存草稿</a>
					</div>
					<div id="completeDetail" class="cp_detail">
						<span class="cp_name">游记完成度</span>
						<div class="cp_num"><i class="completed"></i><i class="completed on"></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i><i></i><strong><span id="_j_processpercent">20</span>%</strong></div>
						<a class="cp_more" tabindex="0" role="button"><span>完成度详情</span><i></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="main">
			<div class="set_index">
				<div class="set_bg"></div>
				<div class="fully_loading">
				<p vtip="头图加载中...">头图加载中...</p>
				<img alt="loading" src="#">
			</div>
			<div class="set_page">
				<a class="set_add" role="button"></a>
				<h2>设置游记头图</h2>
				<p>图片建议选择尺寸大于1680px的高清大图，如相机原图</p>
				<div class="clear"></div>
				
				<form id='headerPicForm' enctype='multipart/form-data'>
					<div class="moxie-shim moxie-shim-html5" style="position: absolute; top: 200px; left: 275px; width: 67px; height: 67px; overflow: hidden; z-index: 11;">
					<input id="headerPic" type="file" name="attach" accept="image/jpeg,image/png,image/gif" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;">
					</div>
				</form>
			</div>
			<div class="set_title on">
				<input type="text" maxlength="48" placeholder="填写游记标题" value="">
				<span>
				可输入
				<strong>48</strong>
				字
				</span>
				<div class="clear"></div>
			</div>
			<div class="set_btn">
				<a class="a_set _j_addtoppiclabel" title="设置头图" role="button"><i></i><span>设置头图</span></a>
				<ul>
					<li id="_j_change_cover_cnt"><a id="_j_change_toppic" class="a_change _j_upload_toppic" title="更换头图" role="button" style="position: relative;"><i></i><span>更换头图</span></a>
						<div id="html5_1a4sgv31hcr316c6vlp1i06vv712_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 0px; left: 0px; width: 162px; height: 34px; overflow: hidden; z-index: -1;">
							<input type="file" accept="image/jpeg,image/png,image/gif" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" >
						</div>
					</li>
				</ul>
			</div>
			
			<div class="set_drag">
					<i></i>
					拖动以调整游记头图
					</div>
					<div class="loading _j_uploading toppic_uploading">
					<h3>正在上传...</h3>
					<div class="loading_bar">
					<span style="width: 100%;"></span>
				</div>
				</div>
			</div>
			
			<div id="_j_content_area" class="add">
	            <div id="_j_content_box" class="add_list">
            	   <div class="add_button add_button_show">
						<a title="添加" class="add_ico" role="button"></a>
						<div class="edit_object _j_editobject">
						<ul>
							<li class="eo_word _j_add_text_btn">
								<a title="添加文字" role="button"><i></i><span>添加文字</span></a>
							</li>
					        <li class="eo_pic _j_uploadbtncnt" id="_j_pluplader_btn_container_3">
								<a class="uploadPicbtn" title="添加照片" role="button" style="position: relative;">
									<i></i><span>添加照片</span>
									<div style="position: absolute; top: 0px; left: 0px; width: 102px; height: 28px; overflow: hidden; z-index: -1;"><input type="file" accept="image/jpeg,image/png,image/gif" multiple="" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
								</a>
								
					        </li>
							<li class="eo_video _j_add_movie_btn">
								<a title="添加视频" role="button"><i></i><span>添加视频</span></a>
							</li>
							<li class="eo_title _j_add_paragraph_title_btn">
								<a title="添加段落标题" role="button"><i></i><span>添加段落标题</span></a>
					            <span title="更多详情" class="eo_title_tips _j_paragraphtip"></span>
							</li>
							</ul>
						</div>
						<div class="add_word_v2" style="display: none;">
								<form class="textnote-form">
									<textarea class="flash" placeholder="在这儿添加游记文字......" style="height: 208px; overflow: hidden;"></textarea>
									<div class="add_article">
										<a class="save _j_savetext" title="保存">保存</a>
										<a class="cancel _j_canceltext" title="取消">取消</a>
									</div>
								</form>
						</div>
					</div>
	               <div class="article_title" data-title="马格里" data-thumb="" data-file="" data-style="t5" data-seq="84689603">
					<h2 class="t5">
					<span>马格里</span>
					</h2>
					<span class="handle">
					<a class="edit _j_paragraph_title_edit" title="编辑" role="button">编辑</a>
					<a class="delete _j_paragraph_title_delete" title="删除" role="button">删除</a>
					</span>
					</div>
		           <div class="add_word" data-content="这几年来一直都住在上海，走过大陆几乎95%的省份，看过西藏绝美的雪山、新疆和蒙古壮阔的大草原，也曾去过零下三十度的东北感受冰上冬捕的刺激体验，但每次回台湾总还是醉心于故乡的美丽。身边不少大陆朋友总会问我，台湾就一个岛，看一些照片也不觉得景色有多好看，我说，如果你想看大山大水，这裡肯定会让你失望，但是台湾能给你的，是一种精緻灵巧的美加上充满人情味的氛围。" data-no="1" data-seq="82344463">
						<p>
							<span class="_j_wordhtml">这几年来一直都住在上海，走过大陆几乎95%的省份，看过西藏绝美的雪山、新疆和蒙古壮阔的大草原，也曾去过零下三十度的东北感受冰上冬捕的刺激体验，但每次回台湾总还是醉心于故乡的美丽。身边不少大陆朋友总会问我，台湾就一个岛，看一些照片也不觉得景色有多好看，我说，如果你想看大山大水，这裡肯定会让你失望，但是台湾能给你的，是一种精緻灵巧的美加上充满人情味的氛围。</span>
							<a class="edit_again _j_edittext" role="button">编辑</a>
						</p>
						<div class="article hide">
							<!-- <div class="art_title">
								<div class="clear"></div>
								<div class="art_pop hide"></div>
							</div> 
							<div class="art_con">
								<textarea class="flash" style="height: 208px; overflow: hidden;">这几年来一直都住在上海，走过大陆几乎95%的省份，看过西藏绝美的雪山、新疆和蒙古壮阔的大草原，也曾去过零下三十度的东北感受冰上冬捕的刺激体验，但每次回台湾总还是醉心于故乡的美丽。身边不少大陆朋友总会问我，台湾就一个岛，看一些照片也不觉得景色有多好看，我说，如果你想看大山大水，这裡肯定会让你失望，但是台湾能给你的，是一种精緻灵巧的美加上充满人情味的氛围。</textarea>
								<div class="add_article">
									<a class="save _j_savetext" title="保存">保存</a>
									<a class="cancel _j_canceltext" title="取消">取消</a>
								</div>
							</div>-->
							<textarea class="flash" placeholder="在这儿添加游记文字......" style="height: 208px; overflow: hidden;"></textarea>
							<div class="add_article">
								<a class="save _j_savetext" title="保存">保存</a>
								<a class="cancel _j_canceltext" title="取消">取消</a>
							</div>
						</div>
					</div>
	            </div>
	          	<div style="clear:both"></div>
	            <a id="_j_progress_music"></a>
	            <div data-name="" data-file="" id="_j_music_box" class="add_music">
	                <div class="add_info">
	                    <h3>游记音乐</h3>
	                </div>
	                <div class="add_mp3 " id="_j_pluplader_btn_container_2">
	                    <input type="text" value="" class="m_text">
	                    <span class="m_showname">背景音乐请选择后缀为.mp3的音乐文件</span>
	                    <a class="m_modify" role="button">编辑名称</a>
	                    <a class="m_delete" role="button">删除音乐</a>
	                    <a class="m_save" role="button">保存</a>
	                    <a class="m_cancel" role="button">取消</a>
	                    <input type="button" style="position:relative; z-index:0" id="_j_upload_music" value="浏览" class="m_up">
	                    <div class="clear"></div>
	                <div id="html5_1a4s6fdqp9og164hgsv8qn1pe66_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 9px; left: 613px; width: 56px; height: 26px; overflow: hidden; z-index: -1;"><input type="file" accept="audio/mpeg" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" id="html5_1a4s6fdqp9og164hgsv8qn1pe66"></div></div>
	            </div>
	            <div id="_j_publish_bar" class="draft_con">
                <span class="draft_btn">
                    <a class="btn_big btn_white btn_preview _j_preview" href="#" title="预览" role="button">预览</a>
                    <a class="btn_big btn_publish _j_btn_publish" title="发表游记" role="button">发表游记</a>
                </span>
                                <a class="draft_remain _j_savedraft" title="保存草稿" role="button">保存草稿</a>
                <span class="draft_auto">内容自动保存于 <strong>15:15:06</strong></span>
                                <div class="clear"></div>
            </div>
     	   </div>

		</div>
	</body>

</html>