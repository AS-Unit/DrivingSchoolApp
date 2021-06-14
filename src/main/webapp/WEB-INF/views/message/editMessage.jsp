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
              <h4 class="m-0 text-dark">Ogłoszenie</h4>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
    </div>
    <!-- /.content-header -->

    <form method="post" action='<c:url value="/messages/editMessage/${message.id}"/> '>
      <!-- Main content -->
      <div class="card-header">
        <div class="container-fluid">
          <div class="row mb-4">
            <div class="col-md-4">
              <div class="row">
                <div class="col-sm-4">
                  <p>Data ropoczęcia:</p>
                </div>
                <div class="col-sm-6">
                  <div class="input-group date" id="startMessage"
                       data-target-input="nearest">
                    <input type="text"
                           class="form-control datetimepicker-input"
                           data-target="#startMessage"
                           name="startMessageData"
                           value="${message.startMessageData}"/>
                    <div class="input-group-append"
                         data-target="#startMessage"
                         data-toggle="datetimepicker">
                      <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-sm-4">
                  <p>Data zakończenia:</p>
                </div>
                <div class="col-sm-6">
                  <div class="input-group date" id="endMessage"
                       data-target-input="nearest">
                    <input type="text"
                           class="form-control datetimepicker-input"
                           data-target="#endMessage"
                           name="endMessageData"
                           value="${message.endMessageData}"/>
                    <div class="input-group-append"
                         data-target="#endMessage"
                         data-toggle="datetimepicker">
                      <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-sm-4">
                  <p>Rodzaj ogłoszenia:</p>
                </div>
                <div class="col-sm-6">
                  <div class="container-fluid">
                    <div class="form-check">
                      <c:if test="${message.messageType == 'danger'}">
                        <input class="form-check-input" type="radio" id="alertMessage"
                               name="messageType" value="danger" checked>
                      </c:if>
                      <c:if test="${message.messageType != 'danger'}">
                        <input class="form-check-input" type="radio" id="alertMessage"
                               name="messageType" value="danger">
                      </c:if>
                      <label class="form-check-label text-danger" for="alertMessage">alert</label>
                    </div>
                    <div class="form-check mt-2">
                      <c:if test="${message.messageType == 'info'}">
                        <input class="form-check-input" type="radio" id="infoMessage"
                               name="messageType" value="info" checked>
                      </c:if>
                      <c:if test="${message.messageType != 'info'}">
                        <input class="form-check-input" type="radio" id="infoMessage"
                               name="messageType" value="info">
                      </c:if>
                      <label for="infoMessage" class="form-check-label text-info">informacja</label>
                    </div>
                    <div class="form-check mt-2">
                      <c:if test="${message.messageType == 'success'}">
                        <input class="form-check-input" type="radio" id="successMessage"
                               name="messageType" value="success" checked>
                      </c:if>
                      <c:if test="${message.messageType != 'success'}">
                        <input class="form-check-input" type="radio" id="successMessage"
                               name="messageType" value="success">
                      </c:if>
                      <label for="successMessage" class="form-check-label text-success">sukces</label>
                    </div>
                    <div class="form-check mt-2">
                      <c:if test="${message.messageType == 'warning'}">
                        <input class="form-check-input" type="radio" id="employeeMessage"
                               name="messageType" value="warning" checked>
                      </c:if>
                      <c:if test="${message.messageType != 'warning'}">
                        <input class="form-check-input" type="radio" id="employeeMessage"
                               name="messageType" value="warning">
                      </c:if>
                      <label for="employeeMessage" class="form-check-label text-warning">tylko dla pracowników</label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-sm-4">
                  <p>Tytuł:</p>
                </div>
                <div class="col-sm-8">
                  <input type="text" class="form-control" placeholder="" id="messageTitle" name="messageTitle"
                         value="${message.messageTitle}">
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-sm-4">
                  <p>Tekst:</p>
                </div>
                <div class="col-sm-8">
                  <textarea class="form-control" rows="7" name="messageText"
                            id="messageText">${message.messageText}</textarea>
                </div>
              </div>
              <div class="row mt-3">
                <div class="col-sm-4">
                  <p>Widoczne</p>
                </div>
                <div class="col-sm-8">
                  <div class="form-check">
                    <c:if test="${message.isVisible == 'isVisible'}">
                      <input class="form-check-input" type="checkbox" name="isVisible" value="isVisible" id="isVisible"
                             checked>
                    </c:if>
                    <c:if test="${message.isVisible != 'isVisible'}">
                      <input class="form-check-input" type="checkbox" name="isVisible" value="isVisible" id="isVisible">
                    </c:if>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Buttons Cancel and Save -->
      <div class="card-body">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-3">
              <div class="row">
                <div class="col-sm-4">
                  <a href="/messages" class="btn btn-block btn-danger">Anuluj</a>
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
  <%@include file="/WEB-INF/views/dynamic/footer.jspf" %>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf" %>
</body>
</html>
