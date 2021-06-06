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
                            <div class="col md-2">
                                <button type="button" class="btn btn-default" data-toggle="modal"
                                        data-target="#add-message">dodaj ogłoszenie
                                </button>
                            </div>
                        </div>
                    </div>
                    <c:forEach items="${message}" var="message" varStatus="loop" begin="0">
                        <div class="row">
                            <div class="card-body">
                                <div class="card card-default">
                                    <div class="card-header bg-${message.messageType} message"
                                         data-message-number="${loop.count}">

                                        <div class="row">
                                            <div class="col-md-2"></div>
                                            <div class="col-md-8" style="text-align: center">
                                                <h5>${message.messageTitle}</h5></div>
                                            <div class="col-md-2" style="text-align: center">
                                                <a href=""
                                                   id="edit${loop.count}"
                                                   data-message-id="${message.id}"
                                                   data-start="${message.startMessageData}"
                                                   data-end="${message.endMessageData}"
                                                   data-type="${message.messageType}"
                                                   data-title="${message.messageTitle}"
                                                   data-text="${message.messageText}"
                                                   class="btn  bg-gradient-white"
                                                   style="display:none; width: 45px"
                                                   data-toggle="modal"
                                                   data-target="#editMessage"
                                                ><i class="fas fa-edit"></i></a>
                                                <a href="<c:url value="/index/delete/${message.id}"/>"
                                                   id="delete${loop.count}"
                                                   style="display: none; width: 45px"
                                                   class="btn bg-gradient-white"
                                                   data-toggle="modal"
                                                   data-target="#deleteModal"
                                                ><i class="fas fa-trash-alt"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="text-align: center;" class="card-body">
                                        <div class="row">
                                            <div class="col-md-10"></div>
                                            <div class="col-md-2">
                                                <p>data publikacji: ${message.startMessageData}</p>
                                            </div>
                                        </div>
                                        <h6>${message.messageText}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <%--add message modal--%>
        <!-- modal content -->
        <form method="post" action='<c:url value="/index"/>'>
            <div class="modal fade" id="add-message">
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
                                    <div class="input-group date" id="startMessage" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input"
                                               data-target="#startMessage"
                                               name="startMessageData">
                                        <div class="input-group-append" data-target="#startMessage"
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
                                    <div class="input-group date" id="endMessage" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input"
                                               data-target="#endMessage"
                                               name="endMessageData">
                                        <div class="input-group-append" data-target="#endMessage"
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
                                        <input class="form-check-input" type="radio" name="messageType" id="danger"
                                               value="danger">
                                        <label for="danger" class="form-check-label text-danger">alert</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="messageType" id="info"
                                               value="info">
                                        <label for="info" class="form-check-label text-info">informacja</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="messageType" id="success"
                                               value="success">
                                        <label for="success" class="form-check-label text-success">sukces</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="messageType" id="warning"
                                               value="warning">
                                        <label for="warning" class="form-check-label text-warning">tylko dla
                                            pracowników</label>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Tytuł:</p>
                                </div>
                                <div class="col-sm-8"><input type="text" class="form-control" name="messageTitle"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Tekst:</p>
                                </div>
                                <div class="col-sm-8"><textarea class="form-control" rows="4"
                                                                name="messageText"></textarea></div>

                            </div>
                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Anuluj</button>
                            <button type="submit" class="btn btn-primary">Zapisz</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
        </form>
        <!-- /.modal-content -->
        <%--        edit modal show--%>
        <form method="post" action='<c:url value="/index"/>'>

            <div class="modal fade" id="editMessage">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header bg-primary">
                            <h4 class="modal-title">Nowe ogłoszenie</h4>
                            <input type="number" name="id" id="messageId" hidden>
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
                                    <div class="input-group date" id="editStartMessage" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input"
                                               data-target="#editStartMessage"
                                               name="startMessageData" id="startDataMessage">
                                        <div class="input-group-append" data-target="#editStartMessage"
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
                                    <div class="input-group date" id="editEndMessage" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input"
                                               data-target="#editEndMessage"
                                               name="endMessageData" id="editDataMessage">
                                        <div class="input-group-append" data-target="#editEndMessage"
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
                                        <input class="form-check-input" type="radio" name="messageType" id="edit-danger"
                                               value="danger">
                                        <label for="edit-danger" class="form-check-label text-danger">alert</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="messageType" id="edit-info"
                                               value="info">
                                        <label for="info" class="form-check-label text-info">informacja</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="messageType"
                                               id="edit-success"
                                               value="success">
                                        <label for="success" class="form-check-label text-success">sukces</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="messageType"
                                               id="edit-warning"
                                               value="warning">
                                        <label for="warning" class="form-check-label text-warning">tylko dla
                                            pracowników</label>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Tytuł:</p>
                                </div>
                                <div class="col-sm-8"><input type="text" class="form-control" name="messageTitle"
                                                             id="editMessageTitle"></div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-4">
                                    <p>Tekst:</p>
                                </div>
                                <div class="col-sm-8"><textarea class="form-control" rows="4"
                                                                name="messageText" id="messageText"></textarea></div>

                            </div>
                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Anuluj</button>
                            <button class="btn btn-danger" type="submit">Zapisz</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
        </form>
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
<script>
    <%--show and hide button in message and get edit message--%>
    $('.message').mouseenter(function () {
        const deleteNumber = $('#delete' + $(this).attr('data-message-number'))
        const editNumber = $('#edit' + $(this).attr('data-message-number'))
        $(editNumber).fadeIn(500)
        $(deleteNumber).fadeIn(500)
        $(deleteNumber).on('click', function (event) {
            event.preventDefault();
            const href = $(this).attr('href');
            $('#deleteModal #delRef').attr('href', href);
            $('#deleteModal').modal();
        });
        $(editNumber).on('click', function (event) {
            event.preventDefault();
            const type = editNumber.attr("data-type")
            $('#messageId').attr('value', editNumber.attr("data-message-id"))
            $('#startDataMessage').attr('value', editNumber.attr("data-start"))
            $('#editDataMessage').attr('value', editNumber.attr("data-end"))
            $('#editMessageTitle').attr('value', editNumber.attr("data-title"))
            $('#messageText').val(editNumber.attr("data-text"))
            $('#edit-' + type).attr("checked", "true")

        });
    })
    $('.message').mouseleave(function () {
        const messageNumber = $(this).attr('data-message-number')
        $('#edit' + messageNumber).fadeOut(500)
        $('#delete' + messageNumber).fadeOut(500)

    })
</script>
</body>
</html>
