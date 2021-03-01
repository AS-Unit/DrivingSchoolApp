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
            <!-- Content Header (Page header) -->
            <div class="card-info">
                <div class="card-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h4 class="m-0 text-dark">Dane kursu</h4>
                            </div><!-- /.col -->

                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="card-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Data wprowadzenia:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group date" id="inputDate" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate" />
                                        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
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
                                    <p>Data rozpoczęcia:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group date" id="beginDate" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate" />
                                        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
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
                                    <p>Rodzaj:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <select class="form-control">
                                            <option>teoria</option>
                                            <option>praktyka</option>
                                            <option>szkolenie z pierwszej pomocy</option>
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
                                    <p>Miejsce szkolenia:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">

                                        <select class="form-control">
                                            <option>sala 1</option>
                                            <option>sala 2</option>
                                            <option>sala 3</option>
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
                                    <p>Prowadzący:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <select class="form-control">
                                            <option>Jan Kowalski</option>
                                            <option>Jerzy Brzęczek</option>
                                            <option>Wojciech Niemocny</option>
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
                                <div class="col-sm-1">
                                    <input type="text" class="form-control" placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-9">

                        </div>
                        <div class="col-md-3">
                            <div class="row">
                                <div class="col-sm-4">
                                    <a href='<c:url value="/courses"/>' type="button" class="btn btn-block btn-success">Zapisz</a>
                                </div>
                                <div class="col-sm-4">
                                    <a href='<c:url value="/courses"/> ' type="button" class="btn btn-block btn-danger">Anuluj</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.content -->
        </div>
    <!--    footer    -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf"%>
    <!--    /.footer    -->
    </div>
    <!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf"%>
</body></html>
