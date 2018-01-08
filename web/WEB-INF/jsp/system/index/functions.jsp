<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
<script type="text/javascript" language=JavaScript>
    document.onkeydown=function(event){
        var e = event || window.event || arguments.callee.caller.arguments[0];
        if(e.altKey && e.keyCode == 49){ // 按 Alt + 1
            prompt("The file path is:", "<%=request.getRequestURI()%>");
        }
        if (e.altKey && e.keyCode == 50) { // 按 Alt + 2
            //do something...
        }
        if (e.altKey && e.keyCode == 51) { // 按 Alt + 3
            //do something...
            reuslt=$.ajax({url:"<%=request.getContextPath()%>" + "/reloadSession",
                async : false
            });
            var data = reuslt.responseText;
            if ("true" == data) {
                alert("Reload Successful!");
            } else {
                alert("Reload Failed!");
            }
        }
        if (e && e.keyCode == 113) { // 按 F2
            //alert("你按下了 f2");
        }
        if (e.keyCode == 86 && e.ctrlKey) { // ctrl+V
            //alert("你按下了ctrl+V");
        }
    };
</script>
