<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="value" uri="http://www.springframework.org/tags/form" %>
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
                            <h4 class="m-0 text-dark">Dane Kursanta</h4>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </div>
        </div>
        <!-- /.content-header -->
        <form method="post" action='<c:url value="/students/addNewStudent"/>'>

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
                                <input type="text" class="form-control" placeholder="" id="firstName" name="firstName">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-3">
                                <p>Nazwisko</p>
                            </div>
                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control" placeholder="" id="lastName" name="lastName" >
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-3">
                                <p>Indeks</p>
                            </div>
                            <div class="col-sm-6 mb-3">
                                <input type="text" class="form-control" placeholder="" id="noIndex" name="noIndex">
                            </div>
                        </div>

                    </div>

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
                                    <input type="text" class="form-control" data-inputmask="'mask': ['999-999-999 [x99999]', '+099 99 99 999[9]-999']" data-mask id="phone" name="phone">
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
                                    <input type="email" class="form-control" placeholder="Email" id="mail" name="mail">
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
                                    <p>Kurs: </p>
                                </div>
                                <div class="col-sm-6">
                                    <div >
                                        <a href="#" role="button" class="btn btn-block btn-info btn" data-toggle="modal" data-target="#wyszukiwarkaKursu">Wyszukiwarka Kursów</a>

                                    </div>
                                </div>

                                <!-- The Modal -->
                                <div class="modal" id="wyszukiwarkaKursu">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Wyszikiwarka Dostępnych Kursów</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>

                                            <!-- Modal body -->
                                            <div class="modal-body">

                                                <div class="card-header">
                                                    <section class="content">
                                                        <div class="container-fluid">

                                                            <div class="row">
                                                                <div clas="col-md-12">
                                                                    <div class="form-group">
                                                                        <select class="form-control">
                                                                            <option value="" disabled selected> Wybierz Kategorie</option>
                                                                            <option>A</option>
                                                                            <option>B</option>
                                                                            <option>C</option>
                                                                            <option>D</option>
                                                                            <option>A + B </option>
                                                                            <option>A + B + C</option>
                                                                            <option>B + C + D</option>
                                                                            <option>A + B + C + D</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="form-group">
                                                                    <select class="form-control">
                                                                        <option value="" disabled selected> Wybierz Typ</option>
                                                                        <option>Standardowy (Wykłady i Praktyka)</option>
                                                                        <option>Rozszerzony (Wykłady i Praktyka Plus)</option>
                                                                        <option>Tylko Wykłady</option>
                                                                        <option>Tylko Praktyka</option>
                                                                    </select>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="input-group date" id="startdate" data-target-input="nearest">
                                                                    <input type="text" class="form-control datetimepicker-input" data-target="#startdate" placeholder="Od kiedy">
                                                                    <div class="input-group-append" data-target="#startdate" data-toggle="datetimepicker">
                                                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </section>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                Wyniki Wyszukiwania
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.The Modal -->

                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>


        <div class="card-header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Przydziel Instruktora:</p>
                            </div>
                            <div class="col-sm-6">

                                <div class="form-group">
                                    <select class="form-control">
                                        <option value="" disabled selected> Wybierz Dostępnego</option>
                                        <option>Jacek Kwaśniewski</option>
                                        <option>Grażyna Szybka</option>
                                        <option>Tomasz Promiliusz</option>
                                    </select>
                                </div>


                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Przydziel Wykładowce:</p>
                            </div>
                            <div class="col-sm-6">

                                <div class="form-group">
                                    <select class="form-control">
                                        <option value="" disabled selected> Wybierz Dostępnego</option>
                                        <option>Jacek Kwaśniewski</option>
                                        <option>Grażyna Szybka</option>
                                        <option>Tomasz Promiliusz</option>
                                    </select>
                                </div>


                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Przydziel Opiekuna:</p>
                            </div>
                            <div class="col-sm-6">

                                <div class="form-group">
                                    <select class="form-control">
                                        <option value="" disabled selected> Wybierz Dostępnego</option>
                                        <option>Jacek Kwaśniewski</option>
                                        <option>Grażyna Szybka</option>
                                        <option>Tomasz Promiliusz</option>
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

                        <div class="col-md-3">
                            <div class="row">

                                <div class="col-sm-4">
                                    <a href="/students" class="btn btn-block btn-danger">Anuluj</a>
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

    <!-- /.content-wrapper -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf"%>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf"%>
</body></html>
