<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Quiz Result</title>
</head>
<body>
    <h1>Quiz Result</h1>

    <table>
        <%
            int numQuestions = 5; // Number of questions
            int correctAnswers = 0;

            for (int i = 1; i <= numQuestions; i++) {
                int userAnswer = Integer.parseInt(request.getParameter("answer" + i));
                int correctSum = Integer.parseInt(request.getParameter("sum" + i));

                // Check if the user's answer is correct
                boolean isCorrect = (userAnswer == correctSum);

                if (isCorrect) {
                    correctAnswers++;
                }
        %>
                <tr>
                    <td>Question <%= i %>:</td>
                    <td>Your Answer: <%= userAnswer %></td>
                    <td>Correct Answer: <%= correctSum %></td>
                    <td><%= isCorrect ? "Correct" : "Incorrect" %></td>
                </tr>
        <%
            }
        %>
    </table>

    <p>You answered <%= correctAnswers %> out of <%= numQuestions %> questions correctly.</p>
</body>
</html>
