package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the biljka database table.
 * 
 */
@Entity
@NamedQuery(name="Biljka.findAll", query="SELECT b FROM Biljka b")
public class Biljka implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idBiljka;

	private String domaciNaziv;

	private String fotografija;

	private String latinskiNaziv;

	private String opis;

	private String tip;

	public Biljka() {
	}

	public int getIdBiljka() {
		return this.idBiljka;
	}

	public void setIdBiljka(int idBiljka) {
		this.idBiljka = idBiljka;
	}

	public String getDomaciNaziv() {
		return this.domaciNaziv;
	}

	public void setDomaciNaziv(String domaciNaziv) {
		this.domaciNaziv = domaciNaziv;
	}

	public String getFotografija() {
		return this.fotografija;
	}

	public void setFotografija(String fotografija) {
		this.fotografija = fotografija;
	}

	public String getLatinskiNaziv() {
		return this.latinskiNaziv;
	}

	public void setLatinskiNaziv(String latinskiNaziv) {
		this.latinskiNaziv = latinskiNaziv;
	}

	public String getOpis() {
		return this.opis;
	}

	public void setOpis(String opis) {
		this.opis = opis;
	}

	public String getTip() {
		return this.tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

}