<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>국가인터넷지도 | 지도 오픈API 샘플</title>
<script type="text/javascript" src="/js/jquery/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="/js/map/OpenLayers.js"></script>
<script type="text/javascript" src="http://emapapi.ngii.go.kr:9082/openapi/ngiiMap.js?apikey=XWvlNnlnb2Ah7u4DFEMvHw"></script>
<script>
var map1;
window.onload = function(){
	map1 = new ngii.map("map1");
	map1._addDefaultMeasureControl();
};
</script>
</head>
<body>
	<div id="map1" style="width:700px;height:700px;position:relative;">
		<div style="position:absolute;top:120px;right:20px;width:54px;height:200px;z-index:1000000;">
			<div id="toolbar" style="width:39px;margin-top:10px;margin-left:10px;">
				<ul style="padding:0 0 0 0;margin:0 0 0 0;list-style:none outside none;">
					<li style="background:url(/images/tool_off_01.png); background-repeat:repeat-y; height:30px;padding:0 0 0 0;margin:0 0 0 0;"></li>
					<li style="background:url(/images/BgTool.png); background-repeat:repeat-y;padding:0 0 0 0;margin:0 0 0 0;">
						<ul id="tool_swich" style="padding:0 0 0 0;margin:0 0 0 0;list-style:none outside none;">
							<li name="zoomIn" style="padding:0 0 0 0;margin:0 0 0 0;" title="확대"><a href="javascript:map1.zoomIn();" style="text-decoration:none;padding:0 0 0 0;margin:0 0 0 0;"><img src="/images/tool_off_02.png" border="0"/></a></li>
							<li name="zoomOut" style="padding:0 0 0 0;margin:0 0 0 0;" title="축소"><a href="javascript:map1.zoomOut();" style="text-decoration:none;padding:0 0 0 0;margin:0 0 0 0;"><img src="/images/tool_off_03.png" border="0"/></a></li>
							<li name="measure_distance" style="padding:0 0 0 0;margin:0 0 0 0;" title="거리"><a href="javascript:map1._mapControl('measure_distance');" style="text-decoration:none;padding:0 0 0 0;margin:0 0 0 0;"><img src="/images/tool_off_05.png" border="0"/></a></li>
							<li name="measure_area" style="padding:0 0 0 0;margin:0 0 0 0;" title="면적"><a href="javascript:map1._mapControl('measure_area');" style="text-decoration:none;padding:0 0 0 0;margin:0 0 0 0;"><img src="/images/tool_off_06.png" border="0"/></a></li>
							<li name="deleteLayer" style="padding:0 0 0 0;margin:0 0 0 0;" title="초기화"><a href="javascript:map1._mapControl();" style="text-decoration:none;padding:0 0 0 0;margin:0 0 0 0;"><img src="/images/tool_off_04.png" border="0"/></a></li>
						</ul>
					</li>
					<li style="padding:0 0 0 0;margin:0 0 0 0;"><img src="/images/tool_off_09.png" width="39" height="24"  alt=""/></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
						