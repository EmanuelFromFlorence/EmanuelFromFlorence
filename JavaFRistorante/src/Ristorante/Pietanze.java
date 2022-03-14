package src.Ristorante;

public class Pietanze {
	
	//ATTRIBUTI
	private double prezzo;
	private String nome;
	//COSTRUTTORI
	public Pietanze(String nome, double prezzo) {
		this.setNome(nome);
		this.setPrezzo(prezzo);
	}
	
	
	//METODI
	public double getPrezzo() {
		return prezzo;
	}
	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getTipologia() {
		return null;
	}
	
	
	

}
