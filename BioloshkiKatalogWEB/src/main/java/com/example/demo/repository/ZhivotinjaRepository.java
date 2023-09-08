package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Zhivotinja;

public interface ZhivotinjaRepository extends JpaRepository<Zhivotinja, Integer>{

	List<Zhivotinja> findByTipOrderByLatinskiNazivAsc(String tip);
	
}
