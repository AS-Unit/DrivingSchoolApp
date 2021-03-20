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
        <div class="content-header">
            <div class="container-fluid">
                <div class="card card-default">
                    <div class="card-header bg-primary">
                        <div class="row">
                            <div class="col-md-10">
                                <h5><i class="fas fa-bullhorn"> Ogłoszenia</i></h5>
                            </div>
                            <div class="col md-2"><button type="button" class="btn btn-default" data-toggle="modal"
                                                          data-target="#add-notice">dodaj ogłoszenie</button></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="card-body">
                            <div class="card card-default">
                                <div class="card-header bg-danger" style="text-align: center;">
                                    <h5>Uwaga grupa 35</h5>
                                </div>
                                <div style="text-align: center;" class="card-body">
                                    <div class="row">
                                        <div class="col-md-10"></div>
                                        <div class="col-md-2">
                                            <p>data publikacji: 22.02.2021</p>
                                        </div>
                                    </div>
                                    <p> Z powodu choroby prowadzącego zajęcia w dniu 23.03.2021 zostają odwołane</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="card-body">
                            <div class="card card-default">
                                <div class="card-header bg-info" style="text-align: center;">
                                    <h5>Nowe testy</h5>
                                </div>
                                <div style="text-align: center;" class="card-body">
                                    <div class="row">
                                        <div class="col-md-10"></div>
                                        <div class="col-md-2">
                                            <p>data publikacji: 22.02.2021</p>
                                        </div>
                                    </div>
                                    <p> Pojawiły się nowe testy!!! zapraszamy do sprawdzenia swoich umiejętności :)</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="card-body">
                            <div class="card card-default">
                                <div class="card-header bg-success" style="text-align: center;">
                                    <h5>Kolejny sukces!!!</h5>
                                </div>
                                <div style="text-align: center;" class="card-body">
                                    <div class="row">
                                        <div class="col-md-10"></div>
                                        <div class="col-md-2">
                                            <p>data publikacji: 22.02.2021</p>
                                        </div>
                                    </div>
                                    <p> Kolejni nasi kursanci dołączyli do grona szczęliwych posiadaczy prawa jazdy. 5/5 BRAWO !!!!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="card-body">
                            <div class="card card-default">
                                <div class="card-header bg-warning" style="text-align: center;">
                                    <h5>Urodziny Staszka</h5>
                                </div>
                                <div style="text-align: center;" class="card-body">
                                    <div class="row">
                                        <div class="col-md-10"></div>
                                        <div class="col-md-2">
                                            <p>data publikacji: 22.02.2021</p>
                                        </div>
                                    </div>
                                    <p> Jak wiecie (albo i nie) nasz kolega Staszek świetuje w tym roku swoje 50 rodziny. Serdecznie
                                        zapraszamy do wspólnego świętowania w poniedziałek po 18 w naszym biurze ;)</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- modal content -->
        <div class="modal fade" id="add-notice">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header bg-primary">
                        <h4 class="modal-title">Nowe ogłoszenie</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Początek publikacji:</p>
                            </div>
                            <div class="col-sm-8">
                                <div class="input-group date" id="startNotice" data-target-input="nearest">
                                    <input type="text" class="form-control datetimepicker-input" data-target="#startNotice"
                                           name="startNotice">
                                    <div class="input-group-append" data-target="#startNotice"
                                         data-toggle="datetimepicker">
                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Koniec publikacji:</p>
                            </div>
                            <div class="col-sm-8">
                                <div class="input-group date" id="endNotice" data-target-input="nearest">
                                    <input type="text" class="form-control datetimepicker-input" data-target="#endNotice"
                                           name="endNotice">
                                    <div class="input-group-append" data-target="#endNotice"
                                         data-toggle="datetimepicker">
                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Rodzaj ogłoszenia:</p>
                            </div>
                            <div class="col-sm-8">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="radio1">
                                    <label class="form-check-label text-danger">alert</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="radio1">
                                    <label class="form-check-label text-info">informacja</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="radio1">
                                    <label class="form-check-label text-success">sukces</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="radio1">
                                    <label class="form-check-label text-warning">tylko dla pracowników</label>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Tytuł:</p>
                            </div>
                            <div class="col-sm-8"><input type="text" class="form-control"></div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-sm-4">
                                <p>Tekst:</p>
                            </div>
                            <div class="col-sm-8"><textarea class="form-control" rows="4"></textarea></div>

                        </div>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Anuluj</button>
                        <button type="button" class="btn btn-primary">Zapisz</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
    <!-- /.content-wrapper -->
    <!--    footer    -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!--    /.footer    -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>
</body>
</html>
