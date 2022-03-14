package src.Ordinazioni;

public class Tavoli {
	
	//ATTRIBUTI
	
	private String posizione;
	private int capacita; 
	private boolean occupato = false; 
	
	//COSTRUTTORI
	public Tavoli(String posizione, int capacita) {		
		this.posizione = posizione;
		this.capacita = capacita;
		
	}

	public String getPosizione() {
		return posizione;
	}

	public void setPosizione(String posizione) {
		this.posizione = posizione;
	}

	public int getCapacita() {
		return capacita;
	}

	public void setCapacita(int capacita) {
		this.capacita = capacita;
	}

	public boolean getOccupato() {
		return occupato;
	}

	public void setOccupato(boolean occupato) {
		this.occupato = occupato;
	}
	
	//METODI

}
