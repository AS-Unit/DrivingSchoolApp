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
                            <h4 class="m-0 text-dark">Dane instruktora/wykładowcy</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.content-header -->
        <form method="post" action='<c:url value="/employees/addNewEmployee"/>'>
            <!-- Main content -->
            <div class="card-header">
                <div class="container-fluid">
                    <div class="row">

                        <!-- Column with Name and Surname Input-->
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Imię</p>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control" placeholder="" id="firstName"
                                           name="firstName">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Nazwisko</p>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control" name="lastName">
                                </div>
                            </div>
                        </div>
                        <!--/. Column with Name and Surname Input -->

                        <!-- Column with Place, Phone and Mail Input -->
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Miejscowość</p>
                                </div>
                                <div class="col-sm-6 mb-3">
                                    <input type="text" class="form-control" placeholder="" id="city" name="city">
                                </div>
                            </div>
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
                                               data-inputmask="'mask': ['999-999-999 [x99999]', '+099 99 99 999[9]-999']"
                                               data-mask id="phone" name="phone">
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-sm-3">
                                    <p>Mail</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                        </div>
                                        <input type="email" class="form-control" placeholder="Email" id="mail"
                                               name="mail">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/. Column with Place, Phone and Mail Input -->

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
                                                   name="isLecturer" value="true">
                                            <label class="form-check-label" for="isLecturer">Wykładowca</label>
                                        </div>
                                        <div class="form-check mt-2">
                                            <input class="form-check-input"  type="checkbox" id="isInstructor"
                                                   name="isInstructor" value="true">
                                            <label for="isInstructor" class="form-check-label">Instruktor</label>
                                        </div>
                                        <div class="form-check mt-2">
                                            <input class="form-check-input" type="checkbox" id="isParamedic"
                                                   name="isParamedic" value="true">
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
                                                               name="isLecturerA" value="true">
                                                        <label for="isLecturerA" class="form-check-label">A</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerB"
                                                               name="isLecturerB" value="true">
                                                        <label for="isLecturerB" class="form-check-label">B</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerC"
                                                               name="isLecturerC" value="true">
                                                        <label for="isLecturerC" class="form-check-label">C</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerD"
                                                               name="isLecturerD" value="true">
                                                        <label for="isLecturerD" class="form-check-label">D</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mt-2 mb-2">
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" id="isLecturerT"
                                                               name="isLecturerT" value="true">
                                                        <label for="isLecturerT" class="form-check-label">T</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerBe" name="isLecturerBe" value="true">
                                                        <label for="isLecturerBe" class="form-check-label">BE</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerCe" name="isLecturerCe" value="true">
                                                        <label for="isLecturerCe" class="form-check-label">CE</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-2">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox"
                                                               id="isLecturerDe" name="isLecturerDe" value="true">
                                                        <label for="isLecturerDe" class="form-check-label">DE</label>
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
                            </div>
                        </div>
                    </div>
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
                                           name="noPermission">
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
                                               data-target="#permissionExpirationDate" name="permissionExpirationDate">
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
                                           name="noDrivingLicense">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Ważne do</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-group date"
                                         id="drivingLicenseExpirationDate"
                                         data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker"
                                               data-target="#drivingLicenseExpirationDate"
                                               name="drivingLicenseExpirationDate">
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
            <!-- edit info -->
            <div class="card-body">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-md-3">
                            <div class="row">

                                <div class="col-sm-4">
                                    <a href="/employees" class="btn btn-block btn-danger">Anuluj</a>
                                </div>
                                <div class="col-sm-4">
                                    <input type="submit" class="btn btn-block btn-success" value="Zapisz">
                                </div>
                            </div>


                        </div>

                        <div class="col-md-3">
                            Data utworzenia recordu
                        </div>

                        <div class="col-md-3">
                            Data Ostatniej Modyfikacji
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./edit info -->
        </form>
        <!-- /.content -->
    </div>


    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!-- /.control-sidebar -->
</div>

<!-- ./wrapper -->
<%@include file="/WEB-INF/views/dynamic/js.jspf" %>
<!-- jQuery -->

</body>
</html>
