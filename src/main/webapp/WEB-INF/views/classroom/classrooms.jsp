<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/views/dynamic/css.jspf" %>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Navbar -->
    <%@include file="/WEB-INF/views/dynamic/header.jspf" %>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <%@include file="/WEB-INF/views/dynamic/mainSidebar.jspf" %>
    <!--/.main sidebar -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">


        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-warning">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-3">
                                        <h4><i class="nav-icon fas fa-door-open"></i>

                                            Sale wykładowe</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <a href='<c:url value="/classrooms/addNewClassroom"/>' type="button"
                                               class="btn btn-block btn-primary btn-lg">Dodaj
                                                salę <i class="nav-icon fas fa-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <h5>Pokaż
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default">10</button>
                                                    <button type="button"
                                                            class="btn btn-default dropdown-toggle dropdown-icon"
                                                            data-toggle="dropdown">
                                                        <div class="dropdown-menu" role="menu">
                                                            <a class="dropdown-item" href="#">20</a>
                                                            <a class="dropdown-item" href="#">30</a>
                                                            <a class="dropdown-item" href="#">40</a>
                                                        </div>
                                                    </button>
                                                </div>
                                                pozycji
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th style="width: 10px">#</th>
                                            <th>Nazwa/nr</th>
                                            <th>Miejsce</th>
                                            <th>Ilość miejsc</th>
                                            <th>Status</th>
                                            <th style="width: 130px"></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach begin="0" step="1" end="10" items="${classroom}" var="classroom"
                                                   varStatus="loop">
                                            <tr>
                                                <td>${loop.count}</td>
                                                <td>${classroom.name}</td>
                                                <td>${classroom.trainingPlace}</td>
                                                <td>${classroom.maxCountOfStudents}</td>
                                                <td>${classroom.status}</td>
                                                <td>
                                                    <div class="row">
                                                        <div class="col md-6">
                                                            <a href='<c:url value="/editClassroom/${classroom.id}"/>'
                                                               class="btn btn-success bg-gradient-success"
                                                               style="width: 45px"><i class="fas fa-edit"></i></a>
                                                        </div>
                                                        <div class="col md-6">
                                                            <a href="/employees/delete/${employee.id}"
                                                               style="width: 45px"
                                                               class="btn btn-success bg-gradient-danger"
                                                               data-toggle="modal"
                                                               data-target="#delete-modal"
                                                               id="deleteButton"
                                                            ><i class="fas fa-trash-alt"></i>

                                                            </a>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="card-footer clearfix">
                                        <ul class="pagination pagination-sm m-0 float-right">
                                            <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /.card-body -->

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- /.content -->
    </div>
    <!-- footer -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!-- /.footer -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>
</body>
</html>
