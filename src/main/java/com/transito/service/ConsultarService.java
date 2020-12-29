package com.transito.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.transito.conexion.Conexion;
import com.transito.modelo.Papeleta;

public class ConsultarService {
	private Conexion cn = new Conexion();
	private JdbcTemplate jdbc = new JdbcTemplate(cn.Conecta());
	
	public List<Papeleta> ReportePropietario(int anio) {
		String sql = "{call sp_reporte_propietario(?)}";

		List<Papeleta> lista = this.jdbc.query(sql , new RowPropietario() , anio);
		
		return lista;
	}
	
	public class RowPropietario implements RowMapper<Papeleta>{

		@Override
		public Papeleta mapRow(ResultSet rs, int rowNum) throws SQLException {
			Papeleta p = new Papeleta();
			p.setPlaca(rs.getString(1));
			p.setPropietario(rs.getString(2));
			p.setCantidad(rs.getInt(3));
			p.setMontoTotal(rs.getDouble(4));
			return p;
		}
		
	}

	public List<Papeleta> ReporteMes(int anio) {
		String sql = "{call sp_reporte_mes(?)}";

		List<Papeleta> lista = this.jdbc.query(sql , new RowPapeleta() , anio);
		
		return lista;
	}
	
	public class RowPapeleta implements RowMapper<Papeleta>{

		@Override
		public Papeleta mapRow(ResultSet rs, int rowNum) throws SQLException {
			Papeleta p = new Papeleta();
			p.setNroMes(rs.getInt(1));
			p.setNomMes(rs.getString(2));
			p.setCantidad(rs.getInt(3));
			p.setMontoTotal(rs.getDouble(4));
			return p;
		}
		
	}

}
