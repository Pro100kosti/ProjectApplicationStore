<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>

<div class="container" style = "color:crimson">
    <legend align="center"><h1>Great choice!</h1></legend>
</div>

<div class="container">
<div class="card" style="width: 18rem;">
    <img src="${pageContext.request.contextPath}/product-catalog/item/${item.id}/image" width = "200" height = "200" class="card-img-top" alt="...">
    <div class="card-body">
        <h3 class="card-title">${item.itemName}</h3>
        <p class="card-text"><h3>${item.price} USD</h3></p>
        <a href="${pageContext.request.contextPath}/product-catalog" class="btn btn-success"><h3>Buy</h3></a>
    </div>
</div>
</div>

<jsp:include page="footer.jsp"/>