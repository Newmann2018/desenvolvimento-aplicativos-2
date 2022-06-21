import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormClass extends StatefulWidget {
  const FormClass({Key? key}) : super(key: key);

  @override
  _FormClassState createState() => _FormClassState();
}

class _FormClassState extends State<FormClass> {

  TextEditingController _controllerNome = TextEditingController();
  int age1 = 0, age2 = 1, age3 = 2; //Variáveis de controle do RadioButton
  int radioState = 0; //Variável de comparação para os RadioButton's
  bool music = false, game = false, sport = false, movie = false, news = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenAdjust = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário Paulo Donini"
        ),
      ),
      body: Center(
        child: Container(
          width: screenAdjust.size.width * 0.85,
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Preencha o formulário",
                style: GoogleFonts.abel(
                  textStyle: TextStyle(
                    fontSize: 20
                  )
                ),
              ),
              TextField(
                maxLength: 30,
                controller: _controllerNome,
                decoration: InputDecoration(
                  labelText: "NOME",
                  hintText: "Digite seu nome"
                ),
              ),
              Text(
                "Faixa etária",
                style: GoogleFonts.abel(
                    textStyle: TextStyle(
                        fontSize: 20
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: age1,
                    groupValue: radioState,
                    onChanged: (radio){
                      setState(() {
                        radioState = age1;
                      });
                    },
                  ),
                  Text("Menor que 18"),

                  Radio(
                    value: age2,
                    groupValue: radioState,
                    onChanged: (radio){
                      setState(() {
                        radioState = age2;
                      });
                    },
                  ),
                  Text("Entre 18 e 35"),
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: age3,
                    groupValue: radioState,
                    onChanged: (radio){
                      setState(() {
                        radioState = age3;
                      });
                    },
                  ),
                  Text("Mais que 35"),
                ],
              ),
              //////////////////////////
              Text(
                "Interesses",
                style: GoogleFonts.abel(
                    textStyle: TextStyle(
                        fontSize: 20
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: music,
                    onChanged: (check){
                      setState(() {
                        music = !music;
                      });
                    },
                  ),
                  Text("Música"),

                  Checkbox(
                    value: game,
                    onChanged: (check){
                      setState(() {
                        game = !game;
                      });
                    },
                  ),
                  Text("Games"),
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: sport,
                    onChanged: (check){
                      setState(() {
                        sport = !sport;
                      });
                    },
                  ),
                  Text("Esportes"),

                  Checkbox(
                    value: movie,
                    onChanged: (check){
                      setState(() {
                        movie = !movie;
                      });
                    },
                  ),
                  Text("Filmes"),
                ],
              ),
              /////////////////////
              SwitchListTile(
                  title: Text("Deseja receber notícias?"),
                  value: news,
                  onChanged: (switchNews){
                    setState(() {
                      news = !news;
                    });
                  }
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text("Enviar")
              )
            ],
          ),
        ),
      ),
    );
  }
}
