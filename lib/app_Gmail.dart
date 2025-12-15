import 'package:flutter/material.dart';

class App_Gmail extends StatelessWidget {
  const App_Gmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          // --- ENTÊTE GMAIL ---
          Container(
            padding: EdgeInsets.fromLTRB(16, 50, 16, 16),
            child: Row(
              children: [
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/4/4e/Gmail_Icon.png",
                  width: 32,
                ),
                SizedBox(width: 12),
                Text(
                  "Gmail",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          // --- MENU PRINCIPAL ---
          _menuCategory("Toutes les boîtes de réception", "99+", bold: true),
          _menuCategory("Principale", "99+", highlight: true),

          Divider(),

          _menuCategory("Réseaux sociaux", "20", color: Colors.blue),
          _menuCategory("Promotions", "41", color: Colors.green),
          _menuCategory("Notifications", "31", color: Colors.orange),

          Divider(),

          _simpleItem(Icons.star_border, "Favoris"),
          _simpleItem(Icons.watch_later_outlined, "En attente"),
          _menuCategory("Important", "11"),

          _simpleItem(Icons.shopping_bag, "Achats"),
          _simpleItem(Icons.send, "Envoyés"),
          _simpleItem(Icons.schedule_send, "Envois programmés"),
          _simpleItem(Icons.outbox, "Boîte d'envoi"),
          _menuCategory("Brouillons", "1"),
          _simpleItem(Icons.all_inbox, "Tous les messages"),
          _simpleItem(Icons.error_outline, "Spam"),
          _simpleItem(Icons.delete, "Corbeille"),

          Divider(),

          _simpleItem(Icons.settings, "Paramètres"),
          _simpleItem(Icons.help_outline, "Aide"),
        ],
      ),
    );
  }

  // ===== WIDGET : Lignes de catégories avec badge =====
  Widget _menuCategory(String title, String count,
      {bool bold = false, bool highlight = false, Color? color}) {
    return ListTile(
      tileColor: highlight ? Colors.red.shade50 : null,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: bold || highlight ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          color: color?.withOpacity(0.15) ?? Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          count,
          style: TextStyle(
            color: color ?? Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onTap: () {},
    );
  }

  // ===== WIDGET : items simples =====
  Widget _simpleItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {},
    );
  }
}
