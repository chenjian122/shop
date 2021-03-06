<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>WeUI</title>
    
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
	
	<link href="resource/css/weui.css" rel="stylesheet"  >
	<link href="resource/css/example.css" rel="stylesheet"  >

  </head>
  
  <body ontouchstart="">
  	<div class="container js_container">
	  	<div class="page cell">
	  		<div class="hd">
		        <h1 class="page_title">Cell</h1>
		    </div>
		    <div class="bd spacing">
			    <div class="bd">
                <div class="weui_cells_title">带说明的列表项</div>
                <div class="weui_cells">
                    <div class="weui_cell">
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>标题文字</p>
                        </div>
                        <div class="weui_cell_ft">
                            说明文字
                        </div>
                    </div>
                </div>
                <div class="weui_cells_title">带图标、说明的列表项</div>
                <div class="weui_cells weui_cells_split">
                    <div class="weui_cell">
                        <div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>标题文字</p>
                        </div>
                        <div class="weui_cell_ft">
                            说明文字
                        </div>
                    </div>
                    <div class="weui_cell">
                        <div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>标题文字</p>
                        </div>
                        <div class="weui_cell_ft">
                            说明文字
                        </div>
                    </div>
                </div>

                <div class="weui_cells_title">带跳转的列表项</div>
                <div class="weui_cells weui_cells_access">
                    <a class="weui_cell" href="javascript:;">
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                        </div>
                    </a>
                    <a class="weui_cell" href="javascript:;">
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                        </div>
                    </a>
                </div>

                <div class="weui_cells_title">带说明、跳转的列表项</div>
                <div class="weui_cells weui_cells_access">
                    <a class="weui_cell" href="javascript:;">
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                            说明文字
                        </div>
                    </a>
                    <a class="weui_cell" href="javascript:;">
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                            说明文字
                        </div>
                    </a>

                </div>

                <div class="weui_cells_title">带图标、说明、跳转的列表项</div>
                <div class="weui_cells weui_cells_access">

                    <a class="weui_cell" href="javascript:;">
                        <div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                            说明文字
                        </div>
                    </a>
                    <a class="weui_cell" href="javascript:;">
                        <div class="weui_cell_hd"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC4AAAAuCAMAAABgZ9sFAAAAVFBMVEXx8fHMzMzr6+vn5+fv7+/t7e3d3d2+vr7W1tbHx8eysrKdnZ3p6enk5OTR0dG7u7u3t7ejo6PY2Njh4eHf39/T09PExMSvr6+goKCqqqqnp6e4uLgcLY/OAAAAnklEQVRIx+3RSRLDIAxE0QYhAbGZPNu5/z0zrXHiqiz5W72FqhqtVuuXAl3iOV7iPV/iSsAqZa9BS7YOmMXnNNX4TWGxRMn3R6SxRNgy0bzXOW8EBO8SAClsPdB3psqlvG+Lw7ONXg/pTld52BjgSSkA3PV2OOemjIDcZQWgVvONw60q7sIpR38EnHPSMDQ4MjDjLPozhAkGrVbr/z0ANjAF4AcbXmYAAAAASUVORK5CYII=" alt="" style="width:20px;margin-right:5px;display:block"></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                            说明文字
                        </div>
                    </a>
                </div>

                <div class="weui_cells_title">单选列表项</div>
                <div class="weui_cells weui_cells_radio">
                    <label class="weui_cell weui_check_label" for="x11">
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                            <input type="radio" class="weui_check" name="radio1" id="x11">
                            <span class="weui_icon_checked"></span>
                        </div>
                    </label>
                    <label class="weui_cell weui_check_label" for="x12">

                        <div class="weui_cell_bd weui_cell_primary">
                            <p>cell standard</p>
                        </div>
                        <div class="weui_cell_ft">
                            <input type="radio" name="radio1" class="weui_check" id="x12" checked="checked">
                            <span class="weui_icon_checked"></span>
                        </div>
                    </label>
                </div>
                <div class="weui_cells_title">复选列表项</div>
                <div class="weui_cells weui_cells_checkbox">
                    <label class="weui_cell weui_check_label" for="s11">
                        <div class="weui_cell_hd">
                            <input type="checkbox" class="weui_check" name="checkbox1" id="s11" checked="checked">
                            <i class="weui_icon_checked"></i>
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>standard is dealt for u.</p>
                        </div>
                    </label>
                    <label class="weui_cell weui_check_label" for="s12">
                        <div class="weui_cell_hd">
                            <input type="checkbox" name="checkbox1" class="weui_check" id="s12">
                            <i class="weui_icon_checked"></i>
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <p>standard is dealicient for u.</p>
                        </div>
                    </label>
                </div>

                <div class="weui_cells_title">表单</div>
                <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_hd"><label class="weui_label">qq</label></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="weui_input" type="text" placeholder="请输入qq号">
                        </div>
                    </div>
                    <div class="weui_cell weui_vcode">
                        <div class="weui_cell_hd"><label class="weui_label">验证码</label></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="weui_input" type="text" placeholder="请输入验证码">
                        </div>
                        <div class="weui_cell_ft weui_vimg_wrp">
                            <img src="./images/vcode.jpg">
                        </div>
                    </div>
                    <div class="weui_cell">
                        <div class="weui_cell_hd"><label class="weui_label">银行卡</label></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="weui_input" type="text" placeholder="请输入银行卡号">
                        </div>
                    </div>
                    <div class="weui_cell weui_vcode weui_cell_warn">
                        <div class="weui_cell_hd"><label class="weui_label">验证码</label></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="weui_input" type="text" placeholder="请输入验证码">
                        </div>
                        <div class="weui_cell_ft weui_vimg_wrp">
                            <i class="weui_icon_warn"></i>
                            <img src="./images/vcode.jpg">
                        </div>
                    </div>
                </div>
                <div class="weui_btn_area">
                    <a class="weui_btn weui_btn_primary" href="javascript:">确定</a>
                </div>
                <div class="weui_cells_title">文本域</div>
                <div class="weui_cells weui_cells_form">
                    <div class="weui_cell">
                        <div class="weui_cell_bd weui_cell_primary">
                            <textarea class="weui_textarea"></textarea>
                        </div>
                    </div>
                </div>
                <div class="weui_toptips weui_warn js_tooltips" style="display: none;">格式不对</div>
                <div class="weui_cells_title">表单报错</div>
                <div class="weui_cells weui_cells_form">
                    <div class="weui_cell weui_cell_warn">
                        <div class="weui_cell_hd"><label for="" class="weui_label">卡号</label></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="weui_input" type="text" value="weui input error" placeholder="">
                        </div>
                        <div class="weui_cell_ft">
                            <i class="weui_icon_warn"></i>
                        </div>
                    </div>
                    <div class="weui_cell">
                        <div class="weui_cell_hd"><label for="" class="weui_label">有效期</label></div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="weui_input" type="text" value="08/17" placeholder="">
                        </div>
                    </div>
                </div>
                <div class="weui_cells_title">选择</div>
                <div class="weui_cells weui_cells_split">

                    <div class="weui_cell weui_cell_select weui_select_before">
                        <div class="weui_cell_hd">
                            <select class="weui_select" name="select2">
                                <option value="1">+86</option>
                                <option value="2">+80</option>
                                <option value="3">+84</option>
                                <option value="4">+87</option>
                            </select>
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <input class="weui_input" type="text" placeholder="请输入号码">
                        </div>
                    </div>
                </div>
                <div class="weui_cells_title">选择</div>
                <div class="weui_cells weui_cells_split">
                    <div class="weui_cell weui_cell_select">
                        <div class="weui_cell_bd weui_cell_primary">
                            <select class="weui_select" name="select1">
                                <option selected="" value="1">微信号</option>
                                <option value="2">QQ号</option>
                                <option value="3">Email</option>
                            </select>
                        </div>
                    </div>
                    <div class="weui_cell weui_cell_select weui_select_after">
                        <div class="weui_cell_hd">
                            国家/地区
                        </div>
                        <div class="weui_cell_bd weui_cell_primary">
                            <select class="weui_select" name="select2">
                                <option value="1">中国</option>
                                <option value="2">美国</option>
                                <option value="3">英国</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
			</div>
		 </div>
	</div>
	<script src="resource/js/jquery.min.js" type="text/javascript"></script>
	<script src="resource/js/example.js" type="text/javascript"></script>
	
  </body>
</html>
