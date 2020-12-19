package com.duoc.spring;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.duoc.spring.model.Rol;
import com.duoc.spring.repository.IRolRepository;

@SpringBootTest
class VerdureriaApplicationTests {

	@Autowired
	private IRolRepository repoR;
	
	@Test
	void contextLoads() {
		Rol r = new Rol();
		r.setId(1);
		r.setNombre("ADMIN");
		repoR.save(r);
		Rol r2 = new Rol();
		r2.setId(2);
		r2.setNombre("CLIENTE");
		repoR.save(r2);
	}

}
