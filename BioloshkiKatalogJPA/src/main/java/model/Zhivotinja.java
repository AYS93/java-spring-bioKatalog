package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the zhivotinja database table.
 * 
 */
@Entity
@NamedQuery(name="Zhivotinja.findAll", query="SELECT z FROM Zhivotinja z")
public class Zhivotinja implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idZhivotinja;

	private String domaciNaziv;

	private String fotografija;

	private String latinskiNaziv;

	private String opis;

	private String tip;

	public Zhivotinja() {
	}

	public int getIdZhivotinja() {
		return this.idZhivotinja;
	}

	public void setIdZhivotinja(int idZhivotinja) {
		this.idZhivotinja = idZhivotinja;
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