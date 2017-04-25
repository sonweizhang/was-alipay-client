<%@ page language="java" pageEncoding="UTF-8"%>
<iframe id="b_iframe"  width="100%"  src="http://wk-menu.99114.net/view/agent.jsp" style="display:none"> </iframe>
		<script type="text/javascript">    
		window.onload=function(){
			var b_height = document.body.scrollHeight;   
			var b_iframe = document.getElementById("b_iframe");  
			b_iframe.src =  b_iframe.src+"#"+b_height;   
		}
</script> 
