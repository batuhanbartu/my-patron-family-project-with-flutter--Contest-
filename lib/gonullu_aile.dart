import 'package:flutter/material.dart';

class GonulluAile extends StatelessWidget {
  const GonulluAile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _aileAdi = '';
    bool eslesti_mi = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Gönüllü Aile Girişi'),
      ),
      body: Center(
        child: Form(
          key: _formKey, // form key'i belirtin
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Aile Adı *',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Aile Adı zorunludur.'; // boş ise hata mesajı döndür
                  }
                  return null; // boş değilse null döndür
                },
                onSaved: (value) {
                  _aileAdi = value!; // değişkeni güncelle
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'İletişim 1 *',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'İletişim 1 zorunludur.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'İletişim 2',
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Adres *',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Adres zorunludur.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'İl *',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'İl zorunludur.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // istediğiniz işlemleri yapabilirsiniz

                    // Eşleşme kontrolü yapılıyor
                    if (eslesti_mi) {
                      // Eşleşme durumu: evet
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Eşleşme Başarılı'),
                            content: Text(
                                'Bilgileriniz eşleştirildi. Size dönüş yapılacaktır.'),
                            actions: [
                              TextButton(
                                child: Text('Tamam'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      // Eşleşme durumu: hayır
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Eşleştirme Başarısız'),
                            content: Text(
                                'Girdiğiniz bilgilerle eşleşen aile bulununca size mesaj gelecektir.'),
                            actions: [
                              TextButton(
                                child: Text('Tamam'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }
                },
                child: Text('Eşleştir'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
