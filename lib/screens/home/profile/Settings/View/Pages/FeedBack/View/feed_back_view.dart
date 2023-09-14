import 'package:flutter/material.dart';

class FeedBackView extends StatelessWidget {
  const FeedBackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Öneri ve Şikayet Sayfası',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Öneri veya Şikayetinizi İletin',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Adınız:',
              style: TextStyle(fontSize: 18.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Adınızı girin',
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'E-posta Adresiniz:',
              style: TextStyle(fontSize: 18.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'E-posta adresinizi girin (isteğe bağlı)',
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Öneri veya Şikayetiniz:',
              style: TextStyle(fontSize: 18.0),
            ),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Önerinizi veya şikayetinizi buraya yazın',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Formun gönderildiği yer
                // Bu kısmı gerektiğiniz şekilde doldurmalısınız
                // Örneğin, veritabanına kaydedebilirsiniz
              },
              child: Text(
                'Gönder',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
