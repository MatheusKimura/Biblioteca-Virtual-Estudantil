import 'package:flutter/material.dart';
import 'main.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
            child: Text(
              'MENU',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return contaLogada();
                  }));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.account_box,
            ),
            title: const Text('Meu Perfil'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return meuPerfil();
                  }));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.book,
            ),
            title: const Text('Minhas Atividades'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.brightness_7,
            ),
            title: const Text('Configurações'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
            ),
            title: const Text('Mensagens'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.event_note,
            ),
            title: const Text('Termos de usuário'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.clear,
            ),
            title: const Text('Sair da conta'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return TelaLogin();
                  }));
            },
          ),
        ],
      ),
    );
  }
}
