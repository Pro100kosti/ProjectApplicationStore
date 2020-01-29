<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>

<div class="container" style = "color:darkred">
<legend align="center"><h1>Household Appliances Catalog</h1></legend>
</div>

<div class="container">
<table class="table">
    <thead>
    <tr>
        <th scope="col"><h3>No.</h3></th>
        <th scope="col"><h3>Title</h3></th>
        <th scope="col"><h3>Price</h3></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="item" items="${catalog}">
        <tr>
            <th scope="row"><h3>${item.id}</h3></th>
            <td><a href="${pageContext.request.contextPath}/product-catalog/item/${item.id}"
                   class="badge badge-info"><h3>${item.itemName}</h3></a></td>
            <td><a href="${pageContext.request.contextPath}/product-catalog/item/${item.id}"
                   class="badge badge-warning"><h3>${item.price}</h3></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>


<jsp:include page="footer.jsp"/>