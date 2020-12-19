package com.duoc.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.duoc.spring.model.Producto;

public interface IProductoRepository extends JpaRepository<Producto, Integer> {

}
