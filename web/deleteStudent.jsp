

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <!-- Javascript -->
        <script src="js/admin.js"></script>

        <!-- external css -->
        <link rel="stylesheet" href="css/styles.css">
        
        <!-- For logout button -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <style>
            h5{
                color:red;
            }
            p{
                color:red;
            }
            h6{
                color:#c42bcf;
            }
            table, th, td {
                border: 2px solid black;
            }

            .delete-td{
                padding:10px;
            }
            .delete-th{
                text-align: center;
                padding : 5px;
            }
            .border-r{
                border:none;
            }
        </style>
        <title>Attendance Portal</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
        %>

        <%
            if (session.getAttribute("emailID") == null) {
                response.sendRedirect("admin.jsp");
            }

        %>
        <center>
        <table class="border-r">
            <tr>
                <td class="border-r">
                    <!-- Faculty-->
                    <button style="margin-left: 5px;" type="button" class="btn btn-primary" onclick="openPage('addFaculty.jsp')">Add Faculty</button><!-- add faculty -->
                </td>
                <td class="border-r">
                    <button style="margin-left: 5px;" type="button" class="btn btn-primary" onclick="openPage('deleteFaculty.jsp')">Delete Faculty</button><!-- delete faculty -->
                </td>
                <td class="border-r">
                    <button style="margin-left: 5px;" type="button" class="btn btn-primary" onclick="openPage('editFaculty.jsp')">Edit Faculty</button><!-- edit faculty -->
                </td>
                <td class="border-r">
                    <!-- Student -->
                    <button style="margin-left: 5px;" type="button" class="btn btn-primary" onclick="openPage('addStudent.jsp')">Add Student</button><!-- add student -->
                </td>
                <td class="border-r">
                    <button style="margin-left: 5px;" type="button" class="btn btn-primary" onclick="openPage('deleteStudent.jsp')">Delete Student</button><!-- delete student -->
                </td>
                <td class="border-r">
                    <button style="margin-left: 5px;" type="button" class="btn btn-primary" onclick="openPage('editStudent.jsp')">Edit Student</button><!-- edit student -->
                </td>
                <td class="border-r">
                    <form action="AdminLogout" method="post">
                        <button style="margin-left: 5px;" type="submit" class="btn btn-danger ">
                            <span class="glyphicon glyphicon-log-out"></span> Log out
                        </button>
                    </form>
                </td>
            </tr>
        </table>
    </center>

        <!-- main part of edit faculty -->
        <br>
        <br>

    <center>
        <h3>To delete student details, enter student's roll number below.</h3>
    </center>
    <div class="container">
        <form action="DeleteStudent" method="post">
            <div class="row height d-flex justify-content-center align-items-center">

                <div class="col-md-8">

                    <div class="search">
                        <i class="fa fa-search"></i>
                        <input type="text" class="form-control" placeholder="Enter Roll number to search" name="search_facultyid">
                        <br>
                        <button class="btn btn-primary">Search</button>
                    </div>

                </div>

            </div>
    </div>
</form>
</body>
</html>
