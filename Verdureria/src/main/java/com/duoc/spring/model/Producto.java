package com.duoc.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Producto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Size(min = 1, message = " Nombre Requerido")
	@Size(max = 50, message = " Máximo 50 caracteres") 
	@NotNull(message = "ingrese nombre")
	@Column(name = "nombre", length = 50, nullable = false)
	private String nombre;
	
	@Min(value=1, message = "ingrese cantidad válida.")
	@Max(value =99999999, message = "ingrese cantidad válida.")
	@NotNull(message = "ingrese stock")
	@Column(name = "stock", length = 50, nullable = false)
	private int stock;
	
	@Min(value=1, message = "ingrese cantidad válida.")
	@Max(value =99999999, message = "ingrese cantidad válida.")
	@NotNull(message = "ingrese precio")
	@Column(name = "precio", length = 50, nullable = false)
	private int precio;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the nombre
	 */
	public String getNombre() {
		return nombre;
	}

	/**
	 * @param nombre the nombre to set
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	/**
	 * @return the stock
	 */
	public int getStock() {
		return stock;
	}

	/**
	 * @param stock the stock to set
	 */
	public void setStock(int stock) {
		this.stock = stock;
	}

	/**
	 * @return the precio
	 */
	public int getPrecio() {
		return precio;
	}

	/**
	 * @param precio the precio to set
	 */
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	
	
}
