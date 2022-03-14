package src.Ristorante;

public class Pizze extends Pietanze {
	
	//ATTRIBUTI
	private String tipologia; // Primo, Secondo, Pizza
	
	
	//COSTRUTTORI
	public Pizze(String nome, double prezzo, String tipologia) {
		super (nome, prezzo);
		this.setTipologia(tipologia);
		
	}

	//METODI
	public String getTipologia() {
		return tipologia;
	}


	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}
	
	

}
