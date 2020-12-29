package com.transito.modelo;

public class Papeleta {
	String placa;
	String propietario;
	int nroMes;
	String NomMes;
	int cantidad;
	double montoTotal;
	
	public int getNroMes() {
		return nroMes;
	}
	public void setNroMes(int nroMes) {
		this.nroMes = nroMes;
	}
	public String getNomMes() {
		return NomMes;
	}
	public void setNomMes(String nomMes) {
		NomMes = nomMes;
	}
	public double getMontoTotal() {
		return montoTotal;
	}
	public void setMontoTotal(double montoTotal) {
		this.montoTotal = montoTotal;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	public String getPropietario() {
		return propietario;
	}
	public void setPropietario(String propietario) {
		this.propietario = propietario;
	}
	
	
	
}
