package com.duoc.spring.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.duoc.spring.model.Producto;
import com.duoc.spring.model.Rol;
import com.duoc.spring.model.Usuario;
import com.duoc.spring.repository.IProductoRepository;
import com.duoc.spring.repository.IRolRepository;
import com.duoc.spring.repository.IUsuarioRepository;

@Controller
public class VerduController {
	
	@ModelAttribute("producto")
	public Producto setProducto() {
		return new Producto();
	}
	
	@ModelAttribute("usuario")
	public Usuario setUsuario() {
		return new Usuario();
	}
	
	@ModelAttribute("rol")
	public Rol setRol() {
		return new Rol();
	}
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	@Autowired
	private IProductoRepository repoP;
	@Autowired
	private IUsuarioRepository repoU;
	@Autowired
	private IRolRepository repoR;
	
	@GetMapping("/")
	public String getIndex() {
		return "index";
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/registrar")
	public String registrar(Model model, Authentication auth) {
		model.addAttribute("roles", repoR.findAll());
		if(auth == null) {
			return "registro";
		} else if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN")))
		{
			return "registroB";
		} else {
			return "registro";
		}
	}
	
	@PostMapping("/agregarUsuario")
	public String agregarUsuario(@Valid @ModelAttribute("usuario")Usuario u, BindingResult br, Model model, Authentication auth) {
		if(br.hasErrors()) {
			model.addAttribute("roles", repoR.findAll());
			return "registro";
		} else {
			u.setPassword(encoder.encode(u.getPassword()));
			repoU.save(u);
			if(auth == null) {
				return "confirmacionB";
			} else {
				return "confirmacion";
			}
		}
	}
	
	@GetMapping("/listar")
	public String getVer(Authentication auth, String id, Model model) {
		return listar(model, auth);
	}
	
	@PostMapping("/agregarProducto")
	public String agregar() {
		return "agregarProducto";
	}
	
	@PostMapping("/ingresarProducto")
	public String agregarProducto(@Valid @ModelAttribute("producto")Producto p, BindingResult br, Model model, Authentication auth) {
		if(br.hasErrors()) {
			return "agregarProducto";
		} else {
			repoP.save(p);
			return "confirmacion";
		}
	}
	
	@PostMapping("/CargarProducto")
	public String cargarProducto(String id, Model model) {
		model.addAttribute("producto", repoP.getOne(Integer.parseInt(id)));
		return "modificar";
	}
	
	@PostMapping("/modificarProducto")
	public String modificarProducto(@Valid @ModelAttribute("producto")Producto p, BindingResult br, Model model, Authentication auth) {
		if(br.hasErrors()) {
			return "modificar";
		} else {
			repoP.save(p);
			model.addAttribute("productos", p);
			return "confirmacion";
		}
	}
	
	@PostMapping("/EliminarProducto")
	public String eliminarProducto(String id, Model model, Authentication auth) {
		repoP.deleteById(Integer.parseInt(id));
		return "confirmacion";
	}
	
	@GetMapping("verUsuario")
	public String verUsuarios(Authentication auth, Model model) {
		return listarUsuario(model);
	}
	
	@PostMapping("/CargarUsuario")
	public String cargarUsuario(String id, Model model) {
		model.addAttribute("roles", repoR.findAll());
		model.addAttribute("usuario",repoU.getOne(Integer.parseInt(id)));
		return "modificarUsuario";
	}
	
	@PostMapping("/modificarUsuario")
	public String modificarUsuario(@Valid @ModelAttribute("usuario")Usuario u, BindingResult br, Model model) {
		if(br.hasErrors()) {
			model.addAttribute("roles", repoR.findAll());
			return "modificarUsuario";
		} else {
			repoU.save(u);
			return "confirmacion";
		}
	}
	
	@PostMapping("/EliminarUsuario")
	public String eliminarUsuario(String id, Model model) {
		repoU.deleteById(Integer.parseInt(id));
		return "confirmacion";
	}
	
	private String listar(Model model, Authentication auth) {
		List<Producto> productos = repoP.findAll();
		model.addAttribute("productos", productos);
		if(auth.getAuthorities().contains(new SimpleGrantedAuthority("ADMIN"))) {
			return "verProductos";
		} else {
			return "verCliente";
		}
	}
	
	private String listarUsuario(Model model) {
		List<Usuario> usuarios = repoU.findAll();
		model.addAttribute("usuarios", usuarios);
		return "verUsuarios";
	}
}
