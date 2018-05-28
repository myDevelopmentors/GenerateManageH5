<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>BASS后台管理系统</title>
<%@ include file="/WEB-INF/views/include/easyui.jsp"%>
<%@ include file="/WEB-INF/views/include/validation.jsp"%>
<script type="text/javascript" src="${ctx }/static/plugins/artTemplate/dist/template.js"></script>

<!--导入首页启动时需要的相应资源文件(首页相应功能的 js 库、css样式以及渲染首页界面的 js 文件)-->
<script src="${ctx}/static/plugins/easyui/common/index.js" type="text/javascript"></script>
<link href="${ctx}/static/plugins/easyui/common/index.css" rel="stylesheet" />
<script src="${ctx}/static/plugins/easyui/common/index-startup.js"></script>
<script type="text/javascript" src="${ctx}/static/plugins/jquery/jquery.form.js"></script>
</head>
<body>
	<!-- 容器遮罩 -->
    <div id="maskContainer">
        <div class="datagrid-mask" style="display: block;"></div>
        <div class="datagrid-mask-msg" style="display: block; left: 50%; margin-left: -52.5px;">
            正在加载...
        </div>
    </div>
    <div id="mainLayout" class="easyui-layout hidden" data-options="fit: true">
        <div id="northPanel" data-options="region: 'north', border: false" style="height: 80px; overflow: hidden;">
            <div id="topbar" class="top-bar">
                <div class="top-bar-left">
                    <h1 style="margin-left: 10px; margin-top: 10px;color: #fff"><span style="color: #3F4752">管理系统</span></h1>
                </div>
                <div class="top-bar-right">
                    <div id="timerSpan"></div>
                    <div id="themeSpan">
                        <a id="btnHideNorth" class="easyui-linkbutton" data-options="plain: true, iconCls: 'layout-button-up'"></a>
                    </div>
                </div>
            </div>
            <div id="toolbar" class="panel-header panel-header-noborder top-toolbar">
                <div id="infobar">
                    <span class="icon-hamburg-user" style="padding-left: 25px; background-position: left center;">
                        ${userName}，您好
                    </span>
                 
                </div>
               
                <div id="buttonbar">
                		<span class="icon-hamburg-settings" style="padding-left: 25px; background-position: left center;">
                			<a style="cursor:pointer" onclick="updatePwd()">密码修改</a>	
                		</span>       
                		<span class="datagrid-btn-separator" style="vertical-align: middle;display:inline-block;float:none"></span>             
                    <span>更换皮肤：</span>
                    <select id="themeSelector"></select>
                    <a href="javascript:void(0);" class="easyui-menubutton" data-options="menu:'#layout_north_set'" iconCls="icon-standard-cog">系统</a>  
                    <div id="layout_north_set">
						<div id="btnFullScreen" data-options="iconCls:'key'">全屏切换</div>
						<div id="btnExit" data-options="iconCls:'logout'">退出系统</div>
					</div>
                    <a id="btnShowNorth" class="easyui-linkbutton" data-options="plain: true, iconCls: 'layout-button-down'" style="display: none;"></a>
                </div>
            </div>
        </div>
        
        <!-- new -->
         <div data-options="region: 'west', title: '菜单导航栏', iconCls: 'icon-standard-map', split: true, minWidth: 200, maxWidth: 400" style="width: 220px; padding: 1px;">
	        <div id="myMenu" class="easyui-accordion" data-options="fit:true,border:false">
	        	<div title="一级菜单1" style="padding: 5px;" data-options="border:false,iconCls:'icon-hamburg-product'">
					<div>
						<ul class="easyui-tree"   style="padding:5px">
							<li>
								<span><c:out value="子菜单名字"></c:out></span> 
								<ul>
									<li data-options="state:open" style="margin-bottom:5px;padding-bottom:5px;">
									<a style="width: 98%; margin-bottom: 5px;"
										onclick="window.mainpage.mainTabs.addModule('孙子菜单名','hello','icon-hamburg-database')">
										<c:out value="孙子菜单名"></c:out>
									</a>												
									</li>
								</ul>
							</li>
						</ul>
						<a id="btn" class="easyui-linkbutton"
							data-options="plain:true,iconCls:'icon-hamburg-premium'"
								style="width: 98%; margin-bottom: 5px;"
									onclick="window.mainpage.mainTabs.addModule('子菜单名','test','icon-hamburg-premium')">
									<c:out value="子菜单名"></c:out>
						</a>		
	        		</div>
	      		</div>
	      		
	      		<div title="一级菜单2" style="padding: 5px;" data-options="border:false,iconCls:'icon-hamburg-product'">
					<div>
						<ul class="easyui-tree"   style="padding:5px">
							<li>
								<span><c:out value="子菜单名字"></c:out></span> 
								<ul>
									<li data-options="state:open" style="margin-bottom:5px;padding-bottom:5px;">
									<a style="width: 98%; margin-bottom: 5px;"
										onclick="window.mainpage.mainTabs.addModule('孙子菜单名','hello','icon-hamburg-database')">
										<c:out value="孙子菜单名"></c:out>
									</a>												
									</li>
								</ul>
							</li>
						</ul>
						<a id="btn" class="easyui-linkbutton"
							data-options="plain:true,iconCls:'icon-hamburg-premium'"
								style="width: 98%; margin-bottom: 5px;"
									onclick="window.mainpage.mainTabs.addModule('子菜单名','test','icon-hamburg-premium')">
									<c:out value="子菜单名"></c:out>
						</a>		
	        		</div>
	      		</div>
	      	</div>
	      </div>
