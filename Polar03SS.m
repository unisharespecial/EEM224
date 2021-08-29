%%   Polarxx.m
%   EEM423 Dersi icin hazýrlanmýþtýr. 
%   Polar (THETA, RHO) komutu kullanilarak yönlülük çizgesi gösterilmiþtir.
%   Dr. S. Gokhun Tanyer
%   23.02.13
%% YAZILIMIN TARÝHÇESÝ
%
%Polar02    130223  SS  Odev olarak verilecek surumdur.
%Polar01    130223  OK  polar plot tamam. 2B henuz yok.
%                   --  Ýlk calisma.
%%  GIRIS - Ekran
    clear;          %Hafizayý sil.
    figure(1), clf, hold off;
%%  GIRIS - Veri hazirlama
    Theta   = [0 : 0.01 : pi/2];
    Phi     = [0 : 0.01 : 2 * pi];
       
    lenTH   = length(Theta);
    lenPH   = length(Phi); 
        
    Th = zeros (lenTH, lenPH);
    Ph = zeros (lenTH, lenPH);
    R1 = zeros (lenTH, lenPH);
    R2 = zeros (lenTH, lenPH);
    
    for iTh = 1:lenTH
        
        for iPh = 1:lenPH
            
            Th(iTh, iPh)  = Theta (iTh);
            Ph(iTh, iPh)  = Phi (iPh);
            
            R1(iTh, iPh)  = sin (Th(iTh, iPh)) ;
            R2(iTh, iPh)  = sin (Th(iTh, iPh))^2 ;
           
            x2(iTh, iPh)   = R2(iTh, iPh) * sin(Th(iTh, iPh)) * cos(Ph(iTh, iPh));
            y2(iTh, iPh)   = R1(iTh, iPh) * sin(Th(iTh, iPh)) * sin(Ph(iTh, iPh));
            z2(iTh, iPh)   = R1(iTh, iPh) * cos(Th(iTh, iPh)) ;  
        end
    end
    
    surfl (x2, y2,  z2);   hold on; surfl (x2, y2, -z2); 
   
    shading('interp'); colormap('hot'); 
    axis('equal');axis([-1 1 -1 1 -0.6 0.6]);
   

    
    
    
    

    
    
    
%%  SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON SON

