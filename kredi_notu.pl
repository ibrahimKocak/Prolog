
yasidogrula(Yas):-Yas>17,write("\nKredi icin yasiniz tutuyor. Devam edebiliriz ...\n").
yasidogrula(Yas):-Yas<18,write("\nUzgunum. Kredi icin yasiniz uygun degildir.\n"),fail.
yasidogrula(Yas):-Yas>60,write("\nUzgunum. Kredi icin yasiniz uygun degildir.(60 yaş ve üzeri)\n"),fail.


eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==1,Arac==1,Kefil==1,ev_arac_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==2,Arac==1,Kefil==1,kira_arac_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==1,Arac==2,Kefil==1,ev_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==2,Arac==2,Kefil==1,kira_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==1,Arac==1,Kefil==2,ev_arac_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==2,Arac==1,Kefil==2,kira_arac_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==1,Arac==2,Kefil==2,ev_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                    Menkul==2,Arac==2,Kefil==2,kira_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).

ev_arac_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):- 
                                          write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri),
                                          write("\nUzerinize kayitli bulunan aracin degerini giriniz : \t"),read(Arac_degeri),
                                          write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas),
                                          verileri_analiz_et(Yas,Meslek,Maas,Ev_degeri,0,Arac_degeri,Kefil_maas,IstenenKredi).

kira_arac_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):- 
                                          write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri),
                                          write("\nUzerinize kayitli bulunan aracin degerini giriniz : \t"),read(Arac_degeri),
                                          write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas),
                                          verileri_analiz_et(Yas,Meslek,Maas,0,Kira_degeri,Arac_degeri,Kefil_maas,IstenenKredi).   

ev_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                                         write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri),
                                         write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas),
                                         verileri_analiz_et(Yas,Meslek,Maas,Ev_degeri,0,0,Kefil_maas,IstenenKredi).

kira_kefil_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                                         write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri),
                                         write("\nKefil olacak kisinin maasini giriniz : \t"),read(Kefil_maas),
                                         verileri_analiz_et(Yas,Meslek,Maas,0,Kira_degeri,0,Kefil_maas,IstenenKredi).

ev_arac_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                                        write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri),
                                        write("\nUzerinize kayitli bulunan aracin degerini giriniz : \t"),read(Arac_degeri),
                                        verileri_analiz_et(Yas,Meslek,Maas,Ev_degeri,0,Arac_degeri,0,IstenenKredi).

kira_arac_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                                        write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri),
                                        write("\nUzerinize kayitli bulunan aracin degerini giriniz : \t"),read(Arac_degeri),
                                        verileri_analiz_et(Yas,Meslek,Maas,0,Kira_degeri,Arac_degeri,0,IstenenKredi).

ev_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                                        write("\nOturdugunuz evin degerini giriniz : \t"),read(Ev_degeri),
                                        verileri_analiz_et(Yas,Meslek,Maas,Ev_degeri,0,0,0,IstenenKredi).

kira_Doldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi):-
                                        write("\nOturdugunuz evin kira degerini giriniz : \t"),read(Kira_degeri),
                                        verileri_analiz_et(Yas,Meslek,Maas,0,Kira_degeri,0,0,IstenenKredi).

verileri_analiz_et(Yas,Meslek,Maas,Menkul,Kira,Arac,Kefil,IstenenKredi):- 
                                        write("\nOzet Bilgiler : \t\n"),
                                        write("\nYasiniz : \t"),write(Yas),
                                        write("\nMeslek : \t"),write(Meslek),
                                        write("\nMaas : \t"),write(Maas),
                                        write("\nMenkul : \t"),write(Menkul),
                                        write("\nKira : \t"),write(Kira),
                                        write("\nArac : \t"),write(Arac),
                                        write("\nKefil : \t"),write(Kefil),
                                        write("\nIstenen Kredi : \t"),write(IstenenKredi),
                                        kredi_hesap(0,Yas,Maas,Menkul,Kira,Arac,Kefil,Kredi),
                                        write("\n\nBilgiler hesaplaniyor\n"),
                                        kontrol(Kredi,IstenenKredi).
                               
kontrol(Kredi,IstenenKredi):- IstenenKredi < Kredi , write("\n\nKredi isteginiz onaylandi!\nVerilebilecek maximum kredi limitiniz : \t"), write(Kredi), !. 
kontrol(Kredi,IstenenKredi):-                        write("\n\nKredi isteginiz onaylanmadi!\nVerilebilecek maximum kredi limitiniz : \t"), write(Kredi).

kredi_hesap(0,Yas,Maas,Menkul,Kira,Arac,Kefil,Kredi):-

yas_hesap(0,Yas,Kredi_ya),
maas_hesap(Kredi_ya,Maas,Kredi_ma),
menkul_hesap(Kredi_ma,Menkul,Kredi_me),
menkul_hesap(Kredi_me,Menkul,Kredi_ki),
arac_hesap(Kredi_ki,Arac,Kredi_ar),
kefil_hesap(Kredi_ar,Kefil,Kredi_ke),
Kredi is Kredi_ke.

yas_hesap(Kredi,Yas,Yeni_kredi):-Yas<25 ,topla(Kredi, 500, Yeni_kredi), !.
yas_hesap(Kredi,Yas,Yeni_kredi):-Yas<30 ,topla(Kredi, 5000,Yeni_kredi), !.
yas_hesap(Kredi,Yas,Yeni_kredi):-Yas<40 ,topla(Kredi, 7500,Yeni_kredi), !.
yas_hesap(Kredi,Yas,Yeni_kredi):-Yas<60 ,topla(Kredi, 10000,Yeni_kredi), !.

