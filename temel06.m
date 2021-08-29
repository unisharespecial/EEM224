%%   temel05SS.m
%
%   EEM224 Dersi icin hazýrlanmýþtýr. 
%
%   Temel MATLAB fonksiyonlarýnýn gozden gecirilmesi.
%   Bu dosya, Baskent Univ., Muh. Fak. ogrencileri tarafýndan ödev ve proje 
%   çalismalarinda kullanýlmak uzere hazýrlanmýþtýr. Bu dosyayi ihtiyacýnýz 
%   dogrultusunda asama asama degistirerek kendi yazilimlarinizi 
%   gelistirebilirsiniz. Basarýlar.

%   Dr. S. Gokhun Tanyer
%   14.02.13

%% YAZILIMIN TARÝHÇESÝ
% Bu kisimda her urettiginiz yazýlým surumunun kodunu bir artýrarak
% tarihçesini burada kayýt altýna alabilirsiniz. Bu sayede, hata
% yaptiginizda eski kayýtlara dönebilir, ayrica eski calismalarinizi gozden
% gecirebilirsiniz.
%       dosya ismi / yýl.ay.gun / calisma durumu / detaylý bilgi.
%       Dosya ismi: Kisa, anlaþýlýr olmalý. Çift rakamlý surum 
%                   sayisi ile takip edebilir.
%       Tarih: 14 Þubat 2013 için 130204
%       Calisma durumu:   -- henüz üstünde çalýþýyorum.
%                         OK  Calisan surumdur.
%                         SS  Calisan ve bir daha dokunmayacaðým, koruma
%                             altýna almak istedigim Son Sürüm yazýlýmdýr.
%                             Bu durumda temel01SS.m dosyasýna da ayrica
%                             saklamanýzda fayda var.
%
%
%
%
%temel05SS  130214  OK  Koruma altina alýyorum. 
%temel05            OK  Aksam ders sonrasý tamamlandý.
%                   --  Dalga hareketi olacak.
%temel04            OK  Örnek 4: Dalga gösterimi tamam.
%temel03            OK  Örnek 3 tamamlandý. Örnek 4'te dalga hazirlayacagim.
%                   OK  Örnek 3'e geciyorum.
%temel02 130214     --  Örnek 1 ve 2'deki pause etkisizleþtirildi. 3'e geçiyorum.
%                   OK  Örnekler 1(A-B), 2(A-G) tamamlandý.
%temel01 130214     --  Ýlk calisma.
%%  GIRIS - Ekran
%   Bu kisýmda kullanacaginiz sekiller, diger yazilimlardan alýntý satýrlar,
%   yazýlýma giris asamasinda ihtiyac duyacaðýnýz satirlar bulunabilir.

    clear;          %Hafizayý sil.
    figure(1), clf, hold off;
    figure(2), clf, hold off;
    figure(3), clf, hold off;
    figure(4), clf, hold off;      
    %figure(5), clf, hold off;      
    %figure(6), clf, hold off;      
    %figure(7), clf, hold off;      
    %figure(8), clf, hold off;      
    %Not: kullanmadýðýnýz satiri silmek yerine sonra kullanmak üzere " % "
    %iþareti ile etkisiz hale getirir, saklayabilirsiniz.
    %Not: Kýsým sonlarýnda iki-üç satir boþ býrakmanýz görünürlük
    %saðlayacaktýr.
    
    
    
%%  GIRIS - Veri hazirlama
%   Ihtiyac duyacaginiz sabit degerler, kullanacaðýnýz matrislerin onceden
%   tanýmlanmasý burada yapýlabilir.
%   Not: Kullanacaðýnýz matris boyutu onceden belirli olmasi halinde, 
%   tanýmlanmasý halinde Matlab cok daha hizli calismaktadýr. Dongu
%   içerisinde surekli olarak boyutlarý degisen matris kullanýmýný 
%   engellemenizde fayda var.



