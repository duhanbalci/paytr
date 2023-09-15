# PayTR Test Case

### Açıklama

Projede state management için riverpod kullanılmıştır. Proje yapısı clean architecture'ın riverpod için uyarlanmış halidir.  
Routing için auto_route kütüphanesi kullanılmıştır. Routing işlemleri için app_router.dart dosyası kullanılmıştır.  
Api'den yanıt alınamaması durumda dio cache interceptor devreye girip en son alınan yanıtı döndürmektedir.  


#### Sayfalar
- Onboarding -> favorilerin seçildiği, ad,soyad, yaş bilgilerinin girildiği ekran.
- Home -> favorilerin ve diğer kaynakların listelendiği ekran.
- DetailList -> kaynakların geçmiş verilerinin listelendiği ve yeni verilerin istendiği ekran.
- Detail -> kaynağın detaylarının görüntülendiği ekran.

#### Ekran Görüntüleri

##### Onboarding
![onboarding](screenshots/onboarding-fav.png)  
![onboarding](screenshots/onboarding-name.png)  
![onboarding](screenshots/onboarding-age.png)

##### Home
![home](screenshots/home.png)

##### Detail List
![detail_list](screenshots/users.png)  
![detail_list](screenshots/user-detail-2.png)

##### Details
![details](screenshots/user-detail.png)  
![details](screenshots/address.png)
