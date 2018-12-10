# Karaocaml

Simple GUI program, that lets you scream the contents of your heart out.

## Getting Started

The best way to experience Karaocaml is by compiling it. 
You can do it, providing you have OCaml ready to go in your favourite command interpreter / terminal and are able to enter this command inside the folder you downloaded it to:

* For Windows:
```
ocamlc -o Karaocaml.exe Graphics.cma Karaocaml.ml
```
* For GNU/Linux systems the command is the same except the "exe" extension;
* I don't know however how it works on Mac, for I'm not that weird.

This will create an executable that's ready to run out of the box. Enjoy.

#### Additional Info

Still reading this? You want to know how to start this code without compiling or what?
You do?
Ok. So There's always a way:
```
ocaml -open Graphics Graphics.cma
```
This goes to your command interpreter;
```
#use "Karaocaml.ml";;
```
And that straight into the newly opened OCaml REPL session with Graphics module loaded and opened.

## Built With

* Only the OCaml Standard - and proud of it

## Authors

* **Adalbert** - *Lead Programmer*
* **RabBit1.0** - *Lead Musician*

## License

This project is licensed under the GNU General Public License - version 3
