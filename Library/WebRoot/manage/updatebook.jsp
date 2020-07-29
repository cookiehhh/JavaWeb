<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.sdcet.library.domain.Books"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/min.css">
</head>

<body>
	<jsp:include page="../html/header.jsp"></jsp:include>
	<main>
		<article>
			<div class="panel">
				<div class="panel-heading">
					<div class="panel-title">编辑图书</div>
				</div>
				<div class="panel-body">
					<form action="<%=request.getContextPath()%>/manage/updatebook"
						method="post" class="basic-grey">
						<label> <span>图书编号 :</span> <input type="text" name="id"
							placeholder="请输入图书编号" value="${selbook.id}" readonly="readonly" />
						</label> <label> <span>图书名称 :</span> <input type="text"
							name="name" placeholder="请输入图书名称" value="${selbook.name}" />
						</label> <label> <span>作者 :</span> <input type="text"
							name="author" placeholder="请输入作者" value="${selbook.author}" />
						</label> <label> <span>出版社 :</span> <input type="text"
							name="publisher" placeholder="请输入出版社"
							value="${selbook.publisher}" />
						</label> <label> <span>价格 :</span> <input type="text" name="price"
							placeholder="请输入价格" value="${selbook.price}" />
						</label> <label> <span>库存 :</span> <input type="text" name="stock"
							placeholder="请输入库存" value="${selbook.stock}" />
						</label> 
						<label> 
							<span>借阅数 :</span> 
							<input type="text"name="borrows" placeholder="请输入借阅数" value="${selbook.borrows}" />
						</label> 
						<label> 
							<span>类别编号 :</span> 
							<input type="text"name="categorieId" placeholder="请输入类别编号" value="${selbook.categorieId}" />
						</label> 
						<label> <span>&nbsp;</span> <input type="submit"
							class="button" value="提交" />
						</label>
					</form>

				</div>
			</div>
			<jsp:include page="../html/footer.jsp"></jsp:include>
		</article>
		<jsp:include page="../html/bookaside.jsp"></jsp:include>
	</main>
</body>

</html>
<script>
	function logout() {
		if (window.confirm('是否退出?')) {
			window.location.href = 'login.html';
		} else {
			return false;
		}
	}
</script>