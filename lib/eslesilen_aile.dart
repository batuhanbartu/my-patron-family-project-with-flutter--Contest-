//eşleşilen ailenin bilgileri girilecek ve karşı tarafa da bilgilerini gönderecek
import 'package:flutter/material.dart';

class EslesilenAile extends StatefulWidget {
  const EslesilenAile({Key? key}) : super(key: key);

  @override
  _MisafirState createState() => _MisafirState();
}

class _MisafirState extends State<EslesilenAile> {
  final _formKey = GlobalKey<FormState>();
  String _aileAdi = '';
  String _iletisim1 = '';
  String? _iletisim2;
  String _adres = '';
  String _il = '';
  bool eslestiMi = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        eslestiMi = true;
      });
      // istediğiniz işlemleri yapabilirsiniz, burada başka bir sayfaya yönlendirebilirsiniz.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Misafir Girişi'),
      ),
      body: eslestiMi
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Eşleşme sağlandı!'),
                  SizedBox(height: 20.0),
                  Text('Karşı tarafın bilgileri:'),
                  SizedBox(height: 10.0),
                  Text('Aile Adı: $_aileAdi'),
                  SizedBox(height: 10.0),
                  Text('İletişim 1: $_iletisim1'),
                  SizedBox(height: 10.0),
                  Text('İletişim 2: ${_iletisim2 ?? '-'}'),
                  SizedBox(height: 10.0),
                  Text('Adres: $_adres'),
                  SizedBox(height: 10.0),
                  Text('İl: $_il'),
                ],
              ),
            )
          : Center(
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
                        _iletisim2 = value;
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
      // form doğrulandı ve kaydedildi
      // istediğiniz işlemleri yapabilirsiniz
      _gonderAileBilgileri(_aileAdi, _iletisim1, _iletisim2, _adres, _il);
    }
  },
  child: Text('Eşleştir'),
),
],
),
),
);
}
}

void _gonderAileBilgileri(String aileAdi, String iletisim1, String iletisim2, String adres, String il) {
  // burada ailenin bilgileri alınacak ve karşı tarafa gönderilecek
  // bu kodda yapılacak işlem ailenin bilgilerini servera post etmek olabilir
  // veya bir apiye istek yaparak ailenin bilgilerini kaydedebilirsiniz.
  // kodları burada yazamayacağım çünkü bağlanacağınız server ve api farklılık gösterebilir.
  // ancak aile bilgileri alındıktan sonra eşleşme durumuna göre karşı tarafa bilgi döndürebilirsiniz.
  if (eslesti_mi) {
    // eşleşme gerçekleşti, karşı tarafa bilgi dönülecek
    // dönülecek bilgiyi burada belirleyebilirsiniz
  } else {
    // eşleşme gerçekleşmedi, karşı tarafa bilgi dönülecek
    // dönülecek bilgiyi burada belirleyebilirsiniz
  }
}

                        
