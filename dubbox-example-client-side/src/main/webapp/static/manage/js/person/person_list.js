$(function(){
	$("#createBtn").click(function(){
		window.location.href=ctx+'/manage/person/toCreate';
		/*layer.open({
		      type: 2,
		      title: '新增用户',
		      shadeClose: true,
		      shade: false,
		      maxmin: true, //开启最大化最小化按钮
		      area: ['893px', '600px'],
		      content: ctx+'/manage/person/toCreate/layer'
		    });*/
	});
	
	var tablea = $('#table1').DataTable({
		dom:"trlip",
		order:[],
		"stripeClasses": [ 'strip1', 'strip2'],
		"serverSide":true,
		"ajax":function(data, callback, settings){
			var param = {currentPageIndex:data.start/data.length+1,pageSize:data.length};
			$.post(ctx+"/manage/person/list",param,function(page){
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
			{data:"account"},
			{data:"root",render:function(data, type, row){
				if(data.root == 1){
					return "是";
				}else{
					return "否";
				}
			}},
			{data:"status",render:function(data, type, row){
				return "正常";
			}},
			{data:"loginErrorAllowNum"},
			{data:"loginErrorNum"},
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
	
	//console.log(tablea.order()[0][0]+"--");
});