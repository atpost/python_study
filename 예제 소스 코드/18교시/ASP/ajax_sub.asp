<%@ Language=VBScript %>
 
<%
    ' request ���� �޽��ϴ�.
   menuNo = request("no")
    
   ' �Ѿ�� �޴� ��ȣ�� �ش��ϴ� �޴��̸��� ��ȯ�� �ݴϴ�..
   Select Case menuNo
      Case 1
         Response.Write("pizza")
      Case 2
         Response.Write("pasta")
      Case Else
         Response.Write("drink")
   End Select
%>
