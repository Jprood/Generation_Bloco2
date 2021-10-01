package br.org.generation.farmacia.controller;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.org.generation.farmacia.model.Produto;
import br.org.generation.farmacia.repository.ProdutoRepository;

@RestController
@RequestMapping("/produtos")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class ProdutoController {
	
	@Autowired
	private ProdutoRepository produtoRepository;
	
	@GetMapping
	public ResponseEntity<List<Produto>> getAll() {
		
		return ResponseEntity.ok(produtoRepository.findAll());
	}

	@GetMapping("/{id}")
	public ResponseEntity<Produto> getById(@PathVariable Long id) {
		
		return produtoRepository.findById(id).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/nome/{nome}")
	public ResponseEntity<List<Produto>> getByNome(@PathVariable String nome) {
	
		return ResponseEntity.ok(produtoRepository.findAllByNomeContainingIgnoreCase(nome));
	}
	
	@GetMapping("/precomaior/{preco}")
	public ResponseEntity<List<Produto>> getByPrecoMaior(@PathVariable BigDecimal preco) {
		
		return ResponseEntity.ok(produtoRepository.findByPrecoGreaterThanOrderByPreco(preco));
	}
	
	@GetMapping("/precomenor/{preco}")
	public ResponseEntity<List<Produto>> getByPrecoMenor(@PathVariable BigDecimal preco) {
		
		return ResponseEntity.ok(produtoRepository.findByPrecoLessThanOrderByPrecoDesc(preco));
	}
	
	@PostMapping
	public ResponseEntity<Produto> postProduto(@RequestBody Produto produto) {
		
		return ResponseEntity.status(HttpStatus.OK).body(produtoRepository.save(produto));
	}
	
	@PutMapping
	public ResponseEntity<Produto> putProduto(@RequestBody Produto produto) {
	
		return ResponseEntity.status(HttpStatus.OK).body(produtoRepository.save(produto));
	}
	
	@DeleteMapping("/id/{id}")
	public void deleteById(@PathVariable Long id) {
	
		produtoRepository.deleteById(id);
	}
	
}
