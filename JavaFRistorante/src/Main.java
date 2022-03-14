import java.util.ArrayList;
import java.util.Scanner;

import Ordinazioni.Comande;
import Ordinazioni.Tavoli;
import Ristorante.Pietanze;
import Ristorante.Pizze;
import Ristorante.Primi;
import Ristorante.Secondi;

public class Main {

	public static void main(String[] args) {
		// RISTORANTE
		
		// Il programma gestisce un menu di pietanze
		// un elenco di tavoli che fanno delle ordinazioni
		// le ordinazioni una volta confermate finiscono in cucina
		// il priogramma deve dare anche una vista delle comande in cucina
		
		/*
		 * 1 - gestione delle pietanze
		 * 2 - Gestione dei Tavoli
		 * 3 - Crea una comanda
		 * 4 - Elenco delle comande
		 * 5 - Situazione Tavoli
		 */
		
		ArrayList<Pietanze> ElencoPietanze = new ArrayList<Pietanze>();
		ArrayList<Tavoli> Elencotavoli = new ArrayList<Tavoli>();
		ArrayList<Comande> Elencocomande = new ArrayList<Comande>();
		
		System.out.println("Programma Ristorante");
		//IMPOSTO IL CICLO DEL MENU
		boolean interruttore = true;
		while (interruttore) {
		int scelta = menu1();
		
		switch (scelta) {
		case 1:
			menugestionepietanze(ElencoPietanze);
			break;
		case 2:
			menugestionetavoli(Elencotavoli);
			break;
		case 3:
			creaunacomanda(Elencotavoli, Elencocomande);
			break;
		case 4:
			elencocomande();
			break;
		case 5:
			situazionetavoli();
			break;
		case 0:
			interruttore= false;
			break;
			default : 
				System.out.println("Scelta non consentita");
		} //fine switch
		}
		
	}//fine main
	
	private static void situazionetavoli() {
		// TODO Auto-generated method stub
		
	}

	private static void elencocomande() {
		// TODO Auto-generated method stub
		
	}

	private static void creaunacomanda(ArrayList<Tavoli> Elencotavoli, ArrayList<Comande> Elencocomande) {
		
		Scanner tastiera = new Scanner(System.in);
		System.out.println("Quanti coperti?:");		
		int coperti = tastiera.nextInt();
		System.out.println("I tavoli disponibili sono:");
		for(int i=0;i < Elencotavoli.size();i++) {
			if (Elencotavoli.get(i).getOccupato()==false && Elencotavoli.get(i).getCapacita() >= coperti ) {
			System.out.print(i);
			System.out.print(" - Posizione: " + Elencotavoli.get(i).getPosizione());
			System.out.print(" - Capacit�: " + Elencotavoli.get(i).getCapacita());		
			System.out.println();
			}//chiude if
		}//chiude for
		System.out.println("Inserisci il numero del tavolo:");
		int numerotavolo = tastiera.nextInt();
		
		Elencocomande.add(new Comande(coperti, numerotavolo));
		
		//Elencocomande.get(Elencocomande.size()-1).getOrdine().add(null)
		
		
		
		
	}

	private static void menugestionetavoli(ArrayList<Tavoli> Elencotavoli) {
		boolean interruttore = true;
		while (interruttore) {
			System.out.println("1 - Mostra Tavoli");
			System.out.println("2 - Inserisci Tavolo");
			System.out.println("3 - Modifica Tavolo");
			System.out.println("4 - Elimina Tavolo");
			System.out.println("0 - Torna al menu Principale");
			Scanner tastiera = new Scanner(System.in);
			int scelta = tastiera.nextInt();
			switch(scelta) {
			case 1:
				mostratavoli(Elencotavoli);
				break;
			case 2:
				inseriscitavolo(Elencotavoli);
				break;
			case 3:
				modificatavolo(Elencotavoli);
				break;
			case 4:
				eliminatavolo(Elencotavoli);
				break;
			case 0:
				interruttore = false;
				break;
			default : 
				System.out.println("Scelta non consentita");
			}
		}
		
	}

	private static void eliminatavolo(ArrayList<Tavoli> Elencotavoli) {
		// TODO Auto-generated method stub
		
	}

