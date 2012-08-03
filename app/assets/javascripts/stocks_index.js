$(function() {
    $('#stocks_search').bind("ajax:success", function(event, data) {
      var tbl_body = "";
      $.each(data, function() {
          var tbl_row = "";
          $.each(this, function(k , v) {
              tbl_row += "<td>"+v+"</td>";
          })
          tbl_body += "<tr>"+tbl_row+"</tr>";                 
      })
      $("#stocks_content").html(tbl_body);
      $("#paginator").html('<%= escape_javascript(paginate(@users).to_s) %>');
      $("#stocks").html('<%= escape_javascript(render 'edit') %>');
      alert('hah');
    });
});
