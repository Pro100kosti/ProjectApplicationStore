<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Household.by</title>
</head>
<body>

<%-----------------------------------------My code!!!!----------------------------------------------------------%>


<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>

        <span class="badge badge-warning"><h2>"Household appliances"</h2></span>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active px-md-3">
                    <a class="font-weight-bold nav-link active" href="${pageContext.request.contextPath}/home"><h3>Home
                        page</h3></a>
                </li>

                <sec:authorize access="!isAuthenticated()">
                    <li class="nav-item px-md-3">
                        <a class="font-weight-bold nav-link" href="${pageContext.request.contextPath}/login"><h3>Authorization</h3></a>
                    </li>
                    <li class="nav-item px-md-3">
                        <a class="font-weight-bold nav-link" href="${pageContext.request.contextPath}/registration"><h3>Registry</h3></a>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item px-md-3">
                        <a class="nav-link" href="${pageContext.request.contextPath}/product-catalog"><h3>Product
                            Catalog</h3></a>
                    </li>
                    <li class="nav-item px-md-3">
                        <a class="nav-link" href="${pageContext.request.contextPath}/add-product"><h3>Add Product</h3>
                        </a>
                    </li>
                    <li class="nav-item px-md-3">
                        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"><h3>In
                            developing:)</h3></a>
                    </li>
                    <li class="nav-item px-md-3">
                        <a class="nav-link" href="${pageContext.request.contextPath}/logout"><h3>Logout</h3></a>
                    </li>
                </sec:authorize>
            </ul>

            <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/search">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                       name="search-str">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>



