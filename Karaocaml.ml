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
	(quarter,chOct(c,1),"co");(quarter,chOct(a,1)," ko");(quarter,chOct(g,1),"cham");(halfDot,chOct(f,1)," ja")]);;

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

	let dostepne_piosenki = [("Panie Janie", "adalbert", panie_janie); ("Wlazl kotek na plotek", "adalbert", wlazl_kotek_na_plotek); ("Szla dzieweczka do laseczka", "RabBit1.0", szla_dzieweczka)];;

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
		let rec wyborPiosenki piosenki = (
			clear();
			draw_string "Witaj w Karaocaml!";
			match piosenki with 
				h :: t -> (
					let (title, author, song) = h in
					moveto !x (!y - 30);
					draw_string (title);
					moveto !x (!y - 50);
					draw_string ("by " ^ author);
					moveto !x (!y - 80);
					draw_string "(a)kceptuj  |  (n)astepna";
					moveto !x (!y - 110);
					draw_string "(k)oniec";
					let key_pressed = (wait_next_event [Key_pressed]).key in
					if key_pressed = 'a' then (song)
					else if key_pressed = 'n' then (wyborPiosenki t)
					else if key_pressed = 'k' then (piosenka_ostateczna)
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
		Graphics.( open_graph "300x250"; set_window_title "Karaocaml alpha_0.3";);
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