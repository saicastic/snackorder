package com.snackorder.dao;

import com.snackorder.db.DatabaseConnection;
import com.snackorder.model.Item;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ItemDAO {
    public static List<Item> getAllItems() {
        List<Item> items = new ArrayList<>();
        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM items")) {

            while (rs.next()) {
                items.add(new Item(rs.getInt("id"), rs.getString("name"), rs.getDouble("price")));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return items;
    }
}
