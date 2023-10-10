<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Addition Quiz</title>
</head>
<body>
    <h1>Addition Quiz</h1>

    <form action="quizResult.jsp" method="post">
        <%@ page import="java.util.Random" %>
        <table>
            <% 
               int numQuestions = 5; // Number of questions
               Random random = new Random();
               
               for (int i = 1; i <= numQuestions; i++) {
                   int num1 = random.nextInt(10); // Random number between 0 and 9
                   int num2 = random.nextInt(10);
                   int sum = num1 + num2;
            %>
                   <tr>
                       <td><%= num1 %> + <%= num2 %> = </td>
                       <td><input type="number" name="answer<%= i %>" required></td>
                       <input type="hidden" name="sum<%= i %>" value="<%= sum %>">
                   </tr>
            <%
               }
            %>
        </table>
        <br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
