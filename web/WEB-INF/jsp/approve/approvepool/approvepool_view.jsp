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
	<!-- text widget-box -->
	<script type="text/javascript" src="static/ace/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="static/ace/js/ace/ace.min.js"></script>


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
							<div class="widget-box">
								<div class="widget-header">
									<h4 class="widget-title">申请信息</h4>

									<div class="widget-toolbar">
										<a href="#" data-action="collapse">
											<i class="ace-icon fa fa-chevron-up"></i>
										</a>
									</div>
								</div>

								<div class="widget-body">
									<div class="widget-main">
										<table id="table_report" class="table table-striped table-bordered table-hover">
											<tr>
												<td style="width:125px;text-align: right;padding-top: 13px;">申请编号：</td>
												<td><input type="text" disabled="disabled" name="SERIALNO" id="SERIALNO" value="${pd.APPLYSERIALNO}" maxlength="40" placeholder="这里输入备注1" title="申请编号" style="width:98%;"/></td>

												<td style="width:125px;text-align: right;padding-top: 13px;">申请金额：</td>
												<td><input type="text" disabled="disabled" name="APPLYSERIALNO" id="APPLYSERIALNO" value="${pd.APPLYSERIALNO}" maxlength="32" placeholder="这里输入备注2" title="申请金额" style="width:98%;"/></td>
											</tr>
											<tr>
												<td style="width:125px;text-align: right;padding-top: 13px;">备注3:</td>
												<td><input type="text" disabled="disabled" name="APPROVESERIALNO" id="APPROVESERIALNO" value="${pd.APPROVESERIALNO}" maxlength="32" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
												<td style="width:125px;text-align: right;padding-top: 13px;">备注4:</td>
												<td><input type="text" disabled="disabled" name="CUSTOMERID" id="CUSTOMERID" value="${pd.CUSTOMERID}" maxlength="32" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
											</tr>
										</table>
								</div>


								</div>
							</div>

							<div class="widget-box">
								<div class="widget-header">
									<h4 class="widget-title">客户信息</h4>

									<div class="widget-toolbar">
										<a href="#" data-action="collapse">
											<i class="ace-icon fa fa-chevron-up"></i>
										</a>
									</div>
								</div>

								<div class="widget-body">
									<div class="widget-main">
										<table id="table_report" class="table table-striped table-bordered table-hover">
											<tr>
												<td style="width:125px;text-align: right;padding-top: 13px;">备注1:</td>
												<td><input type="text" disabled="disabled" name="SERIALNO" id="SERIALNO" value="${pd.SERIALNO}" maxlength="40" placeholder="这里输入备注1" title="备注1" style="width:98%;"/></td>

												<td style="width:125px;text-align: right;padding-top: 13px;">备注2:</td>
												<td><input type="text" disabled="disabled" name="APPLYSERIALNO" id="APPLYSERIALNO" value="${pd.APPLYSERIALNO}" maxlength="32" placeholder="这里输入备注2" title="备注2" style="width:98%;"/></td>
											</tr>
											<tr>
												<td style="width:125px;text-align: right;padding-top: 13px;">备注3:</td>
												<td><input type="text" disabled="disabled" name="APPROVESERIALNO" id="APPROVESERIALNO" value="${pd.APPROVESERIALNO}" maxlength="32" placeholder="这里输入备注3" title="备注3" style="width:98%;"/></td>
												<td style="width:125px;text-align: right;padding-top: 13px;">备注4:</td>
												<td><input type="text" disabled="disabled" name="CUSTOMERID" id="CUSTOMERID" value="${pd.CUSTOMERID}" maxlength="32" placeholder="这里输入备注4" title="备注4" style="width:98%;"/></td>
											</tr>
										</table>
									</div>


								</div>
							</div>
							<div class="widget-box">
								<div class="widget-header">
									<h4 class="widget-title">影像信息</h4>

									<div class="widget-toolbar">
										<a href="#" data-action="collapse">
											<i class="ace-icon fa fa-chevron-up"></i>
										</a>
									</div>
								</div>

								<div class="widget-body">
									<div class="widget-main">
										<table id="table_report" class="table table-striped table-bordered table-hover">
											<tr>
												<td style="width:125px;text-align: right;padding-top: 13px;">商业险:</td>
												<td>
													<input type="text" disabled="disabled" name="APPROVESERIALNO" id="APPROVESERIALNO" value="${pd.APPROVESERIALNO}" maxlength="32" placeholder="这里输入备注3" title="备注3" style="width:98%;"/>
												</td>
												<td style="width:125px;text-align: right;padding-top: 13px;">车船税:</td>
												<td>
													<input type="text" disabled="disabled" name="APPROVESERIALNO" id="APPROVESERIALNO" value="${pd.APPROVESERIALNO}" maxlength="32" placeholder="这里输入备注3" title="备注3" style="width:98%;"/>
												</td>
											</tr>
											<tr>
												<td style="width:125px;text-align: right;padding-top: 13px;">商业险:</td>


												<%--
													图片对应ID 是 文件服务器图片文件的UUID
													<%=basePath%>pictures/image/${图片对应ID}
												--%>
												<td>
													<a href="<%=basePath%>static/ace/images/gallery/image-1.jpg" title="商业险保单" class="lightsGal">
														<img src="<%=basePath%>static/ace/images/gallery/image-1.jpg" alt="商业险保单" width="100">
													</a>&nbsp;&nbsp;
													<a href="<%=basePath%>static/ace/images/gallery/image-1.jpg" title="商业险发票" class="lightsGal">
														<img src="<%=basePath%>static/ace/images/gallery/image-1.jpg" alt="商业险发票" width="100">
													</a>
												</td>
												<td style="width:125px;text-align: right;padding-top: 13px;">车船税/交强险:</td>
												<td>
													<a href="<%=basePath%>static/ace/images/gallery/image-1.jpg" title="车船税/交强险保单" class="lightsGal">
														<img src="<%=basePath%>static/ace/images/gallery/image-1.jpg" alt="" width="100">
													</a>&nbsp;&nbsp;
													<a href="<%=basePath%>static/ace/images/gallery/image-1.jpg" title="车船税/交强险发票" class="lightsGal">
														<img src="<%=basePath%>static/ace/images/gallery/image-1.jpg" alt="车船税/交强险发票" width="100">
													</a>
												</td>
											</tr>
										</table>
									</div>


								</div>
							</div>


							<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
						</div>
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