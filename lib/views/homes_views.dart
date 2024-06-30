import 'package:flutter/material.dart';

class KsiHome extends StatelessWidget {
  const KsiHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: Text('AppBar Complète'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Action à effectuer lorsque l'icône de recherche est pressée
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Action à effectuer lorsque l'icône de notifications est pressée
            },
          ),
          PopupMenuButton<String>(
            onSelected: (String result) {
              // Action à effectuer lorsque l'option de menu est sélectionnée
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              const PopupMenuItem<String>(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            height: 48.0,
            alignment: Alignment.center,
            child: Text('Sous-titre ou autre contenu'),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'En-tête du Drawer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Accueil'),
              onTap: () {
                // Action à effectuer lorsque l'élément "Accueil" est pressé
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                // Action à effectuer lorsque l'élément "Profil" est pressé
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Paramètres'),
              onTap: () {
                // Action à effectuer lorsque l'élément "Paramètres" est pressé
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Déconnexion'),
              onTap: () {
                // Action à effectuer lorsque l'élément "Déconnexion" est pressé
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Contenu principal'),
      ),
    );
  }
}
