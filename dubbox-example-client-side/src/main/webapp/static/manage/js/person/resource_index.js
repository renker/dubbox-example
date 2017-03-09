$(function(){
	$("#scanBtn").on("click",function(){
		$.post(ctx+"/manage/resource/scan",function(data){
			alert();
		});
		
	});
	tableInit();
});

function tableInit(){
	var tablea = $('#table').DataTable({
		dom:"trlip",
		order:[],
		"stripeClasses": [ 'strip1', 'strip2'],
		"serverSide":true,
		"ajax":function(data, callback, settings){
			console.log(data);
			var param = {page:data.start/data.length+1,pageSize:data.length};
			$.post(ctx+"/manage/resource/list",param,function(page){
				var returnData = {};
				returnData.recordsTotal=page.totalCount;
				returnData.recordsFiltered=page.totalCount;
				returnData.data = page.results;
				callback(returnData);
			});
		},
		"columns":[
		           {data:"id",orderable:false,render:function(data, type, row){
		        	   return '<label class="pos-rel"><input type="checkbox" class="ace" /><span class="lbl"></span></label>';
		           }},
		           {data:"classpath",render:function(data, type, row){
		        	   var remark = row.remark;
		        	   if(remark==null || remark == ''){
		        		   remark = '<span style="color:yellow">暂无</span>';
		        	   }
		        	   
		        	   var res= row.url+"&nbsp;&nbsp;&nbsp;&nbsp;(<span style='color:green'>"+remark+"</span>)";
		        	   return res;
		           }},
		           {data:"pattern"},
		           {data:"createTime",render:function(data, type, row){
		        	   return new Date(data).Format("yyyy-MM-dd hh:mm:ss");
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



Date.prototype.Format = function (fmt) { //author: meizz 
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "h+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}