module KARAOKE = (
	struct
	let x = ref 30;;
	let y = ref 160;;

	type songType = Song of (int * (((int -> int) * int * string) list));;

	let c = 262;;
	let cis = 277;;
	let d = 294;;
	let dis = 311;;
	let e = 330;;
	let f = 349;;
	let fis = 370;;
	let g = 392;;
	let gis = 415;;
	let a = 440;;
	let ais = 466;;
	let h = 494;;
	let pause = 0;;

	let whole tempo = tempo;;
	let half tempo = (tempo/ 2);;
	let third tempo = (tempo / 3);;
	let quarter tempo = (tempo / 4);;
	let eighth tempo = (tempo / 8);;
	let sixteenth tempo =  (tempo / 16);;
	let thirtysecond tempo = (tempo / 32);;
	let none tempo = 0;;
	
	let chOct (sound, octaves) = int_of_float (float_of_int sound *. ( 2. ** (float_of_int octaves) ));;

	let wlazl_kotek_na_plotek = Song (400, [(half, g, "Wlazl "); (half, e, "ko"); (half, e, "tek "); (half, f, "na "); 
										(half, d, "plo"); (half, d, "tek "); (quarter, c, "i "); (quarter, e, "mru"); 
										(quarter, g, "ga,"); (whole, pause, "newLine"); (half, g, "Ta"); (half, e, "ka "); 
										(half, e, "to "); (half, f, "pio"); (half, d, "sen"); (half, d, "ka "); 
										(quarter, c, "nie "); (quarter, e, "dlu"); (quarter, c, "ga...")]);;
										
	let panie_janie  = Song (500, [(half, c, "Pa"); (half, d, "nie "); (half, e, "Ja"); (half, c, "nie! "); (none, pause, "newLine");
							(half, c, "Pa"); (half, d, "nie "); (half, e, "Ja"); (half, c, "nie!"); (none, pause, "newLine");
							(half, e, "Ra"); (half, f, "no "); (half, g, "wstan! "); (half, pause, "newLine");
							(half, e, "Ra"); (half, f, "no "); (half, g, "wstan! "); (half, pause, "newLine");
							(quarter, g, "Wszy"); (quarter, a, "stkie "); (quarter, g, "dzwo"); (quarter, f, "ny "); (half, e, "bi"); (half, c, "ja! "); (none, pause, "newLine");
							(quarter, g, "Wszy"); (quarter, a, "stkie "); (quarter, g, "dzwo"); (quarter, f, "ny "); (half, e, "bi"); (half, c, "ja! "); (sixteenth, pause, "newLine");
							(half, g, "Bim! "); (half, c, "Bam! "); (half, f, "Bom! "); (half, pause, "newLine");
							(half, g, "Bim! "); (half, c, "Bam! "); (half, f, "Bom! ")]);;
		
	let wholeDot tempo = (3 * tempo/2);;
	let halfDot tempo = (3*tempo/4);;
	let quarterDot tempo =(3*tempo/8);;
	
	
	let szla_dzieweczka=Song(600,[(half,chOct(c,1),"Szla ");(quarter,chOct(f,1),"dzie");(half,chOct(a,1),"we");
	(quarter,chOct(g,1),"czka ");(half,chOct(f,1),"do ");(quarter,chOct(g,1),"la");
	(half,chOct(f,1),"secz");(quarter,chOct(d,1),"ka ");(none,pause,"newLine");
	(half,chOct(c,1),"do ");(quarter,chOct(c,1),"zie");(half,a,"lo");(quarter,ais,"ne");
	(quarter,chOct(c,1),"go "); (half,pause,"newLine");(quarter,chOct(a,1),"a");(quarter,chOct(f,1),"ha");(quarter,chOct(d,1),"ha ");(half,pause,"newLine");(half,ais,"do ");(quarter,ais,"zie");
	(half,g,"lo");(quarter,a,"ne");(quarter,ais,"go ");(half,pause,"newLine"); (quarter,chOct(g,1),"a");(quarter,chOct(e,1),"ha");(quarter,chOct(c,1),"ha ");(half,pause,"newLine");(half,chOct(c,1),"do ");
	(quarter,chOct(c,1),"zie");(half,chOct(a,1),"lo");(quarter,chOct(g,1),"ne");(quarter,chOct(f,1),"go ");(whole,pause,"newLine");
	
	(half,chOct(c,1),"na");(quarter,chOct(f,1),"pot");(half,chOct(a,1),"ka");
	(quarter,chOct(g,1),"la ");(half,chOct(f,1),"my");(quarter,chOct(g,1),"sli");
	(half,chOct(f,1),"wecz");(quarter,chOct(d,1),"ka ");(none,pause,"newLine");
	(half,chOct(c,1),"bar");(quarter,chOct(c,1),"dzo");(half,a," szwar");(quarter,ais,"ne");
	(quarter,chOct(c,1),"go "); (half,pause,"newLine");(quarter,chOct(a,1),"a");(quarter,chOct(f,1),"ha");(quarter,chOct(d,1),"ha ");(half,pause,"newLine");(half,ais,"bar");(quarter,ais,"dzo");
	(half,g," szwar");(quarter,a,"ne");(quarter,ais,"go ");(half,pause,"newLine");(quarter,chOct(g,1),"a");(quarter,chOct(e,1),"ha");(quarter,chOct(c,1),"ha ");(half,pause,"newLine");(half,chOct(c,1),"bar");
	(quarter,chOct(c,1),"dzo");(half,chOct(a,1)," szwar");(quarter,chOct(g,1),"ne");(quarter,chOct(f,1),"go "); (whole, pause, "newLine");
	
	(quarter,chOct(a,1),"gdzie");(eighth,chOct(a,1)," je");(eighth,chOct(g,1),"st");(quarter,chOct(f,1)," ta ");
	(quarter,chOct(a,1),"u");(eighth,chOct(a,1),"li");(eighth,chOct(g,1),"");(quarter,chOct(f,1),"ca");(none,pause,"newLine");
	(quarter,chOct(a,1),"gdzie");(quarterDot,chOct(ais,1)," jest");(eighth,chOct(a,1)," ten");(halfDot,chOct(g,1)," dom");(none,pause,"newLine");
	(quarter,chOct(g,1),"gdzie");(eighth,chOct(g,1)," je");(eighth,chOct(f,1),"st");(quarter,chOct(e,1)," ta ");
	(quarter,chOct(g,1),"dziew");(eighth,chOct(g,1),"czy");(eighth,chOct(f,1),"");(quarter,chOct(e,1),"na");(none,pause,"newLine");
	(quarter,chOct(g,1),"co");(quarterDot,chOct(a,1)," ko");(eighth,chOct(g,1),"cham");(halfDot,chOct(f,1)," ja");(none,pause,"newLine");
	
	(quarter,chOct(a,1),"zna");(eighth,chOct(a,1),"la");(eighth,chOct(g,1),"");(quarter,chOct(f,1),"zlem ");
	(quarter,chOct(a,1),"u");(eighth,chOct(a,1),"li");(eighth,chOct(g,1),"");(quarter,chOct(f,1),"ce");(none,pause,"newLine");
	(quarter,chOct(a,1),"zna");(quarterDot,chOct(ais,1),"laz");(eighth,chOct(a,1),"lem");(halfDot,chOct(g,1)," dom");(none,pause,"newLine");
	(quarter,chOct(ais,1),"zna");(quarter,chOct(a,1),"laz");(quarter,chOct(g,1),"lem ");
	(quarter,chOct(f,1),"dziew");(quarter,chOct(e,1),"czy");(quarter,chOct(d,1),"ne");(none,pause,"newLine");
	(quarter,chOct(c,1),"co");(quarter,chOct(a,1)," ko");(quarter,chOct(g,1),"cham");(half,chOct(f,1)," ja")]);;
	
	let dzisiaj_w_betlejem=Song(1000,[(quarter,c,"Dzi");(eighth,c,"siaj ");(eighth,chOct(g,-1),"w Be");(eighth,c,"tle");(eighth,d,"jem ");(none,pause,"newLine");
	(quarter,e,"dzi");(eighth,e,"siaj ");(eighth,d,"w Be");(eighth,e,"tle");(eighth,f,"jem ");(none,pause,"newLine");
	(eighth,g,"we");(eighth,a,"so");(quarter,g,"la");(quarter,f," no");(quarter,e,"wi");(quarter,d,"na ");(quarterDot,pause,"newLine");

	(quarter,c,"ze ");(eighth,c,"Pan");(eighth,chOct(g,-1),"na ");(eighth,c,"czys");(eighth,d,"ta ");(none,pause,"newLine");
	(quarter,e,"ze ");(eighth,e,"Pan");(eighth,d,"na ");(eighth,e,"czys");(eighth,f,"ta ");(none,pause,"newLine");
	(eighth,g,"po");(eighth,a,"ro");(quarter,g,"dzi");(quarter,f,"la");(quarter,e," Sy");(quarter,d,"na ");(quarterDot,pause,"newLine");

	(quarter,g,"Chry");(eighth,g,"stus");(eighth,f," sie");(eighth,e," ro");(eighth,d,"dzi");(none,pause,"newLine");
	(quarter,c,"nas ");(eighth,c,"os");(eighth,chOct(g,-1),"wo");(eighth,c,"bo");(eighth,d,"dzi ");(none,pause,"newLine");
	(quarter,g,"A");(eighth,g,"nie");(eighth,f,"li ");(eighth,e,"gra");(eighth,d,"ja ");(none,pause,"newLine");
	(quarter,c,"kro");(eighth,c,"le ");(eighth,chOct(g,-1),"wi");(eighth,c,"ta");(eighth,d,"ja ");(none,pause,"newLine");

	(eighth,g,"pas");(eighth,a,"te");(eighth,g,"rze ");(eighth,f,"spie");(eighth,e,"wa");(eighth,f,"ja");(none,pause,"newLine");
	(eighth,g,"by");(eighth,a,"dle");(eighth,g,"ta ");(eighth,f,"kle");(eighth,e,"ka");(eighth,f,"ja");(none,pause,"newLine");
	(eighth,g,"cu");(eighth,g,"da ");(quarter,a,"cu");(quarter,g,"da ");(eighth,f,"o");(eighth,e,"gla");(quarter,d,"sza");(quarter,c,"ja!");(quarter,pause,"newLine");

	]);;
	
	let wsrod_nocnej=Song(700,[(half,chOct(c,1),"Wsrod ");(quarter,chOct(d,1),"noc");(quarter,h,"nej");(half,chOct(c,1)," ci");(half,g,"szy");(none,pause,"newLine");
	(quarter,chOct(e,1),"glos ");(quarter,chOct(e,1),"sie ");(quarter,chOct(f,1),"roz");(quarter,chOct(d,1),"cho");(half,chOct(e,1),"dzi");(half,pause,"newLine");
	(half,chOct(c,1),"wstan");(quarter,chOct(d,1),"cie ");(quarter,h,"pas");(half,chOct(c,1),"te");(half,g,"rze");(none,pause,"newLine");
	(quarter,chOct(e,1),"Bog ");(quarter,chOct(e,1),"sie ");(quarter,chOct(f,1),"wam ");(quarter,chOct(d,1),"ro");(half,chOct(e,1),"dzi");(half,pause,"newLine");

	(quarter,chOct(c,1),"Czem ");(quarter,chOct(e,1),"pre");(quarter,chOct(c,1),"dzej ");(quarter,chOct(e,1),"sie ");
	(quarterDot,chOct(f,1),"wy");(eighth,chOct(d,1),"bie");(quarter,h,"raj");(quarter,g,"cie");(none,pause,"newLine");
	(quarter,chOct(c,1),"do ");(quarter,chOct(e,1),"Be");(quarter,chOct(c,1),"tle");(quarter,chOct(e,1),"jem ");
	(quarterDot,chOct(f,1),"pos");(eighth,chOct(d,1),"pie");(quarter,h,"szaj");(quarter,g,"cie");(none,pause,"newLine");

	(quarter,chOct(c,1),"przy");(quarter,chOct(c,1),"wi");(quarter,chOct(d,1),"tac ");(quarter,chOct(d,1),"Pa");(half,chOct(e,1),"na");(half,pause,"newLine");
	(quarter,chOct(c,1),"przy");(quarter,chOct(c,1),"wi");(quarter,chOct(d,1),"tac ");(quarter,chOct(d,1),"Pa");(half,chOct(c,1),"na");(half,pause,"newLine")]);;
	
	let cicha_noc = Song (700, [(whole, chOct (g, -1), "Ci"); (quarter, chOct (a, -1), ""); (half, chOct (g, -1), "cha "); (whole, chOct (e, -1), "noc..."); (whole, pause, "newLine");
							(whole, chOct (g, -1), "Swie"); (quarter, chOct (a, -1), ""); (half, chOct (g, -1), "ta "); (whole, chOct (e, -1), "noc..."); (whole, pause, "newLine");
							(whole, d, "Po"); (half, d, "koj "); (whole, chOct (h, -1), "nie"); (half, chOct (h, -1), "sie "); (whole, c, "lu"); (half, c, "dziom "); (whole, chOct (g, -1), "wszem"); (half, pause, "newLine");
							(whole, chOct(a, -1), "A "); (half, chOct(a, -1), "u "); (halfDot, c, "zlo"); (quarter, chOct(h, -1), ""); (quarterDot, chOct(a, -1), "bka"); (none, pause, "newLine");
							(whole, chOct(g, -1), "Ma"); (quarter, chOct(a, -1), ""); (half, chOct(g, -1), "tka "); (whole, chOct(e, -1), "swie"); (half, chOct(e, -1), "ta"); (half, pause, "newLine");
							(whole, chOct(a, -1), "Czu"); (half, chOct(a, -1), "wa "); (halfDot, c, "sa"); (quarter, chOct(h, -1), ""); (quarterDot, chOct(a, -1), "ma"); (quarter, pause, "newLine");
							(halfDot, chOct(g, -1), "U"); (quarter, chOct(a, -1), ""); (half, chOct(g, -1), "smiech"); (whole, chOct(e, -1), "nie"); (half, chOct(e, -1), "ta"); (halfDot, pause, "newLine");
							(whole, d, "Nad "); (half, d, "dzie"); (halfDot, f, "cia"); (quarterDot, d, ""); (half, chOct(h, -1), "tka "); (wholeDot, c, "sne"); (whole, e, "m"); (half, pause, "newLine");
							(halfDot, c, "Na"); (half, chOct(g, -1), "d "); (half, chOct(e, -1), "dzie"); (half, chOct(g, -1), "cia"); (half, chOct(f, -1), ""); (halfDot, d, "tka "); (whole, c, "snem"); (half, pause, "newLine")]);;


	let buforujTekst song = (
		let rec buforuj song akumulator = ( 
			let rec poodwracajSkladowe akumulator = (
				match akumulator with 
					h :: t -> (List.rev h) :: (poodwracajSkladowe t)
					| [] -> []
			) in
			match song with 
				Song (tempo, h :: t) -> (
					let (_, _, text) = h in
					match text with 
						"newLine" -> 
							buforuj (Song (tempo, t)) ([] :: akumulator)
						| tekst -> 
							match akumulator with
								head :: tail -> buforuj (Song (tempo, t)) (((tekst, false) :: head) :: tail)
								| _ -> failwith "Hmmm... Suspicious..."
				)
				| Song (tempo, []) -> poodwracajSkladowe akumulator
		) in
		List.rev (buforuj song [[]])
	);;

							
	let piosenka_ostateczna = Song (0, []);;

	let dostepne_piosenki = [("Panie Janie", "adalbert", panie_janie); ("Wlazl kotek na plotek", "adalbert", wlazl_kotek_na_plotek); ("Szla dzieweczka do laseczka", "RabBit1.0", szla_dzieweczka); ("Dzisiaj w Betlejem", "RabBit1.0", dzisiaj_w_betlejem); ("Wsrod nocnej ciszy", "RabBit1.0", wsrod_nocnej); ("Cicha Noc", "Adalbert", cicha_noc)];;

	let clear () = Graphics.(clear_graph(); moveto !x !y);;
							
	let draw_my_line bufferedLine textToEnchant = (
		let rec enchantText bufferedLine textToEnchant changes = (
			Graphics.(
			match bufferedLine with
				h :: t -> (
					if h = (textToEnchant, false) then (
						set_color magenta;
						draw_string textToEnchant;
						set_color black;
						enchantText t "" ((textToEnchant, true) :: changes)
					)
					else (
						let (text, wasDisplayed) = h in
						draw_string text;
						enchantText t textToEnchant ((text, wasDisplayed) :: changes)
					)
				)
				| [] -> changes
			)
		) in
		List.rev (enchantText bufferedLine textToEnchant [])
	);;
							
	let rec zagrajMiPiosenke () = (
		Graphics.(
		let rec keyboard oct = (
			clear();
			draw_string "KaraOcaml - Tryb Keyboardu";
			moveto !x (!y - 50);
			draw_string "'s' : 'k' - c : h";
			moveto !x (!y - 70);
			draw_string "'e' : 'i' bez 't' - cis : ais";
			moveto !x (!y - 90);
			draw_string "',', '.' - oktawa w dol, gore";
			moveto !x (!y - 120);
			draw_string "(w)yjscie";
			let key_pressed = (wait_next_event [Key_pressed]).key 
			and dur = 100 in
			if (key_pressed = 's') then (sound (chOct (c, oct)) dur; keyboard oct)
			else if (key_pressed = 'e') then (sound (chOct (cis, oct)) dur; keyboard oct)
			else if (key_pressed = 'd') then (sound (chOct (d, oct)) dur; keyboard oct)
			else if (key_pressed = 'r') then (sound (chOct (dis, oct)) dur; keyboard oct)
			else if (key_pressed = 'f') then (sound (chOct (e, oct)) dur; keyboard oct)
			else if (key_pressed = 'g') then (sound (chOct (f, oct)) dur; keyboard oct)
			else if (key_pressed = 'y') then (sound (chOct (fis, oct)) dur; keyboard oct)
			else if (key_pressed = 'h') then (sound (chOct (g, oct)) dur; keyboard oct)
			else if (key_pressed = 'u') then (sound (chOct (gis, oct)) dur; keyboard oct)
			else if (key_pressed = 'j') then (sound (chOct (a, oct)) dur; keyboard oct)
			else if (key_pressed = 'i') then (sound (chOct (ais, oct)) dur; keyboard oct)
			else if (key_pressed = 'k') then (sound (chOct (h, oct)) dur; keyboard oct)
			else if (key_pressed = ',') then (keyboard (oct-1))
			else if (key_pressed = '.') then (keyboard (oct+1))
			else if (key_pressed = 'w') then ()
			else keyboard oct
		) in
		let rec wyborPiosenki piosenki = (
			clear();
			draw_string "Witaj w Karaocaml! (Ho, Ho, Ho)";
			match piosenki with 
				h :: t -> (
					let (title, author, song) = h in
					moveto !x (!y - 30);
					draw_string (title);
					moveto !x (!y - 50);
					draw_string ("by " ^ author);
					moveto !x (!y - 80);
					draw_string "(a)kceptuj  |  (n)astepna";
					moveto !x (!y - 100);
					draw_string "(k)eyboard";
					moveto !x (!y - 130);
					draw_string "(w)yjscie";
					let key_pressed = (wait_next_event [Key_pressed]).key in
					if key_pressed = 'a' then (song)
					else if key_pressed = 'n' then (wyborPiosenki t)
					else if key_pressed = 'w' then (piosenka_ostateczna)
					else if key_pressed = 'k' then (keyboard 0; wyborPiosenki piosenki)
					else (wyborPiosenki piosenki)
				)
				| [] -> wyborPiosenki dostepne_piosenki
			
		) in
		let song = (wyborPiosenki dostepne_piosenki) in
		match song with 
			Song (0, _) -> ()
			| _ -> clear();
		moveto !x (!y - 40);
		sound 0 500;
		let rec interpretuj song bufferedText = (
			match song with 
				Song (tempo,[]) -> ()
				| Song (tempo,((funkcja, freq, str) :: t))  -> 
					if str <> "newLine" then (
						clear();
						moveto !x (!y - 40);
						let newHead = (draw_my_line (List.hd bufferedText) str) in
						sound freq (funkcja tempo); 
						interpretuj (Song (tempo,t)) (newHead :: (List.tl bufferedText))
					)
					else (
						sound freq (funkcja tempo); 
						interpretuj (Song (tempo,t)) (List.tl bufferedText)
					)
		) and
		bufferedText = (buforujTekst song) in
		interpretuj song bufferedText;
		zagrajMiPiosenke()
		)
	);;

	let start () = (
		Graphics.( open_graph "300x250"; set_window_title "Karaocaml alpha_0.3b";);
		zagrajMiPiosenke();
		Graphics.close_graph()
	);;
	end
	:
	sig
	val start: unit -> unit
	end
);;

KARAOKE.start();;