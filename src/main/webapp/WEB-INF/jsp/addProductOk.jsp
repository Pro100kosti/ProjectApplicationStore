<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"/>


<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">Well done!</h4>
    <p>A product item has been added!</p>
    <hr>
    <p class="mb-0">Have a nice shopping!! :)</p>
</div>

<div class="container">
    <a class="btn btn-success" href="${pageContext.request.contextPath}/add-product" role="button">Back</a>
</div>

<jsp:include page="footer.jsp"/>