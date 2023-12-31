package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.repository.ZhivotinjaRepository;

import model.Zhivotinja;

@Controller
@RequestMapping(value="/zhivotinje")
public class ZhivotinjaController {
	
	@Autowired
	ZhivotinjaRepository zhr;

	@RequestMapping(value="/addZhivotinja", method=RequestMethod.POST)
	public String addZhivotinjka(String domNaziv, String latNaziv, String opis, String tip, String foto, Model m) {
		Zhivotinja zh = new Zhivotinja();
		zh.setDomaciNaziv(domNaziv);
		zh.setLatinskiNaziv(latNaziv);
		zh.setOpis(opis);
		zh.setTip(tip);
		zh.setFotografija(foto);
		
		zhr.save(zh);
		
		m.addAttribute("poruka", "Uspešno smo uneli novu životinju u katalog. Njen ID u katalogu je: " + zh.getIdZhivotinja());
		
		return "unos/ZhivotinjaUnos";
	}
	
	@RequestMapping(value="/getZhivotinjeByTip", method=RequestMethod.GET)
	public String getZhivotinjeByTip(String tip, Model m) {
		List<Zhivotinja> zhivotinje = zhr.findByTipOrderByLatinskiNazivAsc(tip);
		m.addAttribute("zhivotinje", zhivotinje);
		m.addAttribute("tip", tip);
		return "ZhivotinjeRazgledanje";
	}
	
	@RequestMapping(value="/AzhurirajInformacije", method=RequestMethod.GET)
	public String azhurirajInfo(Integer idZhivotinja, Model m) {
		Zhivotinja zh = zhr.findById(idZhivotinja).get();
		m.addAttribute("zhivotinja", zh);
		return "ZhivotinjeAzhurirajInfo";
	}
	
	@RequestMapping(value="/AzhurirajInformacije2", method=RequestMethod.POST)
	public String azhurirajInfo2(Zhivotinja zh, Integer idZhivotinja, Model m) {
		Zhivotinja zhivotinja = zhr.findById(idZhivotinja).get();
		zhivotinja.setTip(zh.getTip());
		zhivotinja.setDomaciNaziv(zh.getDomaciNaziv());
		zhivotinja.setLatinskiNaziv(zh.getLatinskiNaziv());
		zhivotinja.setOpis(zh.getOpis());
		zhivotinja.setFotografija(zh.getFotografija());
		
		zhr.save(zhivotinja);
		
		m.addAttribute("poruka", "Uspešno je ažurirana životinja čiji je ID: " + idZhivotinja);
		return "ZhivotinjeAzhurirajInfo";
	}
	
	@RequestMapping(value="/IzbrishiZhivotinju", method=RequestMethod.POST)
	public String izbrishiZhivotinju(Integer idZhivotinja, Model m) {
		zhr.deleteById(idZhivotinja);
		m.addAttribute("poruka", "Uspešno je izbrisana životinja čiji je ID: " + idZhivotinja);
		return "ZhivotinjeAzhurirajInfo";
	}
}
