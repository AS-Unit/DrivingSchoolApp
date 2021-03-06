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

        <form method="post" action='<c:url value="/courses/addNewCourse"/>'>

            <!-- Main content -->
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
                                        <select class="form-control" id="courseType" name="courseType">
                                            <option hidden>wybierz</option>
                                            <c:forEach items="${courseTypeList}" var="type">
                                                <option><c:out value="${type}"/></option>
                                            </c:forEach>
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
                                        <select class="form-control" id="place" name="place" onchange="getMaxCountOfStudent()">
                                            <c:if test="${activeClassroom.size() == 0}">
                                                <option value="0">dodaj salę lekcyjną</option>
                                            </c:if>
                                            <c:if test="${activeClassroom.size() > 0}">
                                                <option value="0">wybierz salę lekcyjną</option>
                                            <c:forEach items="${activeClassroom}" var="place">

                                                <option id="${place.id}" data-max-student="${place.maxCountOfStudents}" value="${place.id}">${place.name}</option>

                                            </c:forEach>
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
                                    <p>Opiekun:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <select class="form-control" id="guardian" name="guardian">
                                            <option> Opiekun </option>
<%--                                            <optgroup id="employeeList">
                                                <c:forEach items="${employeList}" var="employeList">
                                                    <option>${employeList.firstName} ${employeList.lastName}</option>
                                                </c:forEach>
                                            </optgroup>--%>
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
                                           name="maxCountOfStudents" value="0">
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
                                    <a href="/courses" class="btn btn-block btn-danger">Anuluj</a>
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

    function getMaxCountOfStudent(){
        let place = document.getElementById("place")
        place.setAttribute("max-student", place.value)
        let maxStudent = document.getElementById("place").getAttribute("max-student")
        document.getElementById("maxCountOfStudents").value = document.getElementById(maxStudent).getAttribute("data-max-student")
    }

function  getValueType(){
        const nameType = "szkolenie z pierwszej pomocy";
        let dataTypeValue = document.getElementById("type").value;
        let employeeList = document.getElementById("employeeList");
        let isParamedic = document.getElementById("isParamedic");
        let isLecturer = document.getElementById("isLecturer");

        if  (dataTypeValue === nameType){
            employeeList.setAttribute("hidden","hidden");
            isParamedic.removeAttribute("hidden");
            isLecturer.setAttribute("hidden","hidden");
        } else {
            employeeList.setAttribute("hidden","hidden");
            isLecturer.removeAttribute("hidden");
            isParamedic.setAttribute("hidden","hidden");
    }
}
</script>
</body>
</html>
