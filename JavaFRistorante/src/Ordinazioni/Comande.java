package src.Ordinazioni;
import java.util.ArrayList;
import Ristorante.Pietanze;

public class Comande {
	
	//ATTRIBUTI
	ArrayList<Pietanze> Ordine = new ArrayList<Pietanze>();
	private int numerocoperti;
	private int tavolocomanda; 
	
	



	//COSTRUTTORI
	public Comande(int numerocoperti, int tavolocomanda) {
		this.numerocoperti = numerocoperti;
		this.tavolocomanda = tavolocomanda;
	}
	
	
	//METODI
	public ArrayList<Pietanze> getOrdine() {
		return Ordine;
	}


	public void setOrdine(ArrayList<Pietanze> ordine) {
		Ordine = ordine;
	}

}
