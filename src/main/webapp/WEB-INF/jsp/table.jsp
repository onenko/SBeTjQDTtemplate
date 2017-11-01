<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
  <head>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
    <!-- link rel="stylesheet" type="text/css" href="DataTables/datatables.min.css"/> -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <!-- script type="text/javascript" src="DataTables/datatables.min.js"></script> -->
    <script type="text/javascript" src="static/nan-helper.js"></script>
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
              { data: "date", render: function ( data, type, row ) { return Ms2YYYYMMDD(data * 24000 * 3600); } },
              { data: "dateTimeMs", render: function ( data, type, row ) { return Ms2YYYYMMDDhhmmssttt(data); } },
              { data: "realNum" },
              { data: "enumData" }
          ]
      } );
    } );
  </script>

</html>
