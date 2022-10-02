import 'package:flutter/material.dart';

import '../routes/routes.dart';

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(45),
            width: double.infinity,
            height: 220,
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.lanacion.com.ar/resizer/IVr3Ix-_ipQqdvXdpnMUx-_cEsc=/1200x800/smart/filters:format(webp):quality(80)/cloudfront-us-east-1.images.arcpublishing.com/lanacionar/H6ETMQNEORB6RE6JHEKAZL52HE.jpg'),
              backgroundColor: Colors.transparent,
              radius: 110,
            ),
          ),
          Expanded(child: _ListaOpciones())
        ],
      ),
    );
  }
}

class _ListaOpciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, i) => const Divider(
        color: Color(0xFF003B1D),
        height: 8,
      ),
      itemCount: pageRoutes.length,
      itemBuilder: (context, i) => ListTile(
        leading: Icon(
          pageRoutes[i].icon,
          color: const Color(0xFF003B1D),
        ),
        title: Text(
          pageRoutes[i].titulo,
          style: const TextStyle(fontSize: 15),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Color(0xFF7DD95A),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => pageRoutes[i].page));
        },
      ),
    );
  }
}
