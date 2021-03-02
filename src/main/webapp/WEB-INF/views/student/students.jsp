<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="/WEB-INF/views/dynamic/css.jspf"%>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Navbar -->
    <%@include file="/WEB-INF/views/dynamic/header.jspf"%>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <%@include file="/WEB-INF/views/dynamic/mainSidebar.jspf"%>
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
                                    <div class="col-md-3">
                                        <h4> <i class="nav-icon fas fa-graduation-cap"></i>
                                            Kursanci</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <a href='<c:url value="/students/addNewStudent"/>' type="button" class="btn btn-block btn-primary btn-lg">Dodaj kursanta <i class="nav-icon fas fa-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <h5>Pokaż <div class="btn-group">
                                                    <button type="button" class="btn btn-default">10</button>
                                                    <button type="button" class="btn btn-default dropdown-toggle dropdown-icon" data-toggle="dropdown">
                                                        <div class="dropdown-menu" role="menu">
                                                            <a class="dropdown-item" href="#">20</a>
                                                            <a class="dropdown-item" href="#">30</a>
                                                            <a class="dropdown-item" href="#">40</a>
                                                        </div>
                                                    </button>
                                                </div> pozycji</h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th style="width: 10px">#</th>
                                                <th>Nazwisko</th>
                                                <th>Imię</th>
                                                <th>Numer Indeksu</th>
                                                <th>Miasto</th>
                                                <th style="width: 130px"></th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach begin="0" step="1" end="10" items="${student}" var="student" varStatus="loop">
                                            <tr>
                                                <td>${loop.count}</td>
                                                <td>${student.lastName}</td>
                                                <td>${student.firstName}</td>
                                                <td>${student.noIndex}</td>
                                                <td>${student.city}</td>
                                                <td>
                                                    <!--edit buton -->
                                                    <a href='<c:url value="/students/editStudent/${student.id}"/>' class="btn btn-success bg-gradient-warning" style="width: 50px"><i class="fas fa-edit"></i></a>

                                                    <!-- delete buton -->
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
    <%@include file="/WEB-INF/views/dynamic/footer.jspf"%>

    <!--    /.footer    -->
    <!-- /.control-sidebar -->
</div>
    <!-- ./wrapper -->

    <%@include file="/WEB-INF/views/dynamic/js.jspf"%>
    <script>
        $('.table #deleteButton').on('click', function (event) {
            event.preventDefault();
            const href = $(this).attr('href');
            $('#deleteModal #delRef').attr('href', href);
            $('#deleteModal').modal();
        });
    </script>

</body></html>
