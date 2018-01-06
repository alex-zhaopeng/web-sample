<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
	<!--查看图片插件 -->
	<link rel="stylesheet" media="screen" type="text/css" href="plugins/zoomimage/css/zoomimage.css" />
	<link rel="stylesheet" media="screen" type="text/css" href="plugins/zoomimage/css/custom.css" />
	<script type="text/javascript" src="plugins/zoomimage/js/jquery.js"></script>
	<script type="text/javascript" src="plugins/zoomimage/js/eye.js"></script>
	<script type="text/javascript" src="plugins/zoomimage/js/utils.js"></script>
	<script type="text/javascript" src="plugins/zoomimage/js/zoomimage.js"></script>
	<script type="text/javascript" src="plugins/zoomimage/js/layout.js"></script>
	<!--查看图片插件 -->

	</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="pendingpool/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="APPROVEPOOL_ID" id="APPROVEPOOL_ID" value="${pd.APPROVEPOOL_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注1:</td>
								<td><input type="text" name="SERIALNO" id="SERIALNO" value="${pd.SERIALNO}" maxlength="40" placeholder="这里输入备注1" title="备注1" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注2:</td>
								<td><input type="text" name="APPLYSERIALNO" id="APPLYSERIALNO" value="${pd.APPLYSERIALNO}" maxlength="32" placeholder="这里输入备注2" title="备注2" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注3:</td>
								<td><input type="text" name="APPROVESERIALNO" id="APPROVESERIALNO" value="${pd.APPROVESERIALNO}" maxlength="32" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注4:</td>
								<td><input type="text" name="CUSTOMERID" id="CUSTOMERID" value="${pd.CUSTOMERID}" maxlength="32" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注5:</td>
								<td><input type="text" name="CUSTOMERNAME" id="CUSTOMERNAME" value="${pd.CUSTOMERNAME}" maxlength="80" placeholder="这里输入备注5" title="备注5" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">驾驶证:</td>
								<td>
									<a href="<%=basePath%>uploadFiles/uploadImgs/20180106/bfa596f18ad04ceaa2ba36c5456a861a.jpg" title="驾驶证图片" class="bwGal">
										<img src="<%=basePath%>uploadFiles/uploadImgs/20180106/bfa596f18ad04ceaa2ba36c5456a861a.jpg" alt="驾驶证图片" width="100">
									</a>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">车船税:</td>
								<td>
									<a href="<%=basePath%>uploadFiles/uploadImgs/20180106/bfa596f18ad04ceaa2ba36c5456a861a.jpg" title="" class="bwGal">
										<img src="<%=basePath%>uploadFiles/uploadImgs/20180106/bfa596f18ad04ceaa2ba36c5456a861a.jpg" alt="" width="100">
									</a>
								</td>
							</tr>

							<tr>
								<td style="text-align: center;" colspan="10">
									<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
									<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
								</td>
							</tr>
						</table>
							<div class="col-xs-12 col-sm-8">
								<div class="widget-box">
									<div class="widget-header">
										<h4 class="widget-title">申请信息</h4>

										<div class="widget-toolbar">
											<a href="#" data-action="collapse">
												<i class="ace-icon fa fa-chevron-up"></i>
											</a>

											<a href="#" data-action="close">
												<i class="ace-icon fa fa-times"></i>
											</a>
										</div>
									</div>

									<div class="widget-body">
										<div class="widget-main">
											<div class="col-md-6">
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1">客户姓名：</label>
													<div class="col-sm-9">
														<p class="form-control-static">这里是纯文字信息</p>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="col-sm-3 control-label no-padding-right" for="form-field-1">纯文本：</label>
													<div class="col-sm-9">
														<p class="form-control-static">这里是纯文字信息</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
					</form>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//显示图片
		function showTU(path,TPID){
			$("#"+TPID).html('<img width="300" src="'+path+'">');
			$("#"+TPID).show();
		}
		//隐藏图片
		function hideTU(TPID){
			$("#"+TPID).hide();
		}

		//保存
		function save(){
			if($("#SERIALNO").val()==""){
				$("#SERIALNO").tips({
					side:3,
		            msg:'请输入备注1',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SERIALNO").focus();
			return false;
			}
			if($("#APPLYSERIALNO").val()==""){
				$("#APPLYSERIALNO").tips({
					side:3,
		            msg:'请输入备注2',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#APPLYSERIALNO").focus();
			return false;
			}
			if($("#APPROVESERIALNO").val()==""){
				$("#APPROVESERIALNO").tips({
					side:3,
		            msg:'请输入备注3',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#APPROVESERIALNO").focus();
			return false;
			}
			if($("#CUSTOMERID").val()==""){
				$("#CUSTOMERID").tips({
					side:3,
		            msg:'请输入备注4',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CUSTOMERID").focus();
			return false;
			}
			if($("#CUSTOMERNAME").val()==""){
				$("#CUSTOMERNAME").tips({
					side:3,
		            msg:'请输入备注5',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CUSTOMERNAME").focus();
			return false;
			}
			if($("#CERTTYPE").val()==""){
				$("#CERTTYPE").tips({
					side:3,
		            msg:'请输入备注6',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CERTTYPE").focus();
			return false;
			}
			if($("#CERTNO").val()==""){
				$("#CERTNO").tips({
					side:3,
		            msg:'请输入备注7',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CERTNO").focus();
			return false;
			}
			if($("#BUSINESSTYPE").val()==""){
				$("#BUSINESSTYPE").tips({
					side:3,
		            msg:'请输入备注8',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#BUSINESSTYPE").focus();
			return false;
			}
			if($("#APPROVECHANNEL").val()==""){
				$("#APPROVECHANNEL").tips({
					side:3,
		            msg:'请输入备注9',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#APPROVECHANNEL").focus();
			return false;
			}
			if($("#CHANNEL").val()==""){
				$("#CHANNEL").tips({
					side:3,
		            msg:'请输入备注10',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CHANNEL").focus();
			return false;
			}
			if($("#STATUS").val()==""){
				$("#STATUS").tips({
					side:3,
		            msg:'请输入备注11',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#STATUS").focus();
			return false;
			}
			if($("#APPROVEOPINION").val()==""){
				$("#APPROVEOPINION").tips({
					side:3,
		            msg:'请输入备注12',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#APPROVEOPINION").focus();
			return false;
			}
			if($("#APPROVEREMARK").val()==""){
				$("#APPROVEREMARK").tips({
					side:3,
		            msg:'请输入备注13',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#APPROVEREMARK").focus();
			return false;
			}
			if($("#CUSTOMERBELONG").val()==""){
				$("#CUSTOMERBELONG").tips({
					side:3,
		            msg:'请输入备注14',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CUSTOMERBELONG").focus();
			return false;
			}
			if($("#OPERATEORGID").val()==""){
				$("#OPERATEORGID").tips({
					side:3,
		            msg:'请输入备注15',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OPERATEORGID").focus();
			return false;
			}
			if($("#OPERATEUSERID").val()==""){
				$("#OPERATEUSERID").tips({
					side:3,
		            msg:'请输入备注16',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OPERATEUSERID").focus();
			return false;
			}
			if($("#OPERATEDATE").val()==""){
				$("#OPERATEDATE").tips({
					side:3,
		            msg:'请输入备注17',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#OPERATEDATE").focus();
			return false;
			}
			if($("#INPUTORGID").val()==""){
				$("#INPUTORGID").tips({
					side:3,
		            msg:'请输入备注18',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INPUTORGID").focus();
			return false;
			}
			if($("#INPUTUSERID").val()==""){
				$("#INPUTUSERID").tips({
					side:3,
		            msg:'请输入备注19',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INPUTUSERID").focus();
			return false;
			}
			if($("#INPUTDATE").val()==""){
				$("#INPUTDATE").tips({
					side:3,
		            msg:'请输入备注20',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INPUTDATE").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}

		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>

<style type="text/css">
	li {list-style-type:none;}
</style>
<ul class="navigationTabs">
	<li><a></a></li>
	<li></li>
</ul>
</body>
</html>