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
        <!-- Content Header (Page header) -->

        <div class="card-info">
            <div class="card-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h4 class="m-0 text-dark">Miejsce</h4>
                        </div><!-- /.col -->

                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
        </div>
        <!-- /.content-header -->
        <form name="sendEditEmployee" method="post" action='<c:url value="/places/editPlace/${place.id}"/>'>
            <!-- Main content -->
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Nazwa:</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="" id="name" name="name"
                                           value="${place.name}" readonly>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Miejsce szkolenia:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <select class="form-control" id="trainingPlace" name="trainingPlace">
                                            <option>${place.trainingPlace}</option>
                                            <c:if test='${place.trainingPlace.equals("Miejsce 1")}'>
                                                <option>Miejsce 2</option>
                                                <option>Miejsce 3</option>
                                            </c:if>
                                            <c:if test='${place.trainingPlace.equals("Miejsce 2")}'>
                                                <option>Miejsce 1</option>
                                                <option>Miejsce 3</option>
                                            </c:if>
                                            <c:if test='${place.trainingPlace.equals("Miejsce 3")}'>
                                                <option>Miejsce 1</option>
                                                <option>Miejsce 2</option>
                                            </c:if>

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Status</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <select class="form-control" id="status" name="status">
                                            <option>${place.status}</option>
                                            <c:if test='${place.status.equals("aktywna")}'>
                                                <option>zawieszona</option>
                                            </c:if>
                                            <c:if test='${place.status.equals("zawieszona")}'>
                                                <option>aktywna</option>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Maksymalna ilość uczestnikow:</p>
                                </div>
                                <div class="col-sm-2">
                                    <input type="number" class="form-control" id="maxCountOfStudents"
                                           name="maxCountOfStudents" value="${place.maxCountOfStudents}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-md-3">
                            <div class="row">

                                <div class="col-sm-4">

                                    <a href="/places" class="btn btn-block btn-danger">Anuluj</a>

                                </div>
                                <div class="col-sm-4">
                                    <input type="submit" class="btn btn-block btn-success" value="Zapisz">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="input-group date" id="dateCreate" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" data-target="#dateCreate"
                                       id="dateCreateplace" name="dateCreateplace"
                                       value="${place.dateCreateplace}" readonly/>
                            </div>
                            <p class="text-center">Data utworzenia recordu</p>
                        </div>

                        <div class="col-md-2">
                            <div class="input-group date" id="dateEdit" data-target-input="nearest">
                                <input type="text" class="form-control datetimepicker-input" data-target="#dateEdit"
                                       id="dateEditplace" name="dateEditplace"
                                       value="${place.dateEditplace}" readonly/>
                            </div>
                            <p class="text-center">Data Ostatniej Modyfikacji</p>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- /.content -->
    </div>
    <!-- footer -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!--    /.footer    -->

    <!-- Control Sidebar -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>
</body>
</html>

