<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@ include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<SCRIPT type="text/javascript">    
(function (global) {

	if(typeof (global) === "undefined")
	{
		throw new Error("window is undefined");
	}

    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";

		// making sure we have the fruit available for juice....
		// 50 milliseconds for just once do not cost much (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 50);
    };
	
	// Earlier we had setInerval here....
    global.onhashchange = function () {
        if (global.location.hash !== _hash) {
            global.location.hash = _hash;
        }
    };

    global.onload = function () {
       
		noBackPlease();

		// disables backspace on page except on input fields and textarea..
		document.body.onkeydown = function (e) {
            var elm = e.target.nodeName.toLowerCase();
            if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                e.preventDefault();
            }
            // stopping event bubbling up the DOM tree..
            e.stopPropagation();
        };
		
    };

})(window);
</script>
</head>
<body>

<section class="ftco-section-2 img" style="background-image: url(images/bg_3.jpg);">
    	<div class="container">
    		<div class="row d-md-flex justify-content-end">
    			<div class="col-md-4">
    				<div class="row">
    					<div class="col-md-lg-3">
    						<h1 style="color:yellow;">Are you sure??</h1>
         					   <form action="Logout.jsp">
              					 <div class="form-group">
                					<input type="submit" value="Logout" class="btn btn-primary py-3 px-5">
             					 </div>
            					</form>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>  

<%
	// public void logout1(){ 
	if(session.getAttribute("email")!=null){
		session.setAttribute("email", null);
	System.out.println(session.getAttribute("email"));}
	/* } */
%>

</body>
<%@ include file="Footer.jsp" %>