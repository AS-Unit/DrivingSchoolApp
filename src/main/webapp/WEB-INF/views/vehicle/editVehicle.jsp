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
                            <h4 class="m-0 text-dark">Dane pojazdu</h4>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
        </div>
        <!-- /.content-header -->

        <form method="post" action='<c:url value="/vehicles/editVehicle/${vehicle.id}"/> '>

            <!-- Main content -->
            <div class="card-header">
                <div class="container-fluid">
                    <div class="row mb-3">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Marka</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text"
                                           class="form-control"
                                           id="brand"
                                           name="brand"
                                           value="${vehicle.brand}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Rok Rejestracji</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text"
                                           class="form-control"
                                           id="registrationDate"
                                           name="registrationDate"
                                           value="${vehicle.registrationDate}">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Model</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text"
                                           class="form-control"
                                           id="model"
                                           name="model"
                                           value="${vehicle.model}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Paliwo i Silnik</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text"
                                           class="form-control"
                                           id="fuelAndEngine"
                                           name="fuelAndEngine"
                                           value="${vehicle.fuelAndEngine}">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>Rejestracja</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text"
                                           class="form-control"
                                           id="registrationNo"
                                           name="registrationNo"
                                           value="${vehicle.registrationNo}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p>VIN</p>
                                </div>
                                <div class="col-sm-6">
                                    <input type="text"
                                           class="form-control"
                                           id="vin"
                                           name="vin"
                                           value="${vehicle.vin}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Kierowca</p>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <select class="form-control" id="drive" name="driver">
                                            <option selected value="${vehicle.driver}">${vehicle.driver}</option>
                                            <option>Jan Kowalski</option>
                                            <option>Adam Nowak</option>
                                            <option>Jeremy Przybora</option>
                                            <option>Wojciech Niktowski</option>
                                            <option>Anna Nikita</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card-info">
                <div class="card-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h4 class="m-0 text-dark">Dane techniczne/dokumenty</h4>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
            </div>
            <div class="card-header container-fluid">

                <div class="row mb-3">
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-sm-3">
                                <p>Przegląd do</p>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group date" id="validityOfTechnicalReview"
                                     data-target-input="nearest">
                                    <input type="text"
                                           class="form-control datetimepicker-input"
                                           data-target="#validityOfTechnicalReview"
                                           name="validityOfTechnicalReview"
                                           value="${vehicle.validityOfTechnicalReview}"/>
                                    <div class="input-group-append"
                                         data-target="#validityOfTechnicalReview"
                                         data-toggle="datetimepicker">
                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-sm-3">
                                <p>Ubezpieczenie do</p>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group date" id="validityOfInsurance" data-target-input="nearest">
                                    <input type="text"
                                           class="form-control datetimepicker-input"
                                           data-target="#validityOfInsurance"
                                           name="validityOfInsurance"
                                           value="${vehicle.validityOfInsurance}"/>
                                    <div class="input-group-append"
                                         data-target="#validityOfInsurance"
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
                                <p>Przebieg</p>
                            </div>
                            <div class="col-sm-6">
                                <input type="text"
                                       class="form-control"
                                       id="mileage"
                                       name="mileage"
                                       value="${vehicle.mileage}">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-sm-3">
                                <p>Status</p>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <select class="form-control" id="status" name="status">
                                        <option selected value="${vehicle.status}">${vehicle.status}</option>
                                        <option>Aktywny</option>
                                        <option>Serwis</option>
                                        <option>Nieużywany</option>
                                    </select>
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
                                    <a href="/courses" type="button" class="btn btn-block btn-danger">Anuluj</a>
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
        </form>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>
</body>
</html>
