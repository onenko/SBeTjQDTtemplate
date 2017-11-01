<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
  <head>
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/>
    <script type="text/javascript" src="DataTables/datatables.min.js"></script>
  </head>

  <body>
    <h1>Table</h1>

    <table id="ourTable" class="display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th>numId</th>
          <th>strId</th>
          <th>date</th>
          <th>dateTimeMs</th>
          <th>realNum</th>
          <th>enumData</th>
        </tr>
      </thead>
      <tfoot>
        <tr>
          <th>numId</th>
          <th>strId</th>
          <th>date</th>
          <th>dateTimeMs</th>
          <th>realNum</th>
          <th>enumData</th>
        </tr>
      </tfoot>
    </table>
  </body>

  <script>
    $(document).ready(function() {
      $('#ourTable').DataTable( {
          ajax: "/ajaxForTable",
          columns: [
              { data: "numId" },
              { data: "strId" },
              { data: "date" },
              { data: "dateTimeMs" },
              { data: "realNum" },
              { data: "enumData" }
          ]
      } );
    } );
  </script>

</html>
