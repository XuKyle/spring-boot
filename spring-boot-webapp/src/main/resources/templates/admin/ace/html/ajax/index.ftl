<#--声明变量-->
<#assign ctx = "${context.contextPath}">
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <title>Welcome - Ace Admin</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- ajax 请求时用到 default header name is X-CSRF-TOKEN 例子在 login.js 中 -->
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>

    <!--[if !IE]> -->
    <link rel="stylesheet" href="${ctx}/ace/assets/css/pace.css" type="text/css"/>

    <script data-pace-options='{ "ajax": true, "document": true, "eventLag": false, "elements": false }'
            src="${ctx}/ace/assets/js/pace.js"></script>

    <!-- <![endif]-->

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="${ctx}/ace/assets/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="${ctx}/ace/assets/css/font-awesome.css" type="text/css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="${ctx}/ace/assets/css/ace-fonts.css" type="text/css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="${ctx}/ace/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"
          type="text/css"/>
    <!-- ztree 用到，但不知道为什么放到具体的 ztree 页面就无法显示页面，只能放到 index 中 -->
    <link rel="stylesheet" type="text/css" href="${ctx}/zTree/css/metroStyle/metroStyle.css">

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctx}/ace/assets/css/ace-part2.css" class="ace-main-stylesheet" type="text/css"/>
    <![endif]-->

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${ctx}/ace/assets/css/ace-ie.css" type="text/css"/>
    <![endif]-->

    <!-- ace settings handler -->
    <script src="${ctx}/ace/assets/js/ace-extra.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="${ctx}/ace/assets/js/html5shiv.js"></script>
    <script src="${ctx}/ace/assets/js/respond.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
<!-- #section:basics/navbar.layout -->
<div id="navbar" class="navbar navbar-default">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <!-- #section:basics/sidebar.mobile.toggle -->
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>

            <span class="icon-bar"></span>
        </button>

        <!-- /section:basics/sidebar.mobile.toggle -->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="#" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    Ace Admin
                </small>
            </a>

            <!-- /section:basics/navbar.layout.brand -->

            <!-- #section:basics/navbar.toggle -->

            <!-- /section:basics/navbar.toggle -->
        </div>

        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="grey">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-tasks"></i>
                        <span class="badge badge-grey">4</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-check"></i>
                            4 Tasks to complete
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Software Update</span>
                                            <span class="pull-right">65%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width:65%" class="progress-bar"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Hardware Upgrade</span>
                                            <span class="pull-right">35%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width:35%" class="progress-bar progress-bar-danger"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Unit Testing</span>
                                            <span class="pull-right">15%</span>
                                        </div>

                                        <div class="progress progress-mini">
                                            <div style="width:15%" class="progress-bar progress-bar-warning"></div>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
                                            <span class="pull-left">Bug Fixes</span>
                                            <span class="pull-right">90%</span>
                                        </div>

                                        <div class="progress progress-mini progress-striped active">
                                            <div style="width:90%" class="progress-bar progress-bar-success"></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#">
                                See tasks with details
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="purple">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                        <span class="badge badge-important">8</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-exclamation-triangle"></i>
                            8 Notifications
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
                                            <span class="pull-right badge badge-info">+12</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <i class="btn btn-xs btn-primary fa fa-user"></i>
                                        Bob just signed up as an editor ...
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
                                            <span class="pull-right badge badge-success">+8</span>
                                        </div>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
                                            <span class="pull-right badge badge-info">+11</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#">
                                See all notifications
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="green">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                        <span class="badge badge-success">5</span>
                    </a>

                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-envelope-o"></i>
                            5 Messages
                        </li>

                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="${ctx}/ace/assets/avatars/avatar.png" class="msg-photo"
                                             alt="Alex's Avatar"/>
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="${ctx}/ace/assets/avatars/avatar3.png" class="msg-photo"
                                             alt="Susan's Avatar"/>
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="${ctx}/ace/assets/avatars/avatar4.png" class="msg-photo"
                                             alt="Bob's Avatar"/>
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="${ctx}/ace/assets/avatars/avatar2.png" class="msg-photo"
                                             alt="Kate's Avatar"/>
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#" class="clearfix">
                                        <img src="${ctx}/ace/assets/avatars/avatar5.png" class="msg-photo"
                                             alt="Fred's Avatar"/>
                                        <span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li class="dropdown-footer">
                            <a href="#page/inbox">
                                See all messages
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- #section:basics/navbar.user_menu -->
                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="${ctx}/ace/assets/avatars/user.jpg" alt="Jason's Photo"/>
                        <span class="user-info">
                           <small>Welcome ,</small>
                        ${username}
						</span>

                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>

                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-cog"></i>
                                Settings
                            </a>
                        </li>

                        <li>
                            <a href="#page/profile">
                                <i class="ace-icon fa fa-user"></i>
                                Profile
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="#">
                                <i class="ace-icon fa fa-power-off"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>

        <!-- /section:basics/navbar.dropdown -->
    </div><!-- /.navbar-container -->
