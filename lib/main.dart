import 'package:flutter/material.dart';
import 'NavBar.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TelaLogin(),
      ),
    );
  }
}

class TelaLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        children: [
          logoBiblioteca(),
          cardLogin(),
        ],
      ),
    );
  }
}

class logoBiblioteca extends StatelessWidget {
  const logoBiblioteca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image.asset(
              './assets/images/bvedigital.png',
              height: 110,
              width: 280,
            ),
          ],
        ),
      ),
    );
  }
}

class logoFoto extends StatelessWidget {
  const logoFoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Image.asset(
              './assets/images/userfoto.png',
              height: 110,
              width: 280,
            ),
          ],
        ),
      ),
    );
  }
}

class cardLogin extends StatelessWidget {
  const cardLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 32),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 40, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CPF',
                      hintText: 'xxx.xxx.xxx-xx'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                      hintText: 'Digite sua senha'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,
                    ),
                    onPressed: () {
                      // TODO AFTER LOGIN PAGE GOES HERE
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return contaLogada();
                          }));
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Esqueceu a senha?',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              TextButton(
                onPressed: () {
                  // TODO CREATE ACCOUNT PAGE
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return criaConta();
                  }));
                },
                child: Text('Criar uma conta',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class criaConta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Crie sua Conta'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          logoFoto(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Center(
              child: Card(
                child: Column(
                  children: [
                    Editor(
                      senha: false,
                      texto: 'Nome Completo',
                      dica: 'Digite seu nome',
                      numero: TextInputType.text,
                    ),
                    Editor(
                      senha: false,
                      texto: 'CPF',
                      dica: 'Digite seu CPF',
                      numero: TextInputType.number,
                    ),
                    Editor(
                      senha: false,
                      texto: 'Email',
                      dica: 'Digite seu email',
                      numero: TextInputType.text,
                    ),
                    Editor(
                      senha: false,
                      texto: 'Senha',
                      dica: 'Digite sua senha',
                      numero: TextInputType.text,
                    ),
                    Editor(
                      senha: false,
                      texto: 'Instituição de ensino',
                      dica: 'Digite onde trabalha/estuda',
                      numero: TextInputType.text,
                    ),
                    Editor(
                      senha: false,
                      texto: 'Telefone',
                      dica: 'Digite seu Telefone',
                      numero: TextInputType.number,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 32),
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orangeAccent,
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) =>
                                    AlertDialog(
                                      title: Text('Sua Conta'),
                                      content: Text('Foi criada com sucesso'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                        return cardLogin();
                                                      }));
                                            },
                                            child: Text('OK'))
                                      ],
                                    ));
                          },
                          child: Text(
                            'Finalizar Cadastro',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class contaLogada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
                size: 32,
              ))
        ],
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: const EdgeInsets.only(
                left: 24.0, right: 24.0, top: 24, bottom: 0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  suffixIcon: Icon(Icons.send),
                  hintText: 'No que você está pensando?'),
            ),
          ),
        ],
      ),
    );
  }
}

class meuPerfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Meu Perfil'),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.edit_rounded))],
        centerTitle: true,
      ),
      body: Column(
        children: [
          logoFoto(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Center(
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 32),
                      child: Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Text('USUÁRIO', textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 32),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class Editor extends StatelessWidget {
  final bool senha;
  final String? texto;
  final String? dica;
  final TextInputType? numero;

  const Editor({required this.senha, this.texto, this.dica, this.numero});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 56.0, right: 56.0, top: 0, bottom: 16),
      //padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        keyboardType: numero,
        style: TextStyle(fontSize: 12),
        obscureText: senha,
        decoration: InputDecoration(
          labelText: texto,
          hintText: dica,
        ),
      ),
    );
  }
}
