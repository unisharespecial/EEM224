%%   temel05SS.m
%
%   EEM224 Dersi icin haz�rlanm��t�r. 
%
%   Temel MATLAB fonksiyonlar�n�n gozden gecirilmesi.
%   Bu dosya, Baskent Univ., Muh. Fak. ogrencileri taraf�ndan �dev ve proje 
%   �alismalarinda kullan�lmak uzere haz�rlanm��t�r. Bu dosyayi ihtiyac�n�z 
%   dogrultusunda asama asama degistirerek kendi yazilimlarinizi 
%   gelistirebilirsiniz. Basar�lar.

%   Dr. S. Gokhun Tanyer
%   14.02.13

%% YAZILIMIN TAR�H�ES�
% Bu kisimda her urettiginiz yaz�l�m surumunun kodunu bir art�rarak
% tarih�esini burada kay�t alt�na alabilirsiniz. Bu sayede, hata
% yaptiginizda eski kay�tlara d�nebilir, ayrica eski calismalarinizi gozden
% gecirebilirsiniz.
%       dosya ismi / y�l.ay.gun / calisma durumu / detayl� bilgi.
%       Dosya ismi: Kisa, anla��l�r olmal�. �ift rakaml� surum 
%                   sayisi ile takip edebilir.
%       Tarih: 14 �ubat 2013 i�in 130204
%       Calisma durumu:   -- hen�z �st�nde �al���yorum.
%                         OK  Calisan surumdur.
%                         SS  Calisan ve bir daha dokunmayaca��m, koruma
%                             alt�na almak istedigim Son S�r�m yaz�l�md�r.
%                             Bu durumda temel01SS.m dosyas�na da ayrica
%                             saklaman�zda fayda var.
%
%
%
%
%temel05SS  130214  OK  Koruma altina al�yorum. 
%temel05            OK  Aksam ders sonras� tamamland�.
%                   --  Dalga hareketi olacak.
%temel04            OK  �rnek 4: Dalga g�sterimi tamam.
%temel03            OK  �rnek 3 tamamland�. �rnek 4'te dalga hazirlayacagim.
%                   OK  �rnek 3'e geciyorum.
%temel02 130214     --  �rnek 1 ve 2'deki pause etkisizle�tirildi. 3'e ge�iyorum.
%                   OK  �rnekler 1(A-B), 2(A-G) tamamland�.
%temel01 130214     --  �lk calisma.
%%  GIRIS - Ekran
%   Bu kis�mda kullanacaginiz sekiller, diger yazilimlardan al�nt� sat�rlar,
%   yaz�l�ma giris asamasinda ihtiyac duyaca��n�z satirlar bulunabilir.

    clear;          %Hafizay� sil.
    figure(1), clf, hold off;
    figure(2), clf, hold off;
    figure(3), clf, hold off;
    figure(4), clf, hold off;      
    %figure(5), clf, hold off;      
    %figure(6), clf, hold off;      
    %figure(7), clf, hold off;      
    %figure(8), clf, hold off;      
    %Not: kullanmad���n�z satiri silmek yerine sonra kullanmak �zere " % "
    %i�areti ile etkisiz hale getirir, saklayabilirsiniz.
    %Not: K�s�m sonlar�nda iki-�� satir bo� b�rakman�z g�r�n�rl�k
    %sa�layacakt�r.
    
    
    
%%  GIRIS - Veri hazirlama
%   Ihtiyac duyacaginiz sabit degerler, kullanaca��n�z matrislerin onceden
%   tan�mlanmas� burada yap�labilir.
%   Not: Kullanaca��n�z matris boyutu onceden belirli olmasi halinde, 
%   tan�mlanmas� halinde Matlab cok daha hizli calismaktad�r. Dongu
%   i�erisinde surekli olarak boyutlar� degisen matris kullan�m�n� 
%   engellemenizde fayda var.



%%   �RNEK VERI HAZIRLAMA VE C�ZD�RME:
%   Hadi tek boyutlu bir vektor haz�rlayal�m ve g�relim.
    x = [0:1:360];  %Ya da sadece [0:360] kullanbilirsiniz. 1 adim varsayilan de�erdir.
                    %eger ";" i�aretini kullanmazsan�z x degeri ekrana
                    %bastirilacakt�r. Gerektiginde veri incelemede
                    %kullanabilirsiniz.

%%   �RNEK 1: TEK BOYUTLU VER�LER
%   Hadi basit tek boyutlu bir cizge cizdirelim
    figure(1)   %acik degilse acar. Eger zaten aciksa, ekranin ustune getirir.
    %pause komutu ile burada beklemeye alabilirsiniz. T�klay�nca devam edecektir.
    disp('�rnek 1A - �izdirilecek');
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r.
    
    plot(x)     %Bu kadar basit!
    
    y = 2 * x;
    
    figure(1), hold on;
    disp('�rnek 1B - y ilave edilecek');%pause
    pause;          %tam durduruyorum.
    
    plot(y)     %bu da basit degil mi!
    
