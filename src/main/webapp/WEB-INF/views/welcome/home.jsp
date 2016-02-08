<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Home</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-1.12.0.js"></script>
<script>
$(function() {
  var total_count;
      $.ajax({
        url: 'https://api.github.com/search/issues?q=5.1.0+team:terasolunaorg+type:issues',
        type: 'GET',
        dataType: 'json',
      }).success(function(data) {
        total_count = data.total_count;
        $('#total_count').html(total_count);
      });
});
</script>
</head>
<body>
    <div id="wrapper">
        <h1>Hello world!</h1>
        <p>The time on the server is ${serverTime}.</p>
    </div>
    <label>total_count:</label><div id="total_count"></div>
</body>
</html>