</div>

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar                  responsive">
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'fixed')
            } catch (e) {
            }
        </script>

        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                <button class="btn btn-success">
                    <i class="ace-icon fa fa-signal"></i>
                </button>

                <button class="btn btn-info">
                    <i class="ace-icon fa fa-pencil"></i>
                </button>

                <!-- #section:basics/sidebar.layout.shortcuts -->
                <button class="btn btn-warning">
                    <i class="ace-icon fa fa-users"></i>
                </button>

                <button class="btn btn-danger">
                    <i class="ace-icon fa fa-cogs"></i>
                </button>

                <!-- /section:basics/sidebar.layout.shortcuts -->
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                <span class="btn btn-success"></span>

                <span class="btn btn-info"></span>

                <span class="btn btn-warning"></span>

                <span class="btn btn-danger"></span>
            </div>
        </div><!-- /.sidebar-shortcuts -->

        <ul class="nav nav-list">

            <!-- menu 菜单可以递归到四级，或者更多级别 -->
        <#if menus ??>
            <#list menus.children as children1>

                <li class="">
                    <a>
                        <i class="${children1.css}"></i>
                    ${children1.name}
                    </a>
                </li>
                <#list children1.children as children2>
                    <li class="">
                        <a href="#" class="dropdown-toggle">
                            <i class="${children2.css}"></i>
                            <span class="menu-text">  ${children2.name} </span>
                            <#if children2.children?size!=0>  <!--下拉框按钮-->
                                <b class="arrow fa fa-angle-down"></b>
                            </#if>
                        </a>

                        <b class="arrow"></b>
                        <#list children2.children as children3>
                            <ul class="submenu">
                                <li class="">
                                    <a data-url="page/ztree" href="#page/${children3.url}">
                                        <i class="${children3.css}"></i>
                                    ${children3.name}
                                        <#if children3.children?size!=0>  <!--下拉框按钮-->
                                            <b class="arrow fa fa-angle-down"></b>
                                        </#if>
                                    </a>
                                    <b class="arrow"></b>
                                    <#list children3.children as children4>
                                        <ul class="submenu">
                                            <li class="">
                                                <a href="#">
                                                    <i class="menu-icon fa fa-leaf green"></i>
                                                    Item #1
                                                </a>

                                                <b class="arrow"></b>
                                            </li>

                                            <li class="">
                                                <a href="#" class="dropdown-toggle">
                                                    <i class="menu-icon fa fa-pencil orange"></i>

                                                    4th level
                                                    <#if children4.children?size!=0>  <!--下拉框按钮-->
                                                        <b class="arrow fa fa-angle-down"></b>
                                                    </#if>
                                                </a>

                                                <b class="arrow"></b>
                                                <#list children4.children as children4>
                                                    <ul class="submenu">
                                                        <li class="">
                                                            <a href="#">
                                                                <i class="menu-icon fa fa-plus purple"></i>
                                                                Add Product
                                                            </a>

                                                            <b class="arrow"></b>
                                                        </li>
                                                    </ul>
                                                </#list>
                                            </li>
                                        </ul>
                                    </#list>
                                </li>
                            </ul>
                        </#list>
                    </li>
                </#list>
            </#list>
        </#if>

            <li class="">
                <a>
                    <i class="menu-icon fa fa-cogs red bigger-130 "></i>
                    系统管理
                </a>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-sitemap"></i>
                    <span class="menu-text"> 菜单管理 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a data-url="page/ztree" href="#page/admin/ztree-type?treeType=Menu">
                            <i class="menu-icon fa fa-caret-right"></i>
                            菜单树
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <!--
                    <li class="">
                        <a data-url="page/ztree" href="#page/admin/ztree-type?treeType=Group">
                            <i class="menu-icon fa fa-caret-right"></i>
                            用户组树
                        </a>
                        <b class="arrow"></b>
                    </li>
                    -->
                    <li class="">
                        <a data-url="page/ztree" href="#page/admin/ztree-type?treeType=DepartMent">
                            <i class="menu-icon fa fa-caret-right"></i>
                            部门树
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/ztree" href="#page/admin/ztree-type?treeType=Standard">
                            <i class="menu-icon fa fa-caret-right"></i>
                            其他业务树
                        </a>

                        <b class="arrow"></b>
                    </li>

                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-user-plus"></i>
                    <span class="menu-text"> 用户管理 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a data-url="page/fuelux-tree" href="#page/admin/jqgrid-user">
                            <i class="menu-icon fa fa-caret-right"></i>
                            用户
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/typography" href="#page/admin/jqgrid-group">
                            <i class="menu-icon fa fa-caret-right"></i>
                            用户组
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-object-group"></i>
                    <span class="menu-text">
								角色管理
							</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">

                    <li class="">
                        <a data-url="page/content-slider" href="#page/admin/jqgrid-roles?treeType=Menu">
                            <i class="menu-icon fa fa-caret-right"></i>
                            菜单角色
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/content-slider" href="#page/admin/jqgrid-roles?treeType=Standard">
                            <i class="menu-icon fa fa-caret-right"></i>
                            标准资源角色
                        </a>

                        <b class="arrow"></b>
                    </li>

                </ul>
            </li>

            <li class="">
                <a>
                    <i class="menu-icon fa fa-desktop red bigger-130 "></i>
                    业务系统演示
                </a>
            </li>

            <li class="">
                <a data-url="page/widgets" href="#page/widgets">
                    <i class="menu-icon fa fa-list-alt"></i>
                    <span class="menu-text"> 权限控制演示 </span>
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-pencil-square-o"></i>
                    <span class="menu-text"> Forms </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a data-url="page/form-elements" href="#page/form-elements">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Form Elements
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/form-elements-2" href="#page/form-elements-2">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Form Elements 2
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/form-wizard" href="#page/form-wizard">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Wizard &amp; Validation
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/wysiwyg" href="#page/wysiwyg">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Wysiwyg &amp; Markdown
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/dropzone" href="#page/dropzone">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Dropzone File Upload
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>


            <li class="">
                <a data-url="page/calendar" href="#page/calendar">
                    <i class="menu-icon fa fa-calendar"></i>

                    <span class="menu-text">
								Calendar

                        <!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-transparent tooltip-error" title="2 Important Events">
									<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
								</span>

                        <!-- /section:basics/sidebar.layout.badge -->
							</span>
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a data-url="page/gallery" href="#page/gallery">
                    <i class="menu-icon fa fa-picture-o"></i>
                    <span class="menu-text"> Gallery </span>
                </a>

                <b class="arrow"></b>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-tag"></i>
                    <span class="menu-text"> More Pages </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a data-url="page/profile" href="#page/profile">
                            <i class="menu-icon fa fa-caret-right"></i>
                            User Profile
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/inbox" href="#page/inbox">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Inbox
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/pricing" href="#page/pricing">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Pricing Tables
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/invoice" href="#page/invoice">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Invoice
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/timeline" href="#page/timeline">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Timeline
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/email" href="#page/email">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Email Templates
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/login" href="../login.html">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Login &amp; Register
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>

            <li class="">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-file-o"></i>

                    <span class="menu-text">
								Other Pages

                        <!-- #section:basics/sidebar.layout.badge -->
								<span class="badge badge-primary">5</span>

                        <!-- /section:basics/sidebar.layout.badge -->
							</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="">
                        <a data-url="page/faq" href="#page/faq">
                            <i class="menu-icon fa fa-caret-right"></i>
                            FAQ
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/error-404" href="#page/error-404">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Error 404
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/error-500" href="#page/error-500">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Error 500
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/grid" href="#page/grid">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Grid
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="">
                        <a data-url="page/blank" href="#page/blank">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Blank Page
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>


        </ul><!-- /.nav-list -->

        <!-- #section:basics/sidebar.layout.minimize -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left"
               data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>

        <!-- /section:basics/sidebar.layout.minimize -->
        <script type="text/javascript">
            try {
                ace.settings.check('sidebar', 'collapsed')
            } catch (e) {
            }
        </script>
    </div>

    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <div class="main-content-inner">
            <!-- #section:basics/content.breadcrumbs -->
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                </ul><!-- /.breadcrumb -->

                <!-- #section:basics/content.searchbox -->
                <div class="nav-search" id="nav-search">
                    <form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input"
                                           id="nav-search-input" autocomplete="off"/>
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
                    </form>
                </div><!-- /.nav-search -->

                <!-- /section:basics/content.searchbox -->
            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                <!-- #section:settings.box -->
                <div class="ace-settings-container" id="ace-settings-container">
                    <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                        <i class="ace-icon fa fa-cog bigger-130"></i>
                    </div>

                    <div class="ace-settings-box clearfix" id="ace-settings-box">
                        <div class="pull-left width-50">
                            <!-- #section:settings.skins -->
                            <div class="ace-settings-item">
                                <div class="pull-left">
                                    <select id="skin-colorpicker" class="hide">
                                        <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                        <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                        <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                        <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                    </select>
                                </div>
                                <span>&nbsp; Choose Skin</span>
                            </div>

                            <!-- /section:settings.skins -->

                            <!-- #section:settings.navbar -->
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar"/>
                                <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                            </div>

                            <!-- /section:settings.navbar -->

                            <!-- #section:settings.sidebar -->
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar"/>
                                <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                            </div>

                            <!-- /section:settings.sidebar -->

                            <!-- #section:settings.breadcrumbs -->
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs"/>
                                <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                            </div>

                            <!-- /section:settings.breadcrumbs -->

                            <!-- #section:settings.rtl -->
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"/>
                                <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                            </div>

                            <!-- /section:settings.rtl -->

                            <!-- #section:settings.container -->
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container"/>
                                <label class="lbl" for="ace-settings-add-container">
                                    Inside
                                    <b>.container</b>
                                </label>
                            </div>

                            <!-- /section:settings.container -->
                        </div><!-- /.pull-left -->

                        <div class="pull-left width-50">
                            <!-- #section:basics/sidebar.options -->
                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover"/>
                                <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact"/>
                                <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                            </div>

                            <div class="ace-settings-item">
                                <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight"/>
                                <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                            </div>

                            <!-- /section:basics/sidebar.options -->
                        </div><!-- /.pull-left -->
                    </div><!-- /.ace-settings-box -->
                </div><!-- /.ace-settings-container -->

                <!-- /section:settings.box -->
                <div class="page-content-area" data-ajax-content="true">
                    <!-- ajax content goes here -->
                </div><!-- /.page-content-area -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <!-- #section:basics/footer -->
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2013-2014
						</span>

                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
            </div>

            <!-- /section:basics/footer -->
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctx}/ace/assets/js/jquery.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
    window.jQuery || document.write("<script src='${ctx}/ace/assets/js/jquery1x.js'>" + "<" + "/script>");
</script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='${ctx}/ace/assets/js/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="${ctx}/ace/assets/js/bootstrap.js"></script>

<!-- ace scripts -->
<script src="${ctx}/h819/js/MyUtils.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.scroller.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.colorpicker.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.fileinput.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.typeahead.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.wysiwyg.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.spinner.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.treeview.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.wizard.js"></script>
<script src="${ctx}/ace/assets/js/ace/elements.aside.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.ajax-content.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.touch-drag.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.sidebar.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.submenu-hover.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.widget-box.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.settings.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.settings-rtl.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.settings-skin.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.widget-on-reload.js"></script>
<script src="${ctx}/ace/assets/js/ace/ace.searchbox-autocomplete.js"></script>
</body>
</html>