maas_hesap(Kredi,Maas,Yeni_kredi):-Maas<2000  , topla(Kredi,5000   , Yeni_kredi), !.
maas_hesap(Kredi,Maas,Yeni_kredi):-Maas<3000  , topla(Kredi,20000  , Yeni_kredi), !.
maas_hesap(Kredi,Maas,Yeni_kredi):-Maas<4000  , topla(Kredi,50000  , Yeni_kredi), !.
maas_hesap(Kredi,Maas,Yeni_kredi):-Maas<6000  , topla(Kredi,120000  , Yeni_kredi), !.
maas_hesap(Kredi,Maas,Yeni_kredi):-Maas<10000 , topla(Kredi,200000  , Yeni_kredi), !.
maas_hesap(Kredi,Maas,Yeni_kredi):-			        topla(Kredi,200000 , Yeni_kredi), !.

menkul_hesap(Kredi,Menkul,Yeni_kredi):-Menkul < 50000    ,topla(Kredi , 0       , Yeni_kredi), !.
menkul_hesap(Kredi,Menkul,Yeni_kredi):-Menkul < 100000   ,topla(Kredi , 10000   , Yeni_kredi), !.
menkul_hesap(Kredi,Menkul,Yeni_kredi):-Menkul < 250000   ,topla(Kredi , 30000   , Yeni_kredi), !.
menkul_hesap(Kredi,Menkul,Yeni_kredi):-Menkul < 500000   ,topla(Kredi , 70000   , Yeni_kredi), !.
menkul_hesap(Kredi,Menkul,Yeni_kredi):-Menkul < 1000000  ,topla(Kredi , 150000  , Yeni_kredi), !.
menkul_hesap(Kredi,Menkul,Yeni_kredi):- 				          topla(Kredi , 300000  , Yeni_kredi), !.

kira_hesap(Kredi,Menkul,Yeni_kredi):- Kira < 500    ,topla(Kredi , 0       , Yeni_kredi), !.
kira_hesap(Kredi,Menkul,Yeni_kredi):- Kira < 1000   ,topla(Kredi , 5000    , Yeni_kredi), !.
kira_hesap(Kredi,Menkul,Yeni_kredi):- Kira < 2500   ,topla(Kredi , 15000   , Yeni_kredi), !.
kira_hesap(Kredi,Menkul,Yeni_kredi):- Kira < 5000   ,topla(Kredi , 30000   , Yeni_kredi), !.
kira_hesap(Kredi,Menkul,Yeni_kredi):- Kira < 10000  ,topla(Kredi , 50000   , Yeni_kredi), !.
kira_hesap(Kredi,Menkul,Yeni_kredi):- 				       topla(Kredi , 100000  , Yeni_kredi), !.

arac_hesap(Kredi,Arac,Yeni_kredi):-Arac <  20000   , topla(Kredi , 0      , Yeni_kredi) , !.
arac_hesap(Kredi,Arac,Yeni_kredi):-Arac <  100000  , topla(Kredi , 50000  , Yeni_kredi) , !.
arac_hesap(Kredi,Arac,Yeni_kredi):-Arac <  250000  , topla(Kredi , 100000  , Yeni_kredi) , !.
arac_hesap(Kredi,Arac,Yeni_kredi):-Arac <  500000  , topla(Kredi , 250000 , Yeni_kredi) , !.
arac_hesap(Kredi,Arac,Yeni_kredi):-Arac <  1000000 , topla(Kredi , 400000 , Yeni_kredi) , !.
arac_hesap(Kredi,Arac,Yeni_kredi):-					         topla(Kredi , 500000 , Yeni_kredi) , !.

kefil_hesap(Kredi,Kefil,Yeni_kredi):-Kefil <  2500  , topla(Kredi , 0     , Yeni_kredi) , !.
kefil_hesap(Kredi,Kefil,Yeni_kredi):-Kefil <  3500  , topla(Kredi , 20000 , Yeni_kredi) , !.
kefil_hesap(Kredi,Kefil,Yeni_kredi):-Kefil <  5000  , topla(Kredi , 50000 , Yeni_kredi) , !.
kefil_hesap(Kredi,Kefil,Yeni_kredi):-Kefil <  10000 , topla(Kredi , 120000 , Yeni_kredi) , !.
kefil_hesap(Kredi,Kefil,Yeni_kredi):-				          topla(Kredi , 50000 , Yeni_kredi) , !.

topla(X,Y,Z):-Z is X+Y.

basla:-
write("\nAdinizi giriniz : \t"),read(Adi),write(Adi),write("\t Merhabalar \n"),
write("\nYasinizi giriniz  : \t"),read(Yas),yasidogrula(Yas),
write("\nMesleginizi giriniz  (Ogrenci => 1 , Calisan => 2 , Issiz => 3): \t"),read(Meslek),
write("\nMaasinizi giriniz : \t"),read(Maas),
write("\nOturdugunuz konut turu (Ev => 1 , Kira => 2) : \t"),read(Menkul),
write("\nUzerinizde kayitli bulunan arac var mi? (Evet => 1 , Hayir => 2) : \t"),read(Arac),
write("\nKefil olacak kisi var mi? (Evet => 1 , Hayir => 2) : \t"),read(Kefil),
write("\nIstediginiz kredi tutarini giriniz : \t"),read(IstenenKredi),
eksikBilgileriDoldur(Yas,Meslek,Maas,Menkul,Arac,Kefil,IstenenKredi).