package src.Ristorante;

public class Secondi extends Pietanze {
	
	//ATTRIBUTI
	private String tipologia; // Primo, Secondo, Pizza
	
	
	//COSTRUTTORI
	public Secondi(String nome, double prezzo, String tipologia) {
		super (nome, prezzo);
		this.tipologia = tipologia;
		
	}
	
	//METODI
	public String getTipologia() {
		return tipologia;
	}


	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}

}