<!-- 
        <div data-options="region: 'west', title: '菜单导航栏', iconCls: 'icon-standard-map', split: true, minWidth: 200, maxWidth: 400" style="width: 220px; padding: 1px;">
	        <div id="myMenu" class="easyui-accordion" data-options="fit:true,border:false">
				<c:forEach items="${menus}" var="menu">
				  <c:if test="${menu.children!=null && fn:length(menu.children)>0}">
			
					<div title="${menu.name}" style="padding: 5px;"
						data-options="border:false,iconCls:'${menu.openIcon}'">
						<div>
							<c:forEach items="${menu.children}" var="children">
								<c:choose>
									<c:when test="${children.children!=null && fn:length(children.children)>0}">
										<ul class="easyui-tree"   style="padding:5px">
											<li>
												<span><c:out value="${children.name}"></c:out></span> 
												<c:forEach items="${children.children}" var="grandchildren">
												<ul>
													<li data-options="state:open" style="margin-bottom:5px;padding-bottom:5px;">
														<a 
															style="width: 98%; margin-bottom: 5px;"
															onclick="window.mainpage.mainTabs.addModule('${grandchildren.name}','${grandchildren.permission.link}','${grandchildren.openIcon}')"><c:out
															value="${grandchildren.name}"></c:out></a>												
													</li>
												</ul>
												</c:forEach>
											</li>
										</ul>
									</c:when>
									<c:otherwise>
										<a id="btn" class="easyui-linkbutton"
											data-options="plain:true,iconCls:'${children.openIcon}'"
											style="width: 98%; margin-bottom: 5px;"
											onclick="window.mainpage.mainTabs.addModule('${children.name}','${children.permission.link}','${children.openIcon}')"><c:out
												value="${children.name}"></c:out></a>										
									</c:otherwise>
								</c:choose>								
							</c:forEach>
						
						</div>
					</div>
			
				  
				  </c:if>
				</c:forEach>
			</div>
        </div>
 -->
        <div data-options="region: 'center'">
            <div id="mainTabs_tools" class="tabs-tool">
                <table>
                    <tr>
                        <td><a id="mainTabs_jumpHome" class="easyui-linkbutton easyui-tooltip" title="跳转至主页选项卡" data-options="plain: true, iconCls: 'icon-hamburg-home'"></a></td>
                        <td><div class="datagrid-btn-separator"></div></td>
						<td><a id="mainTabs_toggleAll" class="easyui-linkbutton easyui-tooltip" title="展开/折叠面板使选项卡最大化" data-options="plain: true, iconCls: 'icon-standard-arrow-out'"></a></td>
                        <td><div class="datagrid-btn-separator"></div></td>
                        <td><a id="mainTabs_refTab" class="easyui-linkbutton easyui-tooltip" title="刷新当前选中的选项卡" data-options="plain: true, iconCls: 'icon-standard-arrow-refresh'"></a></td>
                        <td><div class="datagrid-btn-separator"></div></td>
                        <td><a id="mainTabs_closeTab" class="easyui-linkbutton easyui-tooltip" title="关闭当前选中的选项卡" data-options="plain: true, iconCls: 'icon-standard-application-form-delete'"></a></td>
                    </tr>
                </table>
            </div>
            <div id="mainTabs" class="easyui-tabs" data-options="fit: true, border: false, showOption: true, enableNewTabMenu: true, tools: '#mainTabs_tools', enableJumpTabMenu: true">
                <div id="homePanel" data-options="title: '主页', iconCls: 'icon-hamburg-home'">
                    <div class="easyui-layout" data-options="fit: true">
                        <div data-options="region: 'north', split: false, border: false" style="height: 33px;">
                           	首页内容
                        </div>
                        <div data-options="region: 'center', border: false" style="overflow: hidden;">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
 	<script>
 	var d;
	function updatePwd() {
		d=$("#dlg").dialog({   
		    title: '修改密码',    
		    width: 380,    
		    height: 200,    
		    href:'${ctx}/management/user/updPwd',
		    maximizable:true,
		    modal:true,
		    buttons:[{
				text:'确认',
				handler:function(){
					$("#mainform").submit(); 
				}
			},{
				text:'取消',
				handler:function(){
						d.panel('close');
					}
			}]
		});
	}		
 	
		$(document).ready(function() {
		

	/* 			$.ajax({
					type : 'get',
					dataType : "json",
					url : "${ctx}/i/menu",
					success : function(data) {
						var menuData={data:data};
						console.log(menuData);
						var html = template('menu', menuData);
						$('#myMenu').html(html); 
					}
				}); */

				$('.easyui-linkbutton').on('click', function() {
					$('.easyui-linkbutton').linkbutton({
						selected : false
					});
					$(this).linkbutton({
						selected : true
					});
				});
			})
		</script> 
		
	<div id="dlg"></div>  
</body>

</html>
