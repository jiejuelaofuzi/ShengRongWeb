<%@ page language="java" import="java.util.*, com.shengrong.hibernate.*, java.text.SimpleDateFormat, java.io.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
response.setCharacterEncoding("utf-8");
List<Companyprocess> cpList = (List<Companyprocess>)request.getAttribute("companyprocessList");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head lang="zh-CN">    
    <title>河南晟荣建筑工业科技有限公司</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="河南晟荣,晟荣,建筑工业科技">
	<meta http-equiv="description" content="河南晟荣建筑工业科技有限公司网站">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	
	<link href="<%=basePath %>Plugins/bootstrap/bootstrap.css" rel="stylesheet" type='text/css'/>
	<link href="<%=basePath %>Portal/style.css" rel="stylesheet" type='text/css'/>
	<link href="<%=basePath %>Portal/aboutus.css" rel="stylesheet" type='text/css'/>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>Plugins/timershaft/demo.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>Plugins/timershaft/style.css">
	
	<script src="<%=basePath%>Plugins/jquery/jquery-1.11.1.min.js"></script>
	<script src="<%=basePath%>Plugins/jquery/jquery.baiduMap.min.js"></script>
	<script src="<%=basePath%>Plugins/bootstrap/bootstrap.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=cbZBSnBB0OtXxG4Zh1LWGOFTXvqbXmdO"></script>
	
	<!---fonts-->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
    <style>
         .title {
				font-size: 14px;
				font-weight: bold;
				color: #cc5522;
			}
		 .previewImage{
			width:162px;
			height:162px;
			border-radius:50%;
			margin-left:-3px;
			margin-top:-3px;
		} 
	</style>
  </head>
  
  
  <body>
    <!---header--->
	<div class="header-section">
		<div class="container">
			
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>				  
					<div class="navbar-brand">
						<img style="height:50px" src="<%=basePath %>Images/shengrong-green.png">
					</div>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						   <li><a href="<%=basePath%>homepage.action">公司首页 <span class="sr-only">(current)</span></a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">产品中心<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="<%=basePath%>Products/coffeeMachine.jsp" target="_blank">咖啡机</a></li>
										<li><a href="<%=basePath%>Products/coffeeMachine.jsp">消防器材</a></li>
									</ul>
							</li>
							<li><a href="<%=basePath%>News/tradenews.jsp">新闻前线</a></li>
						
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">资料共享 <span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="2columnsgallery.html">2 Columns Gallery</a></li>
										<li><a href="3columnsgallery.html">3 Columns Gallery</a></li>
										<li><a href="4columnsgallery.html">4 Columns Gallery</a></li>
									</ul>
							</li>
						<li class="active"><a href="<%=basePath%>aboutshengrong.action">关于我们</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
			</nav>
		</div>
	</div>
	<!-- /header -->
	<!---banner--->
		<div class="banner-section">
			<div class="container">
				<h2>关于我们</h2>
		    </div>
		    
		    <div class="dynamic-news">
		         <a class="dynamic active" href="<%=basePath%>aboutshengrong.action">关于晟荣</a> 
		         <a class="dynamic" href="<%=basePath%>aboutteam.action">关于团队</a>
		    </div>
		</div>
	<!---banner--->
	   <div class="content">
	       <div class="shengrong-title">河南晟荣建筑工业科技有限公司</div>
	       <div class= "shengrong-img">
	       <img alt="" src="<%=basePath %>Images/about-shengrong.png"/>
	       </div>
	       <div class="shengrong-one">
	          <div id=mapContent>
				<script type="text/javascript">
			new BaiduMap({
				id: "mapContent",
				title: {
					text: "河南晟荣建筑工业科技有限公司",
					className: "title"
				},
				content: {
					className: "content",
					text: ["地址：河南省郑州市二七区大学路街道陇海路66号", "电话：(010)65131892"]
				},
				point: {
					lng: "113.688049",
					lat: "34.76533"
				}
			});
			</script>
	          </div>
	          <div class="shengrong-content-box">
	          	<div class="shengrong-content">
	          	公司成立于2017年4月26日，主要是新型节能环保材料、建筑材料的技术研发及销售；消防器材销售及售后服务；消防工程设计及施工。
	          	公司成立于2017年4月26日，主要是新型节能环保材料、建筑材料的技术研发及销售；消防器材销售及售后服务；消防工程设计及施工。
				公司成立于2017年4月26日，主要是新型节能环保材料、建筑材料的技术研发及销售；消防器材销售及售后服务；消防工程设计及施工。
				公司成立于2017年4月26日，主要是新型节能环保材料、建筑材料的技术研发及销售；消防器材销售及售后服务；消防工程设计及施工。
	          	</div>
	          </div>  
	       </div>
	       <div class="course-tit">发展历程</div>
	       
	       <div class="timeshaft">
		       <div class="row">
			   	   <div class="col-md-12">
				   	   <div class="main-timeline">
				   	   <%
							for(int i=0; i<cpList.size(); i++){
							InputStream is = cpList.get(i).getImage().getBinaryStream();
							byte[] b = new byte[is.available()];
							is.read(b, 0, b.length);
							String imageString = new String(b); 
							String cpDate = new SimpleDateFormat("yyyy-MM-dd").format(cpList.get(i).getDate());
						%>
					    <div class="timeline">
							   <div class="timeline-content">
							       <div class="circle"><span><img class="previewImage" src="<%=imageString %>"></span></div>
								   <div class="content">
								       <span class="year"><%=cpDate %></span>
									   <h6 class="time-title"><%=cpList.get(i).getTitle() %></h6>
									   <p class="description">
											<%=cpList.get(i).getBrief() %>
									   </p>
								       <div class="icon"><span></span></div>
							       </div>
						      </div>
					      </div>
                       <%
                          } 
                       %>
				        
				       </div>
			      </div>
		      </div>
	      </div>
	  </div>

	 <jsp:include page="footer.jsp" flush="true" />
  </body>
	          
</html>