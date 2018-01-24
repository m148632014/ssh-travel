	$(function() {
		
		$("#a_del").confirmOperator();
		
		//var validate = $("#addForm").cmsvalidate();
	
		$("#addBtn").click(function(){
			$("#addForm").submit();
			$(this).attr("disabled");
			/*if(validate.valid()) {
				$("#addForm").submit();
				$(this).attr("disabled");
			}*/
		});
		
		$("#attach").uploadify({
			swf:$("#ctx").val()+"/resources/img/uploadify.swf",
			uploader : $("#ctx").val()+"/admin/strategy/upload",
			fileObjName : "attach",
			auto : false,
			formData : {
				"sid" : $("#sid").val()
			},
			fileTypeExts : "*.zip;*.rar;*.pdf",
			uploadLimit : 2,
			onUploadSuccess : function(file, data, response) {
				var ao = $.parseJSON(data);
				if(ao.result){
					//console.log('The file ' + file.name + ' was successfully uploaded with a response of ' + response + ':' + data);
				 	var node = createAttachNode(ao.obj);
					$("#ok_attach").find("tbody").append(node);
				}
			}
		});
		$("#attBtn").click(function () {
			$("#attach").uploadify("upload","*");
		});
		
		$("#pictype").uploadify({
			swf:$("#ctx").val()+"/resources/img/uploadify.swf",
			uploader : $("#ctx").val()+"/admin/strategy/upload",
			fileObjName : "attach",
			auto : false,
			formData : {
				"sid" : $("#sid").val()
			},
			fileTypeExts : "*.jpg;*.jpeg;*.png;*.gif",
			uploadLimit : 1,
			onUploadSuccess : function(file, data, response) {
				var ao = $.parseJSON(data);
				if(ao.result){
					console.log('The file ' + file.name + ' was successfully uploaded with a response of ' + response + ':' + data);
					var node = createAttachNode(ao.obj);
					$("#ok_attach").find("tbody").append(node);
				}
			}
		});
		$("#picBtn").click(function () {
			$("#pictype").uploadify("upload","*");
		});
		
		var uploadPath = $(ctx).val()+"/resources/upload/";
		function createAttachNode(attach) {
			var node = "<tr>";
			if(attach.type==1) {
				node+="<td><img src='"+uploadPath+"thumbnail/"+attach.newName+"'/></td>";
			} else {
				node+="<td>攻略附件</td>";
			}
			node+="<td>"+attach.oldName+"</td>";
			node+="<td>"+Math.round(attach.size/1024)+"K</td>";
			node+="<td><a href='#' title='"+attach.id+"' class='deleteAttach'>删除附件</a></td>";
			node+="<input type='hidden' name='aids' value='"+attach.id+"'/>";
			node+="</tr>";
			return node;
		}
		
		$("#ok_attach").on("click",".deleteAttach",function(){
			var conf = confirm("确定删除附件信息吗？");
			if(conf) {
				var ad = this;
				var id = $(this).attr("title");
				dwrService.deleteAttach(id,function(data) {
					$(ad).parent("td").parent("tr").remove();
				});			
			}
		});
		
		$("#keyword").keywordinput();
		
});