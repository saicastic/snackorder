<%@ page import="com.snackorder.dao.ItemDAO, com.snackorder.model.Item" %>
<html>
  <head>
    <title>Food Order</title>
    <script src="js/script.js"></script>
  </head>
  <body>
    <h1>Food Order System</h1>
    <div class="menu">
      <% for (Item item : ItemDAO.getAllItems()) { %>
      <div class="item">
        <h3><%= item.getName() %></h3>
        <p>₹<%= item.getPrice() %></p>
        <button onclick="updateQuantity(<%= item.getId() %>, -1)">-</button>
        <span id="qty_<%= item.getId() %>">0</span>
        <button onclick="updateQuantity(<%= item.getId() %>, 1)">+</button>
      </div>
      <% } %>
    </div>
  </body>
</html>
