MODULE MainModule
    PERS num nAntal:=0;
    PERS num nType:=0;
    PERS num varZ:=0;
    PERS num varZCounter:=0;
    PERS num varX:=0;
    PERS num varY:=0;
    !CONST robtarget UdgangPos:=[[342.70,0.00,376.36],[5.8086E-8,0,-1,0],[0,0,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	PERS robtarget p20:=[[342.70,0.00,0.56],[5.94159E-8,2.65924E-30,1,2.10468E-31],[0,0,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!PERS robtarget p30:=[[342.70,200.28,0.56],[1.19502E-7,6.67535E-8,1,2.45704E-8],[0,-1,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!PERS robtarget p40:=[[550.25,200.28,0.56],[6.16107E-8,-1.77398E-8,1,-1.12879E-8],[0,-1,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!PERS robtarget p50:=[[550.25,-274.17,0.56],[1.20042E-7,6.79573E-9,1,-3.03003E-8],[-1,0,-1,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
	!PERS robtarget p60:=[[345.29,-274.17,0.56],[1.63644E-8,3.67595E-8,1,3.67745E-8],[-1,0,-1,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    !PERS robtarget p70:=[[342.70,-0.00,0.56],[5.94159E-8,2.65924E-30,1,2.10468E-31],[0,0,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];
    PERS robtarget p80:=[[342.70,-0.00,0.56],[5.94159E-8,2.65924E-30,1,2.10468E-31],[0,0,0,0],[9E+9,9E+9,9E+9,9E+9,9E+9,9E+9]];


    PROC main()
        IF nType = 1 THEN 
            cirkel;
        ELSEIF nType = 2 THEN
            firekant;
        ELSEIF nType = 3 THEN
            trekant;
        ENDIF
	ENDPROC
    
    PROC cirkel() !Kode for Cirkel, og de antal den skal k�re.
        nType:=0; !nulstillet Type Tallet.
        varZCounter:= varZ; !S�tter ny h�jde den skal starte p�.
        MoveL  Offs(p20,0,0,varZcounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver Cirkel.
        FOR i FROM 0 TO nAntal DO !For Loop, fra en til "nAntal" DO
            TPErase; !Sletter TPErease for at kunne skrive igen.
            !TPWrite "Laver Cirkel"; !Skriver "Laver Cirkkel".
            MoveC Offs(p20,100,100,varZCounter), Offs(p80,200,0,varZCounter), v1000, fine, Tusch3; !F�rste halvdel af Cirklen.
            MoveC Offs(p20,100,-100,varZCounter), Offs(p80,0,0,varZCounter), v1000, fine, Tusch3; !Anden halvdel af Cirklen.
            varZCounter:= varZCounter+varZ;
            MoveL  Offs(p20,0,0,varZCounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver Cirkel.
        ENDFOR!Kodeslut For Loop.
        varZCounter:=0;!varZCounter af routine Value bliver nulstillet med tallet 0.
        varZ:=0; !varZ af routine Value bliver nulstillet med tallet 0.
        nAntal:=0; !Antal af routine Value bliver nulstillet med tallet 0.
        !MoveL UdgangPos, v1000, z50, Tusch3; !Udgangspunkt
	ENDPROC!Kodeslut Cirkel.
      
    PROC firekant() !Kode for Firekant, og de antal den skal k�re. Samme kommentar ovenover.
        nType:=0; !nulstillet Type Tallet.
        varZCounter:= varZ; !S�tter ny h�jde den skal starte p�.
        MoveL  Offs(p20,0,0,varZCounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver firekant.
        FOR i FROM 0 TO nAntal DO
            TPErase;
            !TPWrite "Laver Firekant";
            MoveL Offs(p20,varY,0,varZCounter), v1000, fine, Tusch3;
            MoveL Offs(p20,varY,varX,varZCounter), v1000, fine, Tusch3;
            MoveL Offs(p20,varY,varX,varZCounter), v1000, fine, Tusch3;
            MoveL Offs(p20,0,varX,varZCounter), v1000, fine, Tusch3;
            MoveL Offs(p20,0,0,varZCounter), v1000, fine, Tusch3;
            varZCounter:= varZCounter+varZ;
            !En ANDEN M�DE AT LAVE FIREKANT P�.
            !MoveL p30, v1000, fine, Tusch3;
            !MoveL p40, v1000, fine, Tusch3;
            !MoveL p50, v1000, fine, Tusch3;
            !MoveL p60, v1000, fine, Tusch3;
            !MoveL p70, v1000, fine, Tusch3;
            MoveL  Offs(p20,0,0,varZCounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver firekant.
        ENDFOR
        varZCounter:=0;!varZCounter af routine Value bliver nulstillet med tallet 0.
        varX:=0;
        varY:=0;
        varZ:=0; !varZ af routine Value bliver nulstillet med tallet 0.
        nAntal:=0; !Antal af routine Value bliver nulstillet med tallet 0.
        !MoveL UdgangPos, v1000, z50, Tusch3; !Udgangspunkt
	ENDPROC
    
    !PROC Rektangel() !Kode for Rektangel, og de antal den skal k�re. Samme kommentar ovenover.
       !nType:=0; !nulstillet Type Tallet.
        !varZCounter:= varZ; !S�tter ny h�jde den skal starte p�.
        !MoveL  Offs(p20,0,0,varZCounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver rektangel.
        !FOR i FROM 0 TO nAntal DO
            !TPErase;
            !TPWrite "Laver Rektangel";
            !MoveL Offs(p30,0,0,varZCounter), v1000, fine, Tusch3;
            !MoveL Offs(p40,0,0,varZCounter), v1000, fine, Tusch3;
            !MoveL Offs(p50,0,0,varZCounter), v1000, fine, Tusch3;
            !MoveL Offs(p60,0,0,varZCounter), v1000, fine, Tusch3;
            !MoveL Offs(p70,0,0,varZCounter), v1000, fine, Tusch3;
            !varZCounter:= varZCounter+varZ;
            !MoveL Offs(p20,0,0,varZCounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver rektangel
           
        !ENDFOR
        !varX:=0;
        !varY:=0;
        !varZCounter:=0;!varZCounter af routine Value bliver nulstillet med tallet 0.
        !varZ:=0; !varZ af routine Value bliver nulstillet med tallet 0.
        !nAntal:=0; !Antal af routine Value bliver nulstillet med tallet 0.
        !MoveL UdgangPos, v1000, z50, Tusch3; !Udgangspunk
	!ENDPROC
    
    PROC trekant() !Kode for trekant, og de antal den skal k�re. Samme kommentar ovenover.    
        nType:=0; !nulstillet Type Tallet.
        varZCounter:= varZ; !S�tter ny h�jde den skal starte p�.
        MoveL  Offs(p20,0,0,varZCounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver firekant.
        FOR i FROM 0 TO nAntal DO
            TPErase;
            !TPWrite "Laver trekant";
            MoveL Offs(p20,varY,0,varZCounter), v1000, fine, Tusch3;
            MoveL Offs(p20,varY,varX,varZCounter), v1000, fine, Tusch3;
            !MoveL Offs(p20,varY,varX,varZCounter), v1000, fine, Tusch3;
            MoveL  Offs(p20,0,0,varZCounter), v1000, fine, Tusch3;
            varZCounter:= varZCounter+varZ;
            MoveL  Offs(p20,0,0,varZCounter), v1000, fine, Tusch3; !udgangspunkt f�r den laver trekant.
        ENDFOR
        varZCounter:=0;!varZCounter af routine Value bliver nulstillet med tallet 0.
        varX:=0;
        varY:=0;
        varZ:=0; !varZ af routine Value bliver nulstillet med tallet 0.
        nAntal:=0; !Antal af routine Value bliver nulstillet med tallet 0.
        !MoveL UdgangPos, v1000, z50, Tusch3; !Udgangspunkt
	ENDPROC
    
ENDMODULE