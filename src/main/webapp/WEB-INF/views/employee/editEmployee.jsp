<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                            <h4 class="m-0 text-dark">Dane instruktora/wykładowcy</h4>
                        </div><!-- /.col -->

                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
        </div>
        <!-- /.content-header -->
        <form method="post" action='<c:url value="/employees/editEmployee/${employee.id}"/>'>
            <!-- Main content -->
            <div class="card-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Imię</p>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control" placeholder="" id="firstName"
                                           name="firstName" value="${employee.firstName}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Miejscowość</p>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control" placeholder="" id="city" name="city"
                                           value="${employee.city}">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Nazwisko</p>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control" name="lastName"
                                           value="${employee.lastName}">
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Telefon</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                        </div>
                                        <input type="text" class="form-control"
                                               data-inputmask="'mask': ['999-999-999 [x99999]', '+099 99 99 9999[9]-999']"
                                               data-mask id="phone" name="phone" value="${employee.phone}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Ulubiony kolor</p>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control" placeholder="">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Mail</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                        </div>
                                        <input type="email" class="form-control" placeholder="Email" id="mail"
                                               name="mail" value="${employee.mail}">
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
                                    <p>Rodzaj uprawnień:</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="container-fluid">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="isLecturer"
                                                   name="isLecturer" value="true"
                                                   <c:if test="${employee.isLecturer eq 'true'}">checked</c:if>>
                                            <label class="form-check-label" for="isLecturer">Wykładowca</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="isInstructor"
                                                   name="isInstructor" value="true"
                                                   <c:if test="${employee.isInstructor eq 'true'}">checked</c:if>>
                                            <label for="isInstructor" class="form-check-label">Instruktor</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="isParamedic"
                                                   name="isParamedic" value="true"
                                                   <c:if test="${employee.isParamedic eq 'true'}">checked</c:if>>
                                            <label for="isParamedic" class="form-check-label">Ratownik</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-header">
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <p>Uprawnienia do szkolenia w kat:</p>
                                    </div>
                                    <div class="col-sm-8">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerA"
                                                               name="isLecturerA" value="true"
                                                               <c:if test="${employee.isLecturerA eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerA" class="form-check-label">A</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerA1" name="isLecturerA1" value="true"
                                                               <c:if test="${employee.isLecturerA1 eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerA1" class="form-check-label">A1</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerA2" name="isLecturerA2" value="true"
                                                               <c:if test="${employee.isLecturerA2 eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerA2" class="form-check-label">A2</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerAm" name="isLecturerAm" value="true"
                                                               <c:if test="${employee.isLecturerAm eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerAm" class="form-check-label">AM</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerB"
                                                               name="isLecturerB" value="true"
                                                               <c:if test="${employee.isLecturerB eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerB" class="form-check-label">B</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerB1" name="isLecturerB1" value="true"
                                                               <c:if test="${employee.isLecturerB1 eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerB1" class="form-check-label">B1</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerBe" name="isLecturerBe" value="true"
                                                               <c:if test="${employee.isLecturerBe eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerBe" class="form-check-label">BE</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerC"
                                                               name="isLecturerC" value="true"
                                                               <c:if test="${employee.isLecturerC eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerC" class="form-check-label">C</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerC1" name="isLecturerC1" value="true"
                                                               <c:if test="${employee.isLecturerC1 eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerC1" class="form-check-label">C1</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerCe" name="isLecturerCe" value="true"
                                                               <c:if test="${employee.isLecturerCe eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerCe" class="form-check-label">CE</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerC1e" name="isLecturerC1e" value="true"
                                                               <c:if test="${employee.isLecturerC1e eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerC1e" class="form-check-label">C1E</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerD"
                                                               name="isLecturerD" value="true"
                                                               <c:if test="${employee.isLecturerD eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerD" class="form-check-label">D</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerD1" name="isLecturerD1" value="true"
                                                               <c:if test="${employee.isLecturerD1 eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerD1" class="form-check-label">D1</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerDe" name="isLecturerDe" value="true"
                                                               <c:if test="${employee.isLecturerDe eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerDe" class="form-check-label">DE</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerD1e" name="isLEcturerD1e" value="true"
                                                               <c:if test="${employee.isLecturerD1e eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerD1e" class="form-check-label">D1E</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerT"
                                                               name="isLecturerT" value="true"
                                                               <c:if test="${employee.isLecturerT eq 'true'}">checked</c:if>>
                                                        <label for="isLecturerT" class="form-check-label">T</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>


            <div class="card-info">
                <div class="card-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h4 class="m-0 text-dark">Dokumenty</h4>
                            </div><!-- /.col -->

                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
            </div>

            <div class="card-header">
                <div class="container-fluid">


                    <div class="row mb-3">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Nr Pozwolenia</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="" id="noPermission"
                                           name="noPermission" value="${employee.noPermission}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Ważne do</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group date" id="permissionExpirationDate"
                                         data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input"
                                               data-target="#permissionExpirationDate" name="permissionExpirationDate"
                                               value="${employee.permissionExpirationDate}">
                                        <div class="input-group-append" data-target="#permissionExpirationDate"
                                             data-toggle="datetimepicker">
                                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Nr Prawa Jazdy</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="" id="noDrivingLicense"
                                           name="noDrivingLicense" value="${employee.noDrivingLicense}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Ważne do</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group date" id="drivingLicenseExpirationDate"
                                         data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input"
                                               data-target="#drivingLicenseExpirationDate"
                                               name="drivingLicenseExpirationDate"
                                               value="${employee.drivingLicenseExpirationDate}">
                                        <div class="input-group-append" data-target="#drivingLicenseExpirationDate"
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

                        <div class="col-md-3">
                            <div class="row">

                                <div class="col-sm-4">

                                    <a href='<c:url value="/employees"/>' class="btn btn-block btn-danger">Anuluj</a>

                                </div>
                                <div class="col-sm-4">
                                    <input type="submit" class="btn btn-block btn-success" value="Zapisz">
                                </div>
                            </div>


                        </div>

                        <div class="col-md-3">
                            Data utworzenia recordu:
                            <div class="input-group date" id="dateCreate" data-target-input="nearest">
                                <div class="input-group-append" data-target="#dateCreate">
                                    <input type="text" style="text-align: center"
                                           class="form-control datetimepicker-input"
                                           data-target="#dateCreate"
                                           id="dateCreateEmployee" name="dateCreateEmployee"
                                           value="${employee.dateCreateEmployee}" readonly/>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3">
                            Data Ostatniej Modyfikacji:
                            <div class="input-group date" id="dateEdit" data-target-input="nearest">
                                <div class="input-group-append" data-target="#dateEdit">
                                    <input type="text" style="text-align: center"
                                           class="form-control datetimepicker-input" data-target="#dateEdit"
                                           id="dateEditEmployee" name="dateEditEmployee"
                                           value="${employee.dateEditEmployee}" readonly/>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </form>
        <!-- /.content -->
    </div>
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>
</body>
</html>
