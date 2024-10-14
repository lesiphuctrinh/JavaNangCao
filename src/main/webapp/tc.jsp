<%@page import="sachModal.sach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sachModal.sachbo"%>
<%@page import="loaiModal.loai"%>
<%@page import="loaiModal.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
	session.setAttribute("trang", "tc.jsp");
	
 %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  

    
    <ul class="nav navbar-nav">
      <li class="active"><a href="tc.jsp">Trang chủ</a></li>
       <li><a href="htgio.jsp">Giỏ hàng(0)</a></li>
       <li><a href="xacnhan.jsp">Xác nhận đặt mua</a></li>
       <li><a href="lichsu.jsp">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Logout.jsp">
      <span class="glyphicon glyphicon-user"></span>
       Logout</a></li>
      <%if(session.getAttribute("dn")==null){ %>
      <li><a href="dangnhap.jsp">
      <span class="glyphicon glyphicon-log-in"></span>
       Login</a></li>
       <%}else{ %>
       <li><a href="dangnhap.jsp">
      <span class="glyphicon glyphicon-log-in"></span>
       Xin chao: <%=session.getAttribute("dn") %></a></li>
       <%} %>
    </ul>
  </div>
</nav>
  
<div class="container">
 <div class="row">
     <div class="col-sm-2">
      <%
         loaibo lbo= new loaibo();
         for(loai l: lbo.getloai()){
      %>
        <a href="tc.jsp?ml=<%=l.getMaloai()%>">
          <%=l.getTenloai() %> <hr>
        </a>    
      <%} %>
     </div>
     <div class="col-sm-8">
          <%
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            
             sachbo sbo = new sachbo();
             ArrayList<sach> ds= sbo.getsach();
            String ml=request.getParameter("ml");
            
            String key=request.getParameter("txttk");
            if(ml!=null) ds=sbo.Timma(ml);
            else
            	if(key!=null) ds=sbo.Tim(key);
            
            
            int n=ds.size();
            for(int i=0;i<n;i++){
            	sach s=ds.get(i);
             %> 
          <div class="row">
            <div class="col-sm-4">
	            <img src="<%=s.getAnh() %>"> <br>
	             <%=s.getTensach() %> <br>
	             <%=s.getGia() %> <br>
	             
<a href="giohang.jsp?ms=<%=s.getMasach() %>&ts=<%=s.getTensach() %>&gia=<%=s.getGia() %>">
   <img src="buynow.jpg">
</a>	             
	         </div>
	         <%i++;if(i<n){s=ds.get(i); %>
	         <div class="col-sm-4">
	            <img src="<%=s.getAnh() %>"> <br>
	             <%=s.getTensach() %> <br>
	             <%=s.getGia() %> <br>
<a href="giohang.jsp?ms=<%=s.getMasach() %>&ts=<%=s.getTensach() %>&gia=<%=s.getGia() %>">
   <img src="buynow.jpg">
</a>
	         </div>
	         <%} %>
	         <%i++;if(i<n){s=ds.get(i); %>
	         <div class="col-sm-4">
	            <img src="<%=s.getAnh() %>"> <br>
	             <%=s.getTensach() %> <br>
	             <%=s.getGia() %> <br>
<a href="giohang.jsp?ms=<%=s.getMasach() %>&ts=<%=s.getTensach() %>&gia=<%=s.getGia() %>">
   <img src="buynow.jpg">
</a>
	         </div>
	         <%} %>
	         </div>
	       <%} %>
       </div>     
           
    
     <div class="col-sm-2">
     <form action="tc.jsp" method="post">
        <input type="text" name="txttk" class="form-control"> <br>
        <input type="submit" name="but" value="Search" class="btn-primary">   
   </form>
          
     </div>
 </div>
</div>

</body>
</html>
    