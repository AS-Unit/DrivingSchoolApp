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
                            <h4 class="m-0 text-dark">Dane lekcji</h4>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
        </div>
        <!-- /.content-header -->

        <form method="post" action='<c:url value="/lectures/addNewLecture"/>'>

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
                                            <c:if test="${courseList.size() == 0}">
                                                <option value="0">brak kursów</option>
                                            </c:if>
                                            <c:forEach items="${courseList}" var="course">
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

                            <!-- Row with LECTURES TYPE parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Rodzaj:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="lectureType" name="lectureType">
                                            <option hidden>wybierz</option>
                                            <c:forEach items="${lecturesTypesList}" var="lecturesType">
                                                <option><c:out value="${lecturesType}"/></option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <!-- /. Row with LECTURES TYPE parameter -->

                            <!-- Row with PLACE parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Lokalizacja:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="place" name="place" onchange="getMaxCountOfStudent()">
                                            <option hidden>wybierz</option>
                                            <c:if test="${classroomList.size() == 0}">
                                                <option value="0">brak lokalizacji</option>
                                            </c:if>
                                            <c:if test="${classroomList.size() > 0}">
                                                <c:forEach items="${classroomList}" var="classroom">
                                                    <option id="${classroom.id}"
                                                            data-max-student="${classroom.maxCountOfStudents}"
                                                            value="${classroom.id}">${classroom.name}</option>
                                                </c:forEach>
                                            </c:if>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="/lectures/addNewLecture" class="btn btn-block btn-primary">Dodaj</a>
                                </div>
                            </div>
                            <!-- /. Row with PLACE parameter -->

                            <!-- Row with LECTURER parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Prowadzący:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <select class="form-control" id="lecturer" name="lecturer">
                                            <option hidden>wybierz</option>
                                            <c:if test="${lecturerEmployee.size() == 0}">
                                                <option value="0">brak prowadzących</option>
                                            </c:if>
                                            <optgroup id="isInstructor" label="Instruktorzy" hidden>
                                                <c:forEach items="${instructorsList}" var="instructorsList">
                                                    <option>${instructorsList.firstName} ${instructorsList.lastName}</option>
                                                </c:forEach>
                                            </optgroup>
                                            <optgroup id="isLecturer" label="Wykładowcy" hidden>
                                                <c:forEach items="${lecturerEmployee}" var="lecturerEmployee">
                                                    <option>${lecturerEmployee.firstName} ${lecturerEmployee.lastName}</option>
                                                </c:forEach>
                                            </optgroup>
                                            <optgroup id="isParamedic" label="Medycy" hidden>
                                                <c:forEach items="${firstAidLecturerList}" var="firstAidLecturerList">
                                                    <option>${firstAidLecturerList.firstName} ${firstAidLecturerList.lastName}</option>
                                                </c:forEach>
                                            </optgroup>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="/employees/addNewEmployee" class="btn btn-block btn-primary">Dodaj</a>
                                </div>
                            </div>
                            <!-- /. Row with LECTURER parameter -->

                            <!-- Row with DAY parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Dzień</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="input-group date"
                                         id="lectureDay"
                                         data-target-input="nearest">
                                        <input type="text"
                                               class="form-control datetimepicker"
                                               data-target="#lectureDay"
                                               name="lectureDay">
                                        <div class="input-group-append"
                                             data-target="#lectureDay"
                                             data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /. Row with DAY LECTURE parameter -->

                            <!-- Row with TIME LECTURE parameter -->
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Godziny:</p>
                                </div>
                                <div class="col-sm-3">
                                    <div class="input-group date"
                                         id="lectureBegin"
                                         data-target-input="nearest">
                                        <input type="text"
                                               class="form-control datetimepicker"
                                               data-target="lectureBegin"
                                               name="lectureBegin">
                                        <div class="input-group-append"
                                             data-target="#lectureBegin"
                                             data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-clock"></i></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="input-group date"
                                         id="lectureEnd"
                                         data-target-input="nearest">
                                        <input type="text"
                                               class="form-control datetimepicker"
                                               data-target="lectureEnd"
                                               name="lectureEnd">
                                        <div class="input-group-append"
                                             data-target="#lectureEnd"
                                             data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-clock"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /. Row with START TIME LECTURE parameter -->

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
                                    <a href="/lectures" class="btn btn-block btn-danger">Anuluj</a>
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

    function getValueType() {
        const nameType = "szkolenie z pierwszej pomocy";
        let dataTypeValue = document.getElementById("type").value;
        let employeeList = document.getElementById("employeeList");
        let isParamedic = document.getElementById("isParamedic");
        let isLecturer = document.getElementById("isLecturer");

        if (dataTypeValue === nameType) {
            employeeList.setAttribute("hidden", "hidden");
            isParamedic.removeAttribute("hidden");
            isLecturer.setAttribute("hidden", "hidden");
        } else {
            employeeList.setAttribute("hidden", "hidden");
            isLecturer.removeAttribute("hidden");
            isParamedic.setAttribute("hidden", "hidden");
        }
    }
</script>
</body>
</html>
