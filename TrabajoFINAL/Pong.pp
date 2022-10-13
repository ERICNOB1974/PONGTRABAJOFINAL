program trabajofinalPONG;
uses crt,Graph;
var
    leetecla:char;
    driver, modo: integer;
    PuntoyPalIzq1, PuntoyPalIzq2: integer;
    PuntoyPalDer1, PuntoyPalDer2: integer;
begin
    PuntoyPalIzq1:= 185;
    PuntoyPalIzq2:= 285;
    PuntoyPalDer1:= 185;
    PuntoyPalDer2:= 285;
    Driver := Vga;
    Modo:= VgaHi;
    InitGraph (Driver, modo, 'C:\Users\ericn\Desktop\TrabajosPascal\TrabajoFINAL');
    Line (10,15,630,15);                                      //Linea de arriba de la cancha
    Line (10,465,630,465);                                   //Linea de abajo de la cancha
    bar(25,PuntoyPalIzq1,35,PuntoyPalIzq2);                   //Palito izq
    bar (600,PuntoyPalDer1,610,PuntoyPalDer2);                 //Palito der
    Line (319,15,319,463);                                  //Linea del medio
    SetFillStyle (1,red);                                   //Color de la pelota
    fillellipse (319,239,6,6);                              //Pelota
    ReadLn ();
    While (leetecla <> #27) do
        begin
            leetecla:= ReadKey;
                If (leetecla= 'w' ) then
                            begin
                                If (PuntoyPalIzq1 >= 25) then
                                begin
                                    PuntoyPalIzq1:= PuntoyPalIzq1 - 10;
                                    SetFillStyle (1,white);                            {Tecla 'w'}
                                    bar (25,PuntoyPalIzq1,35,PuntoyPalIzq2);
                                    SetFillStyle (1,black);
                                    bar (25,PuntoyPalIzq2-10,35,PuntoyPalIzq2);
                                    PuntoyPalIzq2:= PuntoyPalIzq2 - 10;
                                    Line (10,15,630,15);                //Linea superior de la cancha
                                    Line (10,465,630,465);              //Linea inferior de la cancha
                                end;
                            end;
                If (leetecla= 's' ) then
                            begin
                                If (PuntoyPalIzq2 <= 460) then
                                begin
                                    PuntoyPalIzq2:= PuntoyPalIzq2 + 10;
                                    SetFillStyle (1,white);                               {Tecla 's'}
                                    bar (25,PuntoyPalIzq1,35,PuntoyPalIzq2);
                                    SetFillStyle (1,black);
                                    bar (25,PuntoyPalIzq1,35,PuntoyPalIzq1+10);   
                                    PuntoyPalIzq1:= PuntoyPalIzq1 + 10; 
                                    Line (10,15,630,15);                             //Linea superior de la cancha
                                    Line (10,465,630,465);                            //Linea inferior de la cancha
                                end;
                            end;
                If (leetecla= #$48 ) then
                            begin
                                If (PuntoyPalDer1 >= 25) then
                                begin
                                    PuntoyPalDer1:= PuntoyPalDer1 - 10;             { Flechita para arriba }
                                    SetFillStyle (1,white);                                                     
                                    bar (600,PuntoyPalDer1,610,PuntoyPalDer2);
                                    SetFillStyle (1,black);
                                    bar (600,PuntoyPalDer2-10,610,PuntoyPalDer2);
                                    PuntoyPalDer2:= PuntoyPalDer2 - 10;
                                    Line (10,15,630,15);                             //Linea superior de la cancha
                                    Line (10,465,630,465);                          //Linea inferior de la cancha
                                end;
                            end;
                If (leetecla= #$50) then
                            begin
                                If (PuntoyPalDer2 <= 460) then
                                begin
                                    PuntoyPalDer2:= PuntoyPalDer2 + 10;
                                    SetFillStyle (1,white);
                                    bar (600,PuntoyPalDer1,610,PuntoyPalDer2);              {Flechita para abajo}
                                    SetFillStyle (1,black);
                                    bar (600,PuntoyPalDer1,610,PuntoyPalDer1+10);   
                                    PuntoyPalDer1:= PuntoyPalDer1 + 10; 
                                    Line (10,15,630,15);                            //Linea superior de la cancha
                                    Line (10,465,630,465);                          //Linea inferior de la cancha
                                end;
                            end;
        end;
    CloseGraph;
end.


