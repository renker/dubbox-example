$(function(){
	btn();
	ztree();
});

function btn(){
	/**
	 * 新增文件夹
	 */
	$("#folderCreateBtn").click(function(){
	    layer.open({
	        type: 2,
	        title: '新增文件夹',
	        shadeClose: true,
	        shade: [0.8, '#393D49'],
	        area: ['800px', '250px'],
	        content: ctx+'/manage/permission/toCreate/ignore?type=folder'
	      });
	});
	
	/**
	 * 新增权限
	 */
	$("#permissCreateBtn").click(function(){
	});
}

function ztree(){
	var setting = {
			async:{
				enable:true,
				url:ctx+"/manage/permission/list",
				type:"post",
				dataType:"JSON",
				autoParam:["id"],
				dataFilter:function(treeId, parentNode, responseData){
					for(var i=0;i<responseData.length;i++){
						var type = responseData[i].type;
						if(type == "folder"){
							responseData[i].isParent=true;
						}
					}
					console.log(responseData);
					return responseData;
				}
			},
			data:{
				key:{
					name:"name"
				},
				simpleData:{
					enable:true,
					idKey:"id",
					pIdKey:"parentId",
					rootPid : "null"
				}
			},
			view:{
				addHoverDom:hoverDiyDom,
				removeHoverDom:removeHoverDiyDom
			}
		};
	$.fn.zTree.init($("#tree"),setting);
}
function hoverDiyDom(treeId, treeNode){
	var aObj = $("#" + treeNode.tId + "_a");
	var areaClass = treeNode.tId + "_a"+"_area";
	if($("."+areaClass).length > 0){
		return;
	}else{
		var btn = "<span class="+areaClass+">" +
					"<span class='button add' title='新增' onclick='treeAddBtn("+treeNode.id+")'></span>" +
					"<span class='button edit' title='修改'></span>" +
					"<span class='button remove' title='删除'></span>" +
				  "</span>";
		aObj.append(btn);
	}
}

function removeHoverDiyDom(treeId, treeNode){
	var areaClass = treeNode.tId + "_a"+"_area";
	$("."+areaClass).remove();
}

/**
 * 添加按钮
 * @param id
 */
function treeAddBtn(id){
	layer.confirm('选择加要的节点类型', {
		  btn: ['权限节点','文件夹节点'] //按钮
		}, function(){
			alert(1);
		}, function(){
			alert(2);
		});
}