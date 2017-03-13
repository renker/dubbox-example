<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增</title>
<style type="text/css">
	.form-actions1 {
	    background-color: #f5f5f5;
	    display: block;
	    margin-top: 18px;
	    padding: 8px 81px;
	}
</style>
</head>
<body>
	<div class="row">
		<div class="space-4"></div>
		<div class="col-xs-12">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right" for="form-field-1"> 资源 </label>

					<div class="col-sm-10">
						<input type="text" placeholder="Username" class="col-sm-7" />
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right" for="form-field-1-1"> 备注 </label>
					<div class="col-sm-10">
						<input type="text" placeholder="Text Field" class="col-xs-7" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-sm-2 control-label no-padding-right" for="form-field-1-1"> 备注 </label>
					<div class="col-sm-10">
						<textarea class="col-xs-7" placeholder="Default Text"></textarea>
					</div>
				</div>
				
				<div class="clearfix form-actions1">
					<div class="col-md-offset-3 col-md-9">
						<button class="btn btn-sm btn-info" type="button">
							<i class="ace-icon fa fa-check bigger-110"></i>
							Submit
						</button>
	
						&nbsp; &nbsp; &nbsp;
						<button class="btn btn-sm" type="reset">
							<i class="ace-icon fa fa-undo bigger-110"></i>
							Reset
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>