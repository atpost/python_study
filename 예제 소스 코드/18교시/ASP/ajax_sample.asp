<%@ Language=VBScript %>
 
<script>
function getMenu() {
   var xhttp;
   // ����ڰ� �Է��� ���� id �� ���� �����ɴϴ�.
   var menuNo = document.getElementById("menuNo").value;
   
   // ���ο� ajax ��û�� ����ϴ�.
   xhttp = new XMLHttpRequest();
   // ��û�� ���� ������ �������� �ö����� ��ٷ���, 
   xhttp.onreadystatechange = function() {
      if (xhttp.readyState == 4 && xhttp.status == 200) {
         // span �±׳��� �������� �� �ؽ�Ʈ ���� ��¦ ���� �ֽ��ϴ�.
         document.getElementById("menuName").innerHTML = xhttp.responseText;
      }
   }
   // ���� ��û�ϴ� �������� ajax_sub.asp ������ �̰�, get ���ڷ� no �� ����ڰ� �Է��� ���� �ֽ��ϴ�.
   xhttp.open("GET", "ajax_sub.asp?no="+menuNo, true);
   xhttp.send();
}
</script>
 
<html>
   <head>
      <title>ajax ����</title>
   </head>
<body>
   <table>
      <tr>    
         <td> �޴� ��ȣ: </td>
         <!-- ����ڰ� �Է��ϴ� �� -->
         <td width=120> <INPUT id="menuNo" size="10" type="text" value=""> </td>    
           <td width=200> 
               <!-- ��ư�� ������ getMenu �Լ��� ���� �մϴ� -->
               <input type="button" value="�ش�Ǵ� �޴� ã��" onclick="getMenu()">
               <!-- ���߿� ���� ���� ���� ���� span �±�. ÷���� �ƹ� ���뵵 �����ϴ� -->
               : <span id="menuName"></span>
           </td>
         </tr>
   </table>         
</body>
</html>
