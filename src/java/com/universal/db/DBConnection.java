/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.universal.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author root
 */
public class DBConnection implements DBProperties {

    static Connection conn = null;

    private DBConnection() {

    }

    public static Connection getConnection() {

        if (conn == null) {
            try {
                Class.forName(DRIVER);
                conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return conn;
    }
}