%%   ÖRNEK VERI HAZIRLAMA VE CÝZDÝRME:
%   Hadi tek boyutlu bir vektor hazýrlayalým ve görelim.
    x = [0:1:360];  %Ya da sadece [0:360] kullanbilirsiniz. 1 adim varsayilan deðerdir.
                    %eger ";" iþaretini kullanmazsanýz x degeri ekrana
                    %bastirilacaktýr. Gerektiginde veri incelemede
                    %kullanabilirsiniz.

%%   ÖRNEK 1: TEK BOYUTLU VERÝLER
%   Hadi basit tek boyutlu bir cizge cizdirelim
    figure(1)   %acik degilse acar. Eger zaten aciksa, ekranin ustune getirir.
    %pause komutu ile burada beklemeye alabilirsiniz. Týklayýnca devam edecektir.
    disp('Örnek 1A - Çizdirilecek');
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek için 2 saniye yeterli olacaktýr.
    
    plot(x)     %Bu kadar basit!
    
    y = 2 * x;
    
    figure(1), hold on;
    disp('Örnek 1B - y ilave edilecek');%pause
    pause;          %tam durduruyorum.
    
    plot(y)     %bu da basit degil mi!
    
%%   ÖRNEK 2:
%   x aci olsun. Onu radyana cevirip sinus çizdirelim.
    xrad = pi .* x ./ 180;  %dikkat: vektör çarpýmý ".*", vektör bolumu "./"
    z = sin(xrad);

    disp('Örnek 2A - Sinus cizilecek');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek için 2 saniye yeterli olacaktýr. 

    figure(2)
    plot(xrad, z), hold on; %sinüsü ekranda gördünüz. Hadi diðerlerini de çizdirelim.
    
    disp('Örnek 2B - Digerleri cizdirilecek');%pause
    pause;          %tam durduruyorum.
    
    plot(xrad,  cos(xrad), '--')
    plot(xrad, -sin(xrad), '-.')
    plot(xrad, -cos(xrad), ':')
                            %Dikkat: x ekseni radyan degerleri vermektedir.
    %Güzel ve anlaþilir gorunmesi icin soyle de yapabilirdik.
    disp('Örnek 2C - Renkli grafikler cizdirilecek');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek için 2 saniye yeterli olacaktýr. 

    figure(2), hold off, clf;   %Sekli serbest býrakip temizleyelim.

    plot(xrad,  sin(xrad), 'r-',  'LineWidth', 4), hold on;
    plot(xrad,  cos(xrad), 'g--', 'LineWidth', 4)
    plot(xrad, -0.8 .* sin(xrad), 'b-.', 'LineWidth', 4)
    plot(xrad, -cos(xrad), 'm:',  'LineWidth', 4)
 
    %Eksen degerlerine de mudahale etmek mumkun.
    disp('Örnek 2D - Eksen degerleri ayarlanacak');%pause
    pause;          %tam durduruyorum.
    axis([-0.1, 2.1*pi, -1.1, 1.1]);
    
    %Eksen tik degerlerine de mudahale etmek mumkun.
    disp('Örnek 2E - Eksen tik degerleri');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek için 2 saniye yeterli olacaktýr. 
    set(gca, 'xtick',  [0 pi 2*pi]);
    set(gca, 'ytick',  [-1 -0.8 0 0.8 1]);
    
    %Dahasý da var.
    disp('Örnek 2F - Grid çizgileri');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek için 2 saniye yeterli olacaktýr. 
    grid on;
    
    %Dahasý yine var.
    disp('Örnek 2G - Basliklar');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek için 2 saniye yeterli olacaktýr. 
    title('SÝNÜS AÝLESÝ BÝR ARADA');
    xlabel('x (Radyan)');
    ylabel('Olculen Gerilim (Volt)');
    
    disp(' ');
    disp('>>  legend komutunu ogrenin');
    disp('>>  Ayrica fprintf komutunu ogrenin ornek yaratýn. ');
    disp(' ');
    %ODEV: legend komutunu ogreniniz.
    %       Aþaðýdaki komutu anlayýnýz.
    %       x = plot(1:10,5*rand(10,1),'marker','square','markersize',12,...
    %           'markeredgecolor','y','markerfacecolor',[.6 0 .6],...
    %           'linestyle','-','color','r','linewidth',2); hold off

    
    
    %% ÖRNEK 3: ÝKÝ BOYUTLU VERÝLER
    disp('Örnek 3 - 2B Çizgeler - Baklava - Contour');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek için 2 saniye yeterli olacaktýr.

    clear;
    Rrad    = 1 .* pi .*  [0:360] ./ 180;       %sinüsün fazý
    lenR    = length(Rrad);
    
    x       = ones(lenR,1) * cos(Rrad);  %Dikkat: matris çarpýmýdýr.
    y       = ones(lenR,1) * sin(Rrad);  %Dikkat: matris çarpýmýdýr.
    y       = y';
    
    Baklava = zeros (size(x));      %matrisi acalim
    Baklava = sqrt ( x.^2 + y.^2);
    
    %Hadi bakalim, 2B çizgeleri birlikte inceleyelim.
    figure(3), hold off;    %pencereniz yüksekliðin iki katý geniþlikte olsun.
    subplot(121), contour(Baklava, 'LineWidth', 3);
    subplot(121), axis('square');
    
    disp('Örnek 3 - 2B Çizgeler - Baklava - 3B gösterim');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek için 2 saniye yeterli olacaktýr.

    subplot(122), mesh(Baklava);
    colormap('copper');
    %subplot(122), axis('square');
    
    %ODEV:  subplot(121) ve 
    %       subplot(122)yerine 
    %       subplot(211) ve 
    %       subplot(212)deneyin bakalým ne oluyor?
    %       Neden subplot(33x)'i denemiyorsunuz. x yerine koyacaðýnýz
    %       rakamlar kaca kadar gidecek? Her sayýnin yeri nereye denk
    %       geliyor? Ýnceleyim bakalým.
    
    %ODEV:  mesh yerine, surf, surfl kullanýn, farkini inceleyin.
    
    %Asagidaki komutlari degistirerek farkli cozumleri deneyebilirsiniz.
    disp('Örnek 3 - Baklava cizimi - Farkli renk / bakýþ açýsý tercihi');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek için 2 saniye yeterli olacaktýr.
    
    subplot(122), surfl(Baklava);
    shading('interp'); colormap('winter');
    AZ = 85; EL = 60; view(AZ,EL);
    
        
    
    %% ÖRNEK 4: DALGA GÖSTERÝMÝ
    disp('Örnek 4 - Dalga gosterimi');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek için 2 saniye yeterli olacaktýr.
        
    clear %hafizayý sil, yeniden baþlýyoruz.
        
    t       = 0;                    %anlik fotoðrafi hesapliyoruz.
    f       = 1e9;                  %1 GHz
    c       = 3e8;                  %ýþýk hýzý = 300,000 km
    db      = c /f;                 %dalga boyu = 30 cm.
    
    %100X100lük bir matris oluþturacaðýz.
    X       = 10 .* [0: 0.3/99 : 0.3];
    Y       = 10 .* [0: 0.3/99 : 0.3];     
    len     = length(X);
    
    %Simdi dongu yapmayi inceleyelim.
    for ix = 1:len
        
        for iy = 1:len
            
            XX  = (X(ix) - 1.5) .* (X(ix) - 1.5);
            YY  = (Y(iy) - 1.5) .* (Y(iy) - 1.5);
            R   (ix,iy)    = 1e-10 + sqrt(XX + YY); %Dikkat: R=0 sorun yaratýyor.
            Att (ix,iy)    = 1 ./ R(ix,iy); %Dalgamizin 1/R ile zayýfladýðýný kabul 
                                     %edelim. Biliyorum 1/R^2 olmalý ama 1/R
                                     %daha güzel görünüyor.
            faz (ix,iy) = 2 .* pi .* f .* t ...
                        - 2 .* pi ./ db .* R(ix,iy);
        end
    end
        
    Dalga   = sin(faz) .* Att;
    
    figure(4), hold off;    
    surfl(Dalga);
    shading('interp'); colormap('winter');
    AZ = 45;EL = 50; view(AZ,EL);  %Mudahale etmeyebilirsiniz de.
    
       
    
    %% ÖRNEK 5: DALGA HAREKETÝNÝN GÖSTERÝMÝ
    disp('Örnek 5 - Dalga hareketinin gosterimi');%pause
    figure(4), hold off;  
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek için 2 saniye yeterli olacaktýr.
    
    clear %hafizayý sil, yeniden baþlýyoruz.
        
    f       = 1e9;                  %1 GHz
    c       = 3e8;                  %ýþýk hýzý = 300,000 km
    db      = c /f;                 %dalga boyu = 30 cm.
    T       = 1/f;                  %Dalganýn periyodu.
    t       = [0 : T/10 : T];       %süre sadece 1 milisaniye
    lenT    = length(t);
    
    
    for it = 1 : lenT
        %100X100lük bir matris oluþturacaðýz.
        
        X       = 10 .* [0: db/99 : db];
        Y       = 10 .* [0: db/99 : db];     
        len     = length(X);
    
        %Simdi dongu yapmayi inceleyelim.
        for ix = 1:len
        
            for iy = 1:len
            
                XX  = (X(ix) - 1.5) .* (X(ix) - 10*db/2);
                YY  = (Y(iy) - 1.5) .* (Y(iy) - 10*db/2);
                R   (ix,iy)    = 1e-10 + sqrt(XX + YY); %Dikkat: R=0 sorun yaratýyor.
                Att (ix,iy)    = 1 ./ R(ix,iy); %Dalgamizin 1/R ile zayýfladýðýný kabul 
                                     %edelim. Biliyorum 1/R^2 olmalý ama 1/R
                                     %daha güzel görünüyor.
                faz (ix,iy) = 2 .* pi .* f .* t(it) ...
                            - 2 .* pi ./ db .* R(ix,iy);
            end %iy
        end %ix
        Dalga   = sin(faz) .* Att;
        surfl(Dalga);
        shading('interp'); colormap('copper');
        AZ = 45;EL = 50; view(AZ,EL);  %Mudahale etmeyebilirsiniz de.
        axis([0 100 0 100 -5 5])
        M(it) = getframe;
    end %it
        
    disp('Örnek 5 gosterime hazýr! ');
    pause;          %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek için 2 saniye yeterli olacaktýr.
    
    movie(M,10,2);
        
    
    %%  ODEV 1: 
    %   A.  Ýstediðinizde bu yazýlýmý aynen kullanarak, 
    %           for it = 1 : lenT
    %       için, tel ustunde sinus dalgasý yaratýnýz. 
    %       Dikkat ediniz, grafik tek boyutlu olacak. 
    %
    %   B.  Ayný þekilde gelen dalgayý da gösteriniz.
    %
    %   C.  Her iki dalganýn toplamýný farklý zamanlarda gösteriniz.
    %
    %   D.  C þýkkýndaki sonuçlarý film halinde gösteriniz.
    %%
    
    
    
    %real(E) ile Guc miktarýni ilerleme yonundeki mesafeye göre çizdiriniz.
    figure(5), hold off
    clear
    
    dum = 0:0.01:20;
    E = sin(dum);
    E2 = E .* E;
    
    plot(dum, E, 'r-',   'LineWidth', 4), hold on;
    plot(dum, E2, 'b--', 'LineWidth', 4)
    title ( 'ALAN GENLIGI VE GUC DEGERI');
    xlabel('Radyan')
    ylabel( 'ALAN (Volt) ,  GUC (Watt)');
    
    
    
    
    

    %% Devami olacak, pek yakýnda !!
    
    
    
    
%%  SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON

