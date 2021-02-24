<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Strona głowna</h1>
                        </div><!-- /.col -->

                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">

                </div><!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
<!--    footer    -->
<%@include file="/WEB-INF/views/dynamic/footer.jspf"%>
        <!--    /.footer    -->
    </div>
    <!-- ./wrapper -->

<%@include file="/WEB-INF/views/dynamic/js.jspf"%>
</body></html>
