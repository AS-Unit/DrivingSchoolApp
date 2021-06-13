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
                            <h4 class="m-0 text-dark">Dane Jazdy</h4>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
        </div>
        <!-- /.content-header -->

        <form method="post" action='<c:url value="/drivings/addNewDriving"/>'>

            <!-- Main content -->
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">

                            <!-- Row with COURSE parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>ID Kursu:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="course" name="course">
                                            <option hidden>wybierz</option>
                                            <c:if test="${coursesList.size() == 0}">
                                                <option value="0">brak kursów</option>
                                            </c:if>
                                            <c:forEach items="${coursesList}" var="course">
                                                <option><c:out value="${course.id}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="/courses/addNewCourse" class="btn btn-block btn-primary">Dodaj</a>
                                </div>
                            </div>
                            <!-- /. Row with COURSE parameter -->

                            <!-- Row with CATEGORY parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Kategoria:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="category" name="category">
                                            <option hidden>wybierz</option>
                                            <c:forEach items="${categoryList}" var="category">
                                                <option><c:out value="${category}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- /. Row with CATEGORY parameter -->

                            <!-- Row with PLACE parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Lokalizacja:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="place" name="place" onchange="getMaxCountOfStudent()">
                                            <option hidden>wybierz</option>
                                            <c:if test="${placesList.size() == 0}">
                                                <option value="0">brak lokalizacji</option>
                                            </c:if>
                                            <c:if test="${placesList.size() > 0}">
                                                <c:forEach items="${placesList}" var="place">
                                                    <option id="${place.id}"
                                                            data-max-student="${place.maxCountOfStudents}"
                                                            value="${place.id}">${place.name}</option>
                                                </c:forEach>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="/places/addNewPlace" class="btn btn-block btn-primary">Dodaj</a>
                                </div>
                            </div>
                            <!-- /. Row with PLACE parameter -->

                            <!-- Row with INSTRUCTOR parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Instruktor:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="instructor" name="employee">
                                            <option hidden>wybierz</option>
                                            <c:forEach items="${instructorsList}" var="instructorsList">
                                                <option value="${instructorsList.id}">${instructorsList.firstName} ${instructorsList.lastName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="/employees/addNewEmployee" class="btn btn-block btn-primary">Dodaj</a>
                                </div>
                            </div>
                            <!-- /. Row with INSTRUCTOR parameter -->

                            <!-- Row with VEHICLE parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Samochód:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="vehicle" name="vehicle">
                                            <option hidden>wybierz</option>
                                            <c:forEach items="${vehiclesList}" var="vehicleList">
                                                <option value="${vehicleList.id}">${vehicleList.brand} ${vehicleList.model}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="/vehicles/addNewVehicle" class="btn btn-block btn-primary">Dodaj</a>
                                </div>
                            </div>
                            <!-- /. Row with VEHICLE parameter -->

                            <!-- Row with STUDENT parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Student:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="student" name="student">
                                            <option hidden>wybierz</option>
                                            <c:forEach items="${studentsList}" var="studentList">
                                                <option value="${studentList.id}">${studentList.firstName} ${studentList.lastName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="/students/addNewStudent" class="btn btn-block btn-primary">Dodaj</a>
                                </div>
                            </div>
                            <!-- /. Row with STUDENT parameter -->

                            <!-- Row with DAY parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Dzień</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="input-group date"
                                         id="drivingDay"
                                         data-target-input="nearest">
                                        <input type="text"
                                               class="form-control datetimepicker"
                                               data-target="#drivingDay"
                                               name="drivingDay">
                                        <div class="input-group-append"
                                             data-target="#drivingDay"
                                             data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /. Row with DAY parameter -->

                            <!-- Row with TIME parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Godziny:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="input-group date"
                                         id="drivingBeginTime"
                                         data-target-input="nearest">
                                        <input type="text"
                                               class="form-control datetimepicker"
                                               data-target="drivingBeginTime"
                                               name="drivingBeginTime">
                                        <div class="input-group-append"
                                             data-target="#drivingBeginTime"
                                             data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-clock"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="input-group date"
                                         id="drivingEndTime"
                                         data-target-input="nearest">
                                        <input type="text"
                                               class="form-control datetimepicker"
                                               data-target="drivingEndTime"
                                               name="drivingEndTime">
                                        <div class="input-group-append"
                                             data-target="#drivingEndTime"
                                             data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-clock"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /. Row with START TIME parameter -->

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
                                    <a href="/drivings" class="btn btn-block btn-danger">Anuluj</a>
                                </div>
                                <div class="col-sm-4">
                                    <input type="submit" class="btn btn-block btn-success" value="Zapisz">
                                </div>
                            </div>
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

    function getMaxCountOfStudent() {
        let place = document.getElementById("place")
        place.setAttribute("max-student", place.value)
        let maxStudent = document.getElementById("place").getAttribute("max-student")
        document.getElementById("maxCountOfStudents").value = document.getElementById(maxStudent).getAttribute("data-max-student")
    }

</script>
</body>
</html>
