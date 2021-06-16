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
                        </div>
                    </div>
                    <c:forEach items="${message}" var="message" varStatus="loop" begin="0">
                        <div class="row">
                            <div class="card-body">
                                <div class="card card-default">
                                    <div class="card-header bg-${message.messageType} message">
                                        <div class="row">
                                            <div class="col-md-2"></div>
                                            <div class="col-md-8" style="text-align: center">
                                                <h5>${message.messageTitle}</h5></div>
                                            <div class="col-md-2" style="text-align: center">
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
            $('#messageId').attr(10655
            ', editNumber.attr("data-message-id"))
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
