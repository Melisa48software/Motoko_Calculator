// hesap makinesi
// değişkenler (let -> immutable, var -> mutable)
// operatörler
// async metodu
// if condition

// canister => akıllı sözleşme

actor hesap_makinesi {
var hucre: Int = 0;
  // Toplama
  // Fonksiyon
  public func toplama (s : Int) : async Int {
    hucre += s;
    hucre
    //(Debug.print(debug_show(hucre));)
  };

  // Çıkarma
  public func cikarma(s : Int) : async Int {
  hucre -= s;
  hucre
  };

  // Çarpma
  public func carpma (s : Int) : async Int {
    hucre *= s;
    hucre
  };

  //Bölme
  public func bolme(s : Int) : async ?Int {
    if( s == 0) {
      null
    } else {
      hucre /= s;
      ?hucre
    };
  };

    // Temizle 
    public func temizle () : async () {
      hucre := 0;
    };
};