	private static void modificatavolo(ArrayList<Tavoli> Elencotavoli) {
		for(int i=0;i < ElencoPietanze.size();i++) {
			System.out.print(i); // indice pietanze
			System.out.print(" - " + ElencoTavoli.get(i).getPosizione());
			System.out.print(" - " + ElencoTavoli.get(i).getCapazcità());
	
			System.out.println();
			}
		System.out.println("Inserisci il numero del tavolo da modificare:");
		Scanner tastiera = new Scanner(System.in);
		int scelta = tastiera.nextInt();
		System.out.println("Inserisci la nuova posizione:");
		String nuovonome = tastiera.next();
		System.out.println("Inserisci la nuova capacità:");
		double nuovoprezzo = tastiera.nextDouble();
		ElencoPietanze.get(scelta).setNome(nuovoposizione);
		ElencoPietanze.get(scelta).setPrezzo(nuovoprezzo);
		System.out.println("Pietanza Modificata");
		
	}
		
	}

	private static void inseriscitavolo(ArrayList<Tavoli> Elencotavoli) {
		
		Scanner tastiera = new Scanner(System.in);
		System.out.println("Specifica la posizione del nuovo tavolo:");
		String posizione = tastiera.next();
		System.out.println("Inserisci la capienza del tavolo:");
		int capienza = tastiera.nextInt();
		Elencotavoli.add(new Tavoli(posizione, capienza));
		
		
	}

	private static void mostratavoli(ArrayList<Tavoli> Elencotavoli) {
		
		for(int i=0;i < Elencotavoli.size();i++) {
			System.out.print(i);
			System.out.print(" - Posizione: " + Elencotavoli.get(i).getPosizione());
			System.out.print(" - Capacit�: " + Elencotavoli.get(i).getCapacita());
			System.out.print(" - Occupato: " + Elencotavoli.get(i).getOccupato());
			System.out.println();
			}
		System.out.println("------------------------------");
		
	}

	private static void menugestionepietanze(ArrayList<Pietanze> ElencoPietanze) {
		
		boolean interruttore = true;
		while (interruttore) {
			System.out.println("1 - Mostra Pietanze");
			System.out.println("2 - Inserisci Pietanza");
			System.out.println("3 - Modifica Pietanza");
			System.out.println("4 - Elimina Pietanza");
			System.out.println("0 - Torna al menu Principale");
			Scanner tastiera = new Scanner(System.in);
			int scelta = tastiera.nextInt();
			switch(scelta) {
			case 1:
				mostrapietanze(ElencoPietanze);
				break;
			case 2:
				inseriscipietanze(ElencoPietanze);
				break;
			case 3:
				modificapietanza(ElencoPietanze);
				break;
			case 4:
				eliminapietanza(ElencoPietanze);
				break;
			case 0:
				interruttore = false;
				break;
			default : 
				System.out.println("Scelta non consentita");
			}
		}
		
		
		
	}

	private static void eliminapietanza(ArrayList<Pietanze> ElencoPietanze) {
		for(int i=0;i < ElencoPietanze.size();i++) {
			System.out.print(i);
			System.out.print(" - " + ElencoPietanze.get(i).getNome());
			System.out.print(" - " + ElencoPietanze.get(i).getPrezzo());
			System.out.print(" - " + ElencoPietanze.get(i).getTipologia());
			System.out.println();
			}
		System.out.println("Inserisci il numero della pietanza da eliminare:");
		Scanner tastiera = new Scanner(System.in);
		int scelta = tastiera.nextInt();
		ElencoPietanze.remove(scelta);
	}

	private static void modificapietanza(ArrayList<Pietanze> ElencoPietanze) {
		
		for(int i=0;i < ElencoPietanze.size();i++) {
			System.out.print(i); // indice pietanze
			System.out.print(" - " + ElencoPietanze.get(i).getNome());
			System.out.print(" - " + ElencoPietanze.get(i).getPrezzo());
			System.out.print(" - " + ElencoPietanze.get(i).getTipologia());
			System.out.println();
			}
		System.out.println("Inserisci il numero della pietanza da modificare:");
		Scanner tastiera = new Scanner(System.in);
		int scelta = tastiera.nextInt();
		System.out.println("Inserisci il nuovo nome:");
		String nuovonome = tastiera.next();
		System.out.println("Inserisci il nuovo prezzo:");
		double nuovoprezzo = tastiera.nextDouble();
		ElencoPietanze.get(scelta).setNome(nuovonome);
		ElencoPietanze.get(scelta).setPrezzo(nuovoprezzo);
		System.out.println("Pietanza Modificata");
		
	}

	private static void inseriscipietanze(ArrayList<Pietanze> ElencoPietanze) {
		// TODO Auto-generated method stub
		
		System.out.println("Che tipo di pietanza vuoi inserire?");
		System.out.println("1 - per primo");
		System.out.println("2 - per secondo");
		System.out.println("3 - per pizza");
		Scanner tastiera = new Scanner(System.in);
		int scelta = tastiera.nextInt();
		System.out.println("Inserisci il nome:");
		String nome = tastiera.next();
		System.out.println("Inserisci il prezzo:");
		double prezzo = tastiera.nextDouble();
		if (scelta==1) {
			ElencoPietanze.add(new Primi(nome, prezzo,"Primo"));
		} else if (scelta==2) {
			ElencoPietanze.add(new Secondi(nome, prezzo,"Secondo"));
		} else if (scelta==3) {
			ElencoPietanze.add(new Pizze(nome, prezzo,"Pizze"));			
		}
		
		
	}

	private static void mostrapietanze(ArrayList<Pietanze> ElencoPietanze) {
		
		for(int i=0;i < ElencoPietanze.size();i++) {
			System.out.print(i);
			System.out.print(" - " + ElencoPietanze.get(i).getNome());
			System.out.print(" - " + ElencoPietanze.get(i).getPrezzo());
			System.out.print(" - " + ElencoPietanze.get(i).getTipologia());
			System.out.println();
			}
		System.out.println("------------------------------");
	}

	public static int menu1() {
		
		System.out.println("1 - Gestione delle Pietanze");
		System.out.println("2 - Gestione dei Tavoli");
		System.out.println("3 - Crea una Comanda");
		System.out.println("4 - Elenco delle Comande");
		System.out.println("5 - Situazione Tavoli");
		System.out.println("0 - Esci");
		Scanner tastiera = new Scanner(System.in);
		return tastiera.nextInt();
		
	}
	
	

}
