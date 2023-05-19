<html>
  <head>
     <script type="text/javascript">
function cube()
{
 var a=document.form1.t1.value;
 var b=a*a*a;
 document.form1.t3.value=c;
}
</script>
  </head>
  <body>
   <form name="form1">
    Enter a:<input type="text" name="t1">
    <br><br>
     Result:<input type="text" name="t3">
    <br><br>
    <input type="button" value="cube" onclick="cube()">
  </form>
</body>
</html>
