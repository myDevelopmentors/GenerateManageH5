<div class="col-md-3 left_col">
	<div class="left_col scroll-view">
		<div class="navbar nav_title" style="border: 0;">
			<a href="${ctx}/index" class="site_title"><i class="fa fa-paw"></i>
				<span>System Name!</span></a>
		</div>

		<div class="clearfix"></div>


		<!-- menu profile quick info -->
		<div class="profile clearfix">
			<div class="profile_pic">
				<img src="${ctx}/static/images/user.png" alt="..."
					class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>Welcome,</span>
				<h2>${userName}</h2>
			</div>
		</div>
		<!-- /menu profile quick info -->
		<br />
		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
			<div class="menu_section">
				<h3>General</h3>
				<ul class="nav side-menu">
					<c:forEach items="${sessionScope.menus}" var="menu">
						<li><a><i class="fa ${menu.openIcon}"></i> ${menu.name}<span
								class="fa fa-chevron-down"></span></a> <!-- 1 level menu --> 
								<c:if test="${menu.children!=null && fn:length(menu.children)>0}">
								<ul class="nav child_menu">
									<c:forEach items="${menu.children}" var="children">
										<c:choose>
											<c:when
												test="${children.children!=null && fn:length(children.children)>0}">
												<li><a href="#"><c:out value="${children.name}"></c:out></a>
												<!-- 2 level menu -->
												<ul class="nav child_menu">
													<c:forEach items="${children.children}" var="grandchildren">
														<!-- 3 level menu -->
														<li><a href="${grandchildren.permission.link}"><c:out
																	value="${grandchildren.name}"></c:out></a></li>
													</c:forEach>
												</ul>
												</li>
											</c:when>
											<c:otherwise>
												<li><a href="${children.permission.link}"><c:out
															value="${children.name}"></c:out></a></li>
												<!-- 2 level menu -->
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</ul>
							</c:if></li>
					</c:forEach>
				</ul>
				<!-- 
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">General Form</a></li>
                      <li><a href="#">Advanced Components</a></li>
                      <li><a href="#">Form Validation</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">General Elements</a></li>
                      <li><a href="#">Media Gallery</a></li>
                      <li><a href="#">Typography</a></li>
                      <li><a href="#">Icons</a></li>
                      <li><a href="#">Glyphicons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">Tables</a></li>
                      <li><a href="#">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">Chart JS</a></li>
                      <li><a href="#">Chart JS2</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">Fixed Sidebar</a></li>
                      <li><a href="#">Fixed Footer</a></li>
                    </ul>
                  </li>
                 -->
			</div>
			<div class="menu_section">
				<h3>Live On</h3>
				<ul class="nav side-menu">
					<li><a><i class="fa fa-bug"></i> Additional Pages <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="#">E-commerce</a></li>
							<li><a href="#">Projects</a></li>
						</ul></li>
					<li><a><i class="fa fa-windows"></i> Extras <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="#">403 Error</a></li>
							<li><a href="#">404 Error</a></li>
						</ul></li>
					<li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu">
							<li><a href="#level1_1">Level One</a>
							<li><a>Level One<span class="fa fa-chevron-down"></span></a>
								<ul class="nav child_menu">
									<li class="sub_menu"><a href="level2.html">Level Two</a></li>
									<li><a href="#level2_1">Level Two</a></li>
									<li><a href="#level2_2">Level Two</a></li>
								</ul></li>
							<li><a href="#level1_2">Level One</a></li>
						</ul></li>
					<li><a href="javascript:void(0)"><i class="fa fa-laptop"></i>
							Landing Page <span class="label label-success pull-right">Coming
								Soon</span></a></li>
				</ul>
			</div>

		</div>
		<!-- /sidebar menu -->

		<!-- /menu footer buttons -->
		<div class="sidebar-footer hidden-small">
			<a data-toggle="tooltip" data-placement="top" title="Settings"> <span
				class="glyphicon glyphicon-cog" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
				<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
				class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
			</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
				href="${ctx}/logout"> <span class="glyphicon glyphicon-off"
				aria-hidden="true"></span>
			</a>
		</div>
		<!-- /menu footer buttons -->
	</div>
</div>