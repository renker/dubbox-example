var COOKIE_MENU_INDEX="_COOKIE_MENU_INDEX";
var _index = 0;
$(function(){
	menu();
});

function menu(){
	var _local_path = window.location.pathname;
	
	var _expiresDate= new Date();
	_expiresDate.setTime(_expiresDate.getTime() + (365 * 24 * 60 * 60 * 1000));
	
	if($.cookie(COOKIE_MENU_INDEX) == null){
		_index = 0;
		$.cookie(COOKIE_MENU_INDEX,_index,{path:_local_path,expires:_expiresDate});
	}else{
		_index = $.cookie(COOKIE_MENU_INDEX);
	}
	
	var _$li = $(".nav-list a").eq(_index).parent("li");
	_$li.addClass("active");
	menuShow(_$li);
	
	$(".nav-list a").on("click",function(){
		if($(this).attr("href")!="#"){ // 保存当前li 索引
			var _target_path = $(this).attr("href");
			
			_index = $(".nav-list a").index(this);
			
			$.cookie(COOKIE_MENU_INDEX,_index,{path:_target_path,expires:_expiresDate});
			$.cookie(COOKIE_MENU_INDEX,_index,{path:"/"});
		}
	});
}

function menuShow(_$li){
	if(_$li.parent("ul").hasClass("submenu")){
		_$li.parent("ul").addClass("nav-show");
		_$li.parent("ul").parent("li").addClass("open");
		_$li.parent("ul").parent("li").addClass("active");
		_$li.parent("ul").show();
		
		menuShow(_$li.parent("ul").parent("li"));
	}
}