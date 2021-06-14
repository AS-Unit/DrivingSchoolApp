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


        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-warning">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-3">
                                        <h4><i class="nav-icon fas fa-bullhorn"></i>
                                            Ogłoszenia</h4>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <a href='<c:url value="/messages/addNewMessage"/>'
                                               class="btn btn-block btn-primary btn-lg">Dodaj ogłoszenie <i
                                                    class="nav-icon fas fa-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-header">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <h5>Pokaż
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default">10</button>
                                                    <button type="button"
                                                            class="btn btn-default dropdown-toggle dropdown-icon"
                                                            data-toggle="dropdown">
                                                        <div class="dropdown-menu" role="menu">
                                                            <a class="dropdown-item" href="#">20</a>
                                                            <a class="dropdown-item" href="#">30</a>
                                                            <a class="dropdown-item" href="#">40</a>
                                                        </div>
                                                    </button>
                                                </div>
                                                pozycji
                                            </h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th style="width: 10px">#</th>
                                            <th>Rodzaj</th>
                                            <th>Data rozpoczęcia</th>
                                            <th>Data zakończenia</th>
                                            <th>Tytuł</th>
                                            <th>Treść</th>
                                            <th>Użytkownik</th>
                                            <th>Status</th>
                                            <th style="width: 130px"></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach begin="0" step="1" end="10" items="${message}" var="message"
                                                   varStatus="loop">
                                            <td>${loop.count}</td>
                                            <c:if test="${message.messageType == 'danger'}">
                                                <td>Alert</td>
                                            </c:if>
                                            <c:if test="${message.messageType == 'info'}">
                                                <td>Informacja</td>
                                            </c:if>
                                            <c:if test="${message.messageType == 'success'}">
                                                <td>Sukces</td>
                                            </c:if>
                                            <c:if test="${message.messageType == 'warning'}">
                                                <td>Tylko dla pracowników</td>
                                            </c:if>
                                            <td>${message.startMessageData}</td>
                                            <td>${message.endMessageData}</td>
                                            <td>${message.messageTitle}</td>
                                            <td>${message.messageText}</td>
                                            <td>Użytkownik</td>
                                            <c:if test="${message.isVisible == 'isVisible'}">
                                                <td>widoczne</td>
                                            </c:if>
                                            <c:if test="${message.isVisible != 'isVisible'}">
                                                <td>ukryte</td>
                                            </c:if>
                                            <td>
                                                <!--edit buton -->
                                                <a href='<c:url value="/messages/editMessage/${message.id}"/>'
                                                   class="btn btn-success bg-gradient-primary"
                                                   style="width: 50px"><i class="fas fa-edit"></i></a>
                                                <!-- delete buton -->
                                                <a href="/messages/delete/${message.id}"
                                                   class="btn btn-success bg-gradient-danger"
                                                   style="width: 45px"
                                                   data-toggle="modal"
                                                   data-target="#deleteModal"
                                                   id="deleteButton">
                                                    <i class="fas fa-trash-alt"></i></a>
                                            </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    <!-- modal content add message -->
                                    <form method="post" action='<c:url value="/addMessages"/>'>
                                        <div class="modal fade" id="add-message">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header bg-primary">
                                                        <h4 class="modal-title">Nowe ogłoszenie</h4>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-sm-4">
                                                                <p>Początek publikacji:</p>
                                                            </div>
                                                            <div class="col-sm-8">
                                                                <div class="input-group date" id="startMessage"
                                                                     data-target-input="nearest">
                                                                    <input type="text"
                                                                           class="form-control datetimepicker-input"
                                                                           data-target="#startMessage"
                                                                           name="startMessageData">
                                                                    <div class="input-group-append"
                                                                         data-target="#startMessage"
                                                                         data-toggle="datetimepicker">
                                                                        <div class="input-group-text"><i
                                                                                class="fa fa-calendar"></i></div>
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
                                                                <div class="input-group date" id="endMessage"
                                                                     data-target-input="nearest">
                                                                    <input type="text"
                                                                           class="form-control datetimepicker-input"
                                                                           data-target="#endMessage"
                                                                           name="endMessageData">
                                                                    <div class="input-group-append"
                                                                         data-target="#endMessage"
                                                                         data-toggle="datetimepicker">
                                                                        <div class="input-group-text"><i
                                                                                class="fa fa-calendar"></i></div>
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
                                                                    <input class="form-check-input" type="radio"
                                                                           name="messageType" id="danger"
                                                                           value="danger">
                                                                    <label for="danger"
                                                                           class="form-check-label text-danger">alert</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio"
                                                                           name="messageType" id="info"
                                                                           value="info">
                                                                    <label for="info"
                                                                           class="form-check-label text-info">informacja</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio"
                                                                           name="messageType" id="success"
                                                                           value="success">
                                                                    <label for="success"
                                                                           class="form-check-label text-success">sukces</label>
                                                                </div>
                                                                <div class="form-check">
                                                                    <input class="form-check-input" type="radio"
                                                                           name="messageType" id="warning"
                                                                           value="warning">
                                                                    <label for="warning"
                                                                           class="form-check-label text-warning">tylko
                                                                        dla
                                                                        pracowników</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <br>
                                                        <div class="row">
                                                            <div class="col-sm-4">
                                                                <p>Tytuł:</p>
                                                            </div>
                                                            <div class="col-sm-8"><input type="text"
                                                                                         class="form-control"
                                                                                         name="messageTitle"></div>
                                                        </div>
                                                        <br>
                                                        <div class="row">
                                                            <div class="col-sm-4">
                                                                <p>Tekst:</p>
                                                            </div>
                                                            <div class="col-sm-8"><textarea class="form-control"
                                                                                            rows="4"
                                                                                            name="messageText"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer justify-content-between">
                                                        <button type="button" class="btn btn-default"
                                                                data-dismiss="modal">Anuluj
                                                        </button>
                                                        <button type="submit" class="btn btn-primary">Zapisz</button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                    </form>
                                    <!-- /.modal-content -->
                                    <%--       delete modal--%>
                                    <div class="modal fade" id="deleteModal">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Usuwanie wiadomości</h4>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Czy rzeczywiście chcesz usunąć wiadomość?</p>
                                                </div>
                                                <div class="modal-footer justify-content-between">
                                                    <button type="button" class="btn btn-success" data-dismiss="modal">
                                                        zamknij
                                                    </button>
                                                    <a href="" class="btn btn-danger" id="delRef">Usuń</a>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal-dialog -->

                                    <div class="card-footer clearfix">
                                        <ul class="pagination pagination-sm m-0 float-right">
                                            <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!--    footer    -->
    <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
    <!--    /.footer    -->
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>

</body>
</html>
