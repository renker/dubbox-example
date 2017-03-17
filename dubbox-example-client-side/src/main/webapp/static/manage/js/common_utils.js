/**
 * 判断ajaxResult结果是否成功
 * @param data
 * @returns {Boolean}  true 成功，false 失败
 */
function isSuccess(data){
	if(data instanceof Object){
		if(data.status == "success"){
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}
}