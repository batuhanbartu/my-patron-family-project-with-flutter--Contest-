import 'package:flutter/material.dart';

class Misafir extends StatelessWidget {
  const Misafir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _aileAdi = '';
    String _iletisim1 = '';
    String _adres = '';
    String _il = '';
    bool eslesti_mi = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Misafir Girişi'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Aile Adı *',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Aile Adınız zorunludur.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _aileAdi = value!;
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
                onSaved: (value) {
                  _iletisim1 = value!;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'İletişim 2',
                ),
                onSaved: (value) {
                  // İletişim 2 zorunlu değil, bu nedenle değişkene değer atamıyoruz.
                },
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
                onSaved: (value) {
                  _adres = value!;
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
                onSaved: (value) {
                  _il = value!;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Burada bir eşleştirme işlemi gerçekleştiriliyor olsun.
                    // Eğer eşleşme başarılıysa "eslesti_mi" değişkeni true olarak güncellenebilir.

                    if (eslesti_mi) {
                      // Eğer eşleştirme başarılıysa istediğiniz işlemleri yapabilirsiniz.
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Eşleştirme Başarısız'),
                            content: Text(
                                'Girdiğiniz bilgilerle eşleşen aile bulununca size mesaj gelecektir.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Tamam'),
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
