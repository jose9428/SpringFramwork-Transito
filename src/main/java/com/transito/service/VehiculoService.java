package com.transito.service;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;


import com.transito.conexion.Conexion;

public class VehiculoService {

	private Conexion cn = new Conexion();
	private JdbcTemplate jdbc = new JdbcTemplate(cn.Conecta());

	public List ListaVehiculos() {
		String sql = "select * from VEHICULO";
		
		List lista = this.jdbc.queryForList(sql);
		
		return lista;
	}

	public String NombrePropietario(String nroVehiculo) {
		String sql = "select NOMPRO from vehiculo where NROPLA = ?";
		return this.jdbc.queryForObject(sql, String.class , nroVehiculo);
	}
	
	public List ListaPapeletas(String nroVehiculo) {
		String sql = "select NROPAP , infdes , INFIMP , PAPFECHA "
				+ "from infraccion f inner join PAPELETA p on p.INFCOD = f.INFCOD "
				+ "where NROPLA = ?";
		
		List lista = this.jdbc.queryForList(sql , nroVehiculo);
		
		return lista;
	}
}
