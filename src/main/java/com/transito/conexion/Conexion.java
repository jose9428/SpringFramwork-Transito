package com.transito.conexion;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    
    public DriverManagerDataSource Conecta() {
        DriverManagerDataSource data = new DriverManagerDataSource();
        data.setDriverClassName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        data.setUrl("jdbc:sqlserver://localhost:1433;databaseName=bdtransito");
        data.setUsername("sa");
        data.setPassword("castro");
        return data;
    }
}
