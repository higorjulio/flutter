import 'package:flutter/material.dart';

class DescricaoDestino extends StatelessWidget {
  const DescricaoDestino({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 12),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur '
        'adipiscing elit. Fusce id diam ligula '
        'ultricies pulvinar. In neque lectus, '
        'sagittis eu libero vel, venenatis lacinia '
        'nulla. Etiam eget purus leo. Nam consectetur '
        'ornare est eu lobortis. Morbi eu augue eu '
        'lectus condimentum vestibulum. Etiam id '
        'nibh luctus, porttitor arcu et, porttitor '
        'purus. Pellentesque vulputate nibh sit amet '
        'rutrum vulputate. Nullam eget metus est. '
        'Integer condimentum, odio sed congue '
        'malesuada, ipsum nisi blandit lorem.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 11,
          height: 1.15,
          color: Colors.black87,
        ),
      ),
    );
  }
}
