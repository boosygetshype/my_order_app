import 'package:flutter/material.dart';
import 'package:my_order_app/models/foods.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Turkish Coffee",
        price: "65",
        imagePath: "lib/images/türkkahvesi.png",
        rating: "4.7",
        description:
            "Türk kahvesiyle anın tadını çıkar! Sıradan bir içecek değil, bir kültürün ta kendisi. Yoğun aroması ve karakteristik lezzetiyle sizi sarhoş eden bir deneyime hazır olun. Geleneksel Türk kahvesi, geçmişten günümüze uzanan bir mirasın, hikayenin ve dostluğun simgesidir. Şimdi siz de bir fincan keyif alın, sadece kahve değil, aynı zamanda bir kültürü içeceksiniz. Türk kahvesi, sadece içilen bir içecek değil, bir ritüel, bir paylaşım. An'ı paylaşmak için bir fincan Türk kahvesi yeter! ☕✨ #TürkKahvesi #AnınTadınıÇıkar"),
    Food(
        name: "Turkish Tea",
        price: "15",
        imagePath: "lib/images/çay.png",
        rating: "4.9",
        description:
            "Çayın keyfi başka, demlediğin an başlar! Bir fincan taze demlenmiş çay, sadece bir içecek değil, bir ritüel, bir sohbet başlatıcısı. Geleneksel çay demleme sanatıyla harmanlanan lezzet, sıcaklığı ve samimiyeti keşfedin. Her yudum, bir nefes arası gibi, huzurunuzda bir an daha uzansın istersiniz. Şimdi siz de bir fincan çayla sadece içmek değil, anın tadını çıkarmak için buluşun. Haydi, çayınızı demleyin, sohbetinizi sıcak bir keyfe dönüştürün! ☕🍃 #ÇayKeyfi #AnınTadınıÇıkar"),
    Food(
        name: "Espresso",
        price: "40",
        imagePath: "lib/images/expresso.png",
        rating: "4.2",
        description:
            "Espresso ile anın enerjisini yakala! Tek bir damla, büyük bir lezzet patlaması. Yoğun aroması, güçlü karakteriyle espresso, sadece bir içecek değil, bir tutkudur. Hızlı tempolu günlerin kahve molalarında, enerjinizi zirveye taşıyan bu lezzetli deneyimi keşfedin. Her yudum, uyanıklığınıza bir dokunuş, anın hareketine bir enerji katıyor. Şimdi siz de bir fincan espresso ile sadece kahve içmek değil, anın enerjisini yakalamak için hazır olun. ☕💥 #EspressoKeyfi #AnınEnerjisiniYakala"),
    Food(
        name: "Iced Americano",
        price: "65",
        imagePath: "lib/images/coldbrew.png",
        rating: "4.8",
        description:
            "Sıcak günlerin serin kahvesi: Iced Americano! İnce buzlarla serinletilmiş, güçlü bir kahvenin ferahlatıcı dansı. Bu yaz, içiminize serinlik katmak için bir adım atın. Iced Americano ile sadece bir içecek değil, bir yaz serüveninin başlangıcına davetlisiniz. İçimizi ferahlatan bu lezzetli yolculuk, her yudumuyla sizi enerjiye doyuracak. Şimdi siz de bir bardak Iced Americano ile sadece kahve içmek değil, serinliğin keyfini çıkarmak için hazır olun! ☕❄️ #IcedAmericano #SerinliğinKeyfi"),
    Food(
        name: "Baklava",
        price: "65",
        imagePath: "lib/images/baklava.png",
        rating: "4.9",
        description:
            "Tatlı anların kraliçesi: Baklava! İncecik hamurun arasında gizlenmiş, cezbedici şerbetin muhteşem uyumu. Her lokma, bir lezzet şölenine davet. Geleneksel el emeğiyle hazırlanmış, baklava sadece bir tatlı değil, bir kültür mirası. Bu eşsiz lezzeti keşfetmek, bir dilimde binlerce yıllık tat tarihini yaşamak demektir. Şimdi siz de bir dilim baklava ile sadece tatlı yemek değil, bir gelenekle buluşmak için hazır olun! 🍰🌰 #BaklavaLezzeti #TatlıAnlarınKeyfi"),
    Food(
        name: "Trileçe",
        price: "65",
        imagePath: "lib/images/trileçe.png",
        rating: "4.9",
        description:
            "Lezzetin en yumuşak hali: Trileçe! Süt, yumurta ve unun dansıyla yaratılmış, her dilimde bir özen hikayesi. Bu tatlı, sadece bir lokma değil, bir aşk şarkısı. İnce dokusu ve muhteşem şerbetiyle trileçe, anın tadını çıkarmanın en tatlı yoludur. Her ısırık, bir tatlı rüyanın kapılarını aralar. Şimdi siz de bir dilim trileçe ile sadece tatlı yemek değil, bir lezzet yolculuğuna çıkmak için hazır olun! 🍰🍯 #TrileçeLezzeti #TatlıRüyalar"),
    Food(
        name: "Profiterol",
        price: "65",
        imagePath: "lib/images/profiteröl.png",
        rating: "4.4",
        description:
            "Hafifliğin ve lezzetin dansı: Profiterol! İnce çıtır hamurun içinde gizlenmiş, kremasıyla muhteşem bir uyum yakalamış bir tat. Her bir ısırık, bir lezzet şöleninin kapılarını aralar. Profiterol, sadece bir tatlı değil, bir ziyafetin başlangıcıdır. El emeği ve özenle hazırlanmış bu eşsiz lezzeti denemek, bir dilimde mutluluğu hissetmek demektir. Şimdi siz de bir tabak profiterol ile sadece tatlı yemek değil, lezzetin zirvesine çıkmak için hazır olun! 🍰🍫 #ProfiterolLezzeti #LezzetŞöleni"),
    Food(
        name: "Tiramisu",
        price: "65",
        imagePath: "lib/images/tiramisu.png",
        rating: "4.9",
        description:
            "Tatlı bir rüya: Tiramisu! İnce katmanlar halindeki kahveli bisküviler, krema ve kakao, lezzetin zarif bir buluşmasını sunuyor. Her kaşık, bir lezzet yolculuğuna davet. Tiramisu, sadece bir tatlı değil, bir aşk şarkısıdır; kahve ve kremayla örülü bir tutku hikayesi. Her bir tabak, bir dilimde gizlenmiş mutluluğunun izini sürmenin başlangıcıdır. Şimdi siz de bir kaşık tiramisu ile sadece tatlı yemek değil, lezzetin zirvesine tırmanmak için hazır olun! 🍰☕ #TiramisuLezzeti #TatlıRüyalar"),
    Food(
        name: "Chesscake",
        price: "65",
        imagePath: "lib/images/chesecake.png",
        rating: "4.7",
        description:
            "Tatlı kaçamakların taçlandığı an: Cheesecake! Hafif kıvamı ve kremsi lezzetiyle cheesecake, bir dilimde lezzetin zirvesine çıkmanın şıklığını sunuyor. Bu tatlı, sadece bir lokma değil, bir keyif şöleni. Yumuşak peynirin ve gevrek tabanın mükemmel dansı, her bir ısırıkta bir lezzet macerasına dönüşüyor. Cheesecake, sadece bir tatlı değil, bir ziyafetin başlangıcıdır. Şimdi siz de bir dilim cheesecake ile sadece tatlı yemek değil, lezzetin şıklığına davetlisiniz! 🍰🍓 #CheesecakeLezzeti #TatlıKaçamağı"),
  ];

  final List<Food> _cart = [];
  void clearCart() {
    cart.clear();
    notifyListeners();
  }

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void AddtoCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
      
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
   void addToCart(Food food) {
    cart.add(food);
    notifyListeners();
  }
  
}

// order.dart
class Order {
  final int orderNumber;
  final List<Food> items;
  final DateTime orderDate;

  Order({
    required this.orderNumber,
    required this.items,
    required this.orderDate,
  });
}