%%   �RNEK 2:
%   x aci olsun. Onu radyana cevirip sinus �izdirelim.
    xrad = pi .* x ./ 180;  %dikkat: vekt�r �arp�m� ".*", vekt�r bolumu "./"
    z = sin(xrad);

    disp('�rnek 2A - Sinus cizilecek');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r. 

    figure(2)
    plot(xrad, z), hold on; %sin�s� ekranda g�rd�n�z. Hadi di�erlerini de �izdirelim.
    
    disp('�rnek 2B - Digerleri cizdirilecek');%pause
    pause;          %tam durduruyorum.
    
    plot(xrad,  cos(xrad), '--')
    plot(xrad, -sin(xrad), '-.')
    plot(xrad, -cos(xrad), ':')
                            %Dikkat: x ekseni radyan degerleri vermektedir.
    %G�zel ve anla�ilir gorunmesi icin soyle de yapabilirdik.
    disp('�rnek 2C - Renkli grafikler cizdirilecek');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r. 

    figure(2), hold off, clf;   %Sekli serbest b�rakip temizleyelim.

    plot(xrad,  sin(xrad), 'r-',  'LineWidth', 4), hold on;
    plot(xrad,  cos(xrad), 'g--', 'LineWidth', 4)
    plot(xrad, -0.8 .* sin(xrad), 'b-.', 'LineWidth', 4)
    plot(xrad, -cos(xrad), 'm:',  'LineWidth', 4)
 
    %Eksen degerlerine de mudahale etmek mumkun.
    disp('�rnek 2D - Eksen degerleri ayarlanacak');%pause
    pause;          %tam durduruyorum.
    axis([-0.1, 2.1*pi, -1.1, 1.1]);
    
    %Eksen tik degerlerine de mudahale etmek mumkun.
    disp('�rnek 2E - Eksen tik degerleri');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r. 
    set(gca, 'xtick',  [0 pi 2*pi]);
    set(gca, 'ytick',  [-1 -0.8 0 0.8 1]);
    
    %Dahas� da var.
    disp('�rnek 2F - Grid �izgileri');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r. 
    grid on;
    
    %Dahas� yine var.
    disp('�rnek 2G - Basliklar');%pause
    pause;          %tam durduruyorum.
    %pause(2);      %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r. 
    title('S�N�S A�LES� B�R ARADA');
    xlabel('x (Radyan)');
    ylabel('Olculen Gerilim (Volt)');
    
    disp(' ');
    disp('>>  legend komutunu ogrenin');
    disp('>>  Ayrica fprintf komutunu ogrenin ornek yarat�n. ');
    disp(' ');
    %ODEV: legend komutunu ogreniniz.
    %       A�a��daki komutu anlay�n�z.
    %       x = plot(1:10,5*rand(10,1),'marker','square','markersize',12,...
    %           'markeredgecolor','y','markerfacecolor',[.6 0 .6],...
    %           'linestyle','-','color','r','linewidth',2); hold off

    
    
    %% �RNEK 3: �K� BOYUTLU VER�LER
    disp('�rnek 3 - 2B �izgeler - Baklava - Contour');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r.

    clear;
    Rrad    = 1 .* pi .*  [0:360] ./ 180;       %sin�s�n faz�
    lenR    = length(Rrad);
    
    x       = ones(lenR,1) * cos(Rrad);  %Dikkat: matris �arp�m�d�r.
    y       = ones(lenR,1) * sin(Rrad);  %Dikkat: matris �arp�m�d�r.
    y       = y';
    
    Baklava = zeros (size(x));      %matrisi acalim
    Baklava = sqrt ( x.^2 + y.^2);
    
    %Hadi bakalim, 2B �izgeleri birlikte inceleyelim.
    figure(3), hold off;    %pencereniz y�ksekli�in iki kat� geni�likte olsun.
    subplot(121), contour(Baklava, 'LineWidth', 3);
    subplot(121), axis('square');
    
    disp('�rnek 3 - 2B �izgeler - Baklava - 3B g�sterim');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r.

    subplot(122), mesh(Baklava);
    colormap('copper');
    %subplot(122), axis('square');
    
    %ODEV:  subplot(121) ve 
    %       subplot(122)yerine 
    %       subplot(211) ve 
    %       subplot(212)deneyin bakal�m ne oluyor?
    %       Neden subplot(33x)'i denemiyorsunuz. x yerine koyaca��n�z
    %       rakamlar kaca kadar gidecek? Her say�nin yeri nereye denk
    %       geliyor? �nceleyim bakal�m.
    
    %ODEV:  mesh yerine, surf, surfl kullan�n, farkini inceleyin.
    
    %Asagidaki komutlari degistirerek farkli cozumleri deneyebilirsiniz.
    disp('�rnek 3 - Baklava cizimi - Farkli renk / bak�� a��s� tercihi');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r.
    
    subplot(122), surfl(Baklava);
    shading('interp'); colormap('winter');
    AZ = 85; EL = 60; view(AZ,EL);
    
        
    
    %% �RNEK 4: DALGA G�STER�M�
    disp('�rnek 4 - Dalga gosterimi');%pause
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r.
        
    clear %hafizay� sil, yeniden ba�l�yoruz.
        
    t       = 0;                    %anlik foto�rafi hesapliyoruz.
    f       = 1e9;                  %1 GHz
    c       = 3e8;                  %���k h�z� = 300,000 km
    db      = c /f;                 %dalga boyu = 30 cm.
    
    %100X100l�k bir matris olu�turaca��z.
    X       = 10 .* [0: 0.3/99 : 0.3];
    Y       = 10 .* [0: 0.3/99 : 0.3];     
    len     = length(X);
    
    %Simdi dongu yapmayi inceleyelim.
    for ix = 1:len
        
        for iy = 1:len
            
            XX  = (X(ix) - 1.5) .* (X(ix) - 1.5);
            YY  = (Y(iy) - 1.5) .* (Y(iy) - 1.5);
            R   (ix,iy)    = 1e-10 + sqrt(XX + YY); %Dikkat: R=0 sorun yarat�yor.
            Att (ix,iy)    = 1 ./ R(ix,iy); %Dalgamizin 1/R ile zay�flad���n� kabul 
                                     %edelim. Biliyorum 1/R^2 olmal� ama 1/R
                                     %daha g�zel g�r�n�yor.
            faz (ix,iy) = 2 .* pi .* f .* t ...
                        - 2 .* pi ./ db .* R(ix,iy);
        end
    end
        
    Dalga   = sin(faz) .* Att;
    
    figure(4), hold off;    
    surfl(Dalga);
    shading('interp'); colormap('winter');
    AZ = 45;EL = 50; view(AZ,EL);  %Mudahale etmeyebilirsiniz de.
    
       
    
    %% �RNEK 5: DALGA HAREKET�N�N G�STER�M�
    disp('�rnek 5 - Dalga hareketinin gosterimi');%pause
    figure(4), hold off;  
    pause;       %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r.
    
    clear %hafizay� sil, yeniden ba�l�yoruz.
        
    f       = 1e9;                  %1 GHz
    c       = 3e8;                  %���k h�z� = 300,000 km
    db      = c /f;                 %dalga boyu = 30 cm.
    T       = 1/f;                  %Dalgan�n periyodu.
    t       = [0 : T/10 : T];       %s�re sadece 1 milisaniye
    lenT    = length(t);
    
    
    for it = 1 : lenT
        %100X100l�k bir matris olu�turaca��z.
        
        X       = 10 .* [0: db/99 : db];
        Y       = 10 .* [0: db/99 : db];     
        len     = length(X);
    
        %Simdi dongu yapmayi inceleyelim.
        for ix = 1:len
        
            for iy = 1:len
            
                XX  = (X(ix) - 1.5) .* (X(ix) - 10*db/2);
                YY  = (Y(iy) - 1.5) .* (Y(iy) - 10*db/2);
                R   (ix,iy)    = 1e-10 + sqrt(XX + YY); %Dikkat: R=0 sorun yarat�yor.
                Att (ix,iy)    = 1 ./ R(ix,iy); %Dalgamizin 1/R ile zay�flad���n� kabul 
                                     %edelim. Biliyorum 1/R^2 olmal� ama 1/R
                                     %daha g�zel g�r�n�yor.
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
        
    disp('�rnek 5 gosterime haz�r! ');
    pause;          %tam durduruyorum.
    %pause(2);   %ekrana bakabilmek i�in 2 saniye yeterli olacakt�r.
    
    movie(M,10,2);
        
    
    %%  ODEV 1: 
    %   A.  �stedi�inizde bu yaz�l�m� aynen kullanarak, 
    %           for it = 1 : lenT
    %       i�in, tel ustunde sinus dalgas� yarat�n�z. 
    %       Dikkat ediniz, grafik tek boyutlu olacak. 
    %
    %   B.  Ayn� �ekilde gelen dalgay� da g�steriniz.
    %
    %   C.  Her iki dalgan�n toplam�n� farkl� zamanlarda g�steriniz.
    %
    %   D.  C ��kk�ndaki sonu�lar� film halinde g�steriniz.
    %%
    
    
    
    %real(E) ile Guc miktar�ni ilerleme yonundeki mesafeye g�re �izdiriniz.
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
    
    
    
    
    

    %% Devami olacak, pek yak�nda !!
    
    
    
    
%%  SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON

