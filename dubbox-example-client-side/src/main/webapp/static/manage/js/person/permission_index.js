$(function(){
	table();
	btn();
});

function btn(){
	$("#createBtn").click(function(){
		layer.open({
				type: 2,
				title: '权限新增',
				shadeClose: true,
				shade: 0.8,
		  area: ['800px', '320px'],
		  content: ctx+"/manage/permission/toCreate/ignore"
		});
	});
}

function table(){
	var tablea = $('#table').DataTable({
		dom:"trlip",
		order:[],
		"stripeClasses": [ 'strip1', 'strip2'],
		"serverSide":true,
		"ajax":function(data, callback, settings){
			var param = {currentPageIndex:data.start/data.length+1,pageSize:data.length};
			$.post(ctx+"/manage/permission/list",param,function(page){
				var returnData = {};
				returnData.recordsTotal=page.totalCount;
				returnData.recordsFiltered=page.totalCount;
				returnData.data = page.results;
				callback(returnData);
			});
		},
		"columns":[
		    {data:"id",orderable:false,render:function(data, type, row){
		    	return '<input type="checkbox" class="editor-active">';
		    }},
			{data:"partten"},
			{data:"type",render:function(data, type, row){
				if(data == "common"){
					return "普通";
				}else if(data == "button"){
					return "按钮";
				}else{
					return "remarks";
				}
			}},
			{data:"status",render:function(data, type, row){
				return "正常";
			}},
			{orderable:false,render:function(data, type, row){
				var div_start = '<div class="action-buttons">';
				
				var view = '<a class="blue" title="查看" href="#"> <i class="ace-icon fa fa-search-plus bigger-130"></i> </a>';
				var edit = '<a class="green" title="编辑" href="#"> <i class="ace-icon fa fa-pencil bigger-130"></i> </a>';
				var del = '<a class="red" title="删除" href="#"> <i class="ace-icon fa fa-trash-o bigger-130"></i> </a>';
				
				var div_end='</div>';
				return div_start+view+edit+del+div_end;
				/*return '<i title="编辑" class="fa fa-pencil bigger-130" style="cursor: pointer;margin: 0px 5px;"></i><i title="删除" class="fa fa-times bigger-130" style="cursor: pointer;margin: 0px 5px;"></i>';*/
			}}
		],
		"language":{url:ctx+"/static/lib/jquery.datatables/lang/zh_CN.json"}
	});
}