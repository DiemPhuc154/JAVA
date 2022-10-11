<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h2>Number Guess</h2>
<form action="http://localhost:8083/number_guess/home-page" method="get">
    <div class="container">
        <label for="uname"><b>Choose a number 1-1000</b></label>
        <br>
        <input type="number" name="number" required>

        <button type="submit">Guess</button>
        <br>



        <% String errormess = (String) request.getAttribute("errormess");
        {%>

                    <h3 style="color:red">
                       <%=errormess%>
                    </h3>
        <%}
                    %>


      </div>
  </form>
</body>
</html>
