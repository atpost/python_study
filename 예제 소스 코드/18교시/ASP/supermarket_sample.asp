<%@ Language=VBScript %>
 
<%
   ' ���� ���ڿ��� ���� �մϴ�.
   strMyTest = "Provider=SQLOLEDB; Data Source=localhost; Initial Catalog=mytest; User Id=pyuser; Password=test1234"
   Set objConn = Server.CreateObject("ADODB.Connection")
   objConn.Open strMyTest 
 
   ' ������ SQL ���� ���� �մϴ�.
   strSQL = "select itemno, category, foodname, company, price from supermarket s(nolock)"
 
    ' ���� ���� �Ͽ� ��� ���ɴϴ�.
   Set rtnRow = objConn.Execute(strSQL)
%>
 
 
<html>
   <head>
      <title>supermarket</title>
   </head>
 
   <body>       
      <p>supermarket ��ǰ</p>
      <table border=1>
         <tr>
            <td>��ȣ</td>
            <td>ī�װ�</td>
            <td>����</td>
            <td>��ǰ�̸�</td>
            <td>����</td>       
         </tr>    
 
<%
   'DB ���� ��ȸ�� ���� ���� �ƴ϶�� ������ �����鼭 �� �÷��� <td> �±׾ȿ� ���� �ֽ��ϴ�.
   Do while Not rtnRow.EOF 
%>
 
         <tr>
            <td><%=rtnRow("itemno")%></td>
            <td><%=rtnRow("category")%></td>
            <td><%=rtnRow("foodname")%></td>
            <td><%=rtnRow("company")%></td>
            <td><%=rtnRow("price")%></td>
         </tr>
                        
<%
   'rsList�� ������ ���� ��� ������ �̵��ϸ� Do ���� �ݺ��մϴ�.
   rtnRow.MoveNext
   Loop
%>
 
      </table>
</body>          
 
<%
   '������ ���� �ݽ��ϴ�.
   objConn.Close
   Set objConn=Nothing
%>
