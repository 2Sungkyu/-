<%@ page contentType="text/html;charset=euc-kr" session="true"%>
<%
//     if (application.getAttribute("Counter") != null) {
//         String strCounter = String.valueOf(application.getAttribute("Counter"));
//         int counter = Integer.parseInt(strCounter) + 1;
//         // �������� ���ο� ������ �õ��ɶ� Session ��ü�� Counter�� 1�� ������Ų��.
//         application.setAttribute("Counter", counter);
//     } else {
//         application.setAttribute("Counter", 1);
//     }

%>
 
<HTML>
<HEAD>
<TITLE>Exercise 4_1</TITLE>
 
 
</HEAD>
<BODY>
     
    �湮�ڼ� : <%=application.getAttribute("Counter")%>
 
    <a href="#"> ���ΰ�ħ </a>
</BODY>
</HTML>