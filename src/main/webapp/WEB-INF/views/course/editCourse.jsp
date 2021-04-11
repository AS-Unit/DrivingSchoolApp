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
                            <h4 class="m-0 text-dark">Dane kursu</h4>
                        </div><!-- /.col -->

                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
        </div>
        <!-- /.content-header -->

        <form name="updateEditCourse" method="post" action='<c:url value="/courses/editCourse/${course.id}"/>'>

            <!-- Main content -->
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Data rozpoczęcia zajęć:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group date"
                                         id="startCourseDate"
                                         data-target-input="nearest">
                                        <input type="text"
                                               class="form-control datetimepicker"
                                               data-target="#startCourseDate"
                                               name="startCourseDate"
                                               value="${course.startCourseDate}">
                                        <div class="input-group-append"
                                             data-target="#startCourseDate"
                                             data-toggle="datetimepicker">
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
                                        <select class="form-control" id="type" name="type" onchange="getElement()" >
                                            <option value="wieczorowy" <c:if test='${course.type.equals("wieczorowy") }'> selected </c:if>>wieczorowy</option>
                                            <option value="weekendowy" <c:if test='${course.type.equals("weekendowy")}'> selected </c:if>>weekendowy</option>
                                            <option value="online" <c:if test='${course.type.equals("online")}'> selected </c:if>>online</option>
                                            <option value="szkolenie z pierwszej pomocy" <c:if test='${course.type.equals("szkolenie z pierwszej pomocy")}'> selected </c:if>>szkolenie z pierwszej pomocy</option>
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
                                        <select class="form-control" id="place" name="place" value="${course.place}">
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
                                        <select class="form-control" id="lecturer" name="lecturer">
                                            <option>${course.lecturer}</option>
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
                                <div class="col-sm-2">
                                    <input type="number" class="form-control"
                                           id="maxCountOfStudents"
                                           name="maxCountOfStudents"
                                           value="${course.maxCountOfStudents}"
                                           placeholder="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /. Main content -->

            <!-- Buttons Cancel and Save -->
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="row">
                                <div class="col-sm-4">
                                    <a href='<c:url value="/courses"/>' class="btn btn-block btn-danger">Anuluj</a>
                                </div>
                                <div class="col-sm-4">
                                    <input type="submit" class="btn btn-block btn-success" value="Zapisz">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="input-group date" id="dateCreate" data-target-input="nearest">
                                <div class="input-group-append" data-target="#dateCreate">
                                    <input type="text" style="text-align: center"
                                           class="form-control datetimepicker-input"
                                           data-target="#dateCreate"
                                           id="dateCreateCourse" name="dateCreateCourse"
                                           value="${course.dateCreateCourse}" readonly/>
                                </div>
                            </div>
                            <p class="text-center">Data utworzenia recordu</p>
                        </div>
                        <div class="col-md-2">
                            <div class="input-group date" id="dateEdit" data-target-input="nearest">
                                <div class="input-group-append" data-target="#dateEdit">
                                    <input type="text" style="text-align: center"
                                           class="form-control datetimepicker-input" data-target="#dateEdit"
                                           id="dateModifyCourse" name="dateModifyCourse"
                                           value="${course.dateModifyCourse}" readonly/>
                                </div>
                            </div>
                            <p class="text-center">Data Ostatniej Modyfikacji</p>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- /.content -->
    </div>
    <!--    footer    -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!--    /.footer    -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>

<script>
    function getElement() {console.log(document.getElementById("type").value)}
</script>

</body>
</html>
