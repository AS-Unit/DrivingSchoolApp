<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/views/dynamic/css.jspf" %>
<html>
<style>
    .container-fluid {
        width: 50%;
    }
</style>
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
                        <div class="card card-success">
                            <div class="card-header">
                                <div class="row">

                                    <!-- Student Navbar -->
                                    <%@include file="/WEB-INF/views/student/studentsNav.jspf"%>
                                    <!-- /.Student Navbar -->

                                </div>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form">
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th style="width: 10px">ID</th>
                                            <th style="align-content: space-between">Nazwisko, Imię</th>
                                            <th style="width: 100px">Kurs</th>
                                            <th style="align-content: center">Data Rejestracji</th>
                                            <th style="width: 130px"></th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach begin="0" step="1" end="10" items="${student}" var="student"
                                                   varStatus="loop">
                                            <tr>
                                                <td>${loop.count}</td>
                                                <td><a href='<c:url value="/students/editStudent/${student.id}"/>'
                                                       style="width: 40px">
                                                        ${student.lastName}, ${student.firstName}</a>
                                                </td>
                                                <td>${student.course}</td>
                                                <td>${student.dateCreateStudent}</td>
                                                <td>
                                                    <!--edit button -->
                                                    <a href='<c:url value="/students/editStudent/${student.id}"/>'
                                                       class="btn btn-success bg-gradient-warning"
                                                       style="width: 50px"><i class="fas fa-edit"></i></a>

                                                    <!-- delete button -->
                                                    <a href="students/delete/${student.id}"
                                                       class="btn btn-success bg-gradient-danger"
                                                       style="width: 45px"
                                                       data-toggle="modal"
                                                       data-target="#deleteModal"
                                                       id="deleteButton">
                                                        <i class="fas fa-trash-alt"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>

                                    <!-- The Modal -->
                                    <div class="modal fade" id="deleteModal">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Usuwanie studenta</h4>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Czy rzeczywiście chcesz usunąć studenta?</p>
                                                </div>
                                                <div class="modal-footer justify-content-between">
                                                    <button type="button" class="btn btn-success" data-dismiss="modal">
                                                        zamknij
                                                    </button>
                                                    <a href="" class="btn btn-danger" id="delRef">Usuń</a>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->

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
    <!--    footer    -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>

    <!--    /.footer    -->
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>

</body>
</html>
