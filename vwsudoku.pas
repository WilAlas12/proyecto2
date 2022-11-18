program vwsudoku;
{Nombre: Williams Alas, C.I: 30 539 519 , Programa para resolver sudoku.}
 uses crt;
var
 cuad:array[1..9,1..9] of byte;
 opcion,num,i,j:integer;	
	
procedure insertarnumero; {Procedure para insertar numero}
	var
	 i,j,num :integer;
begin 
			textcolor(white);	
		{el numero es diferente de cero se repite}	
			repeat
							write('Introduzca el numero a insertar: ');
							readln(num);
			Until ( num > 0 ) and (num < 10) ;		
			
		{si la posicion es diferente de cero se repite}		
			Repeat
				write('Introduzca la posicion de la columna: ');
							readln(i);
			Until ( i <> 0 );

		{si la posicion es menor a 1 y mayor a 9 el numero no puede ser colocado}	
				if (i < 1) or (i > 9) then
		repeat	
				begin
          writeln('Columna incorrecta. Verifique su opcion.');
					readln(i);
					end;		
		until (i >= 1 ) and (i <= 9);			
				Repeat
				
			write('Introduzca la posicion de la fila: ');
				readln(j); 
			{si la fila es menor a 1 o mayor 9 debe colocar el numero nuevament}	
						if (j < 1) or (j > 9) then
					        begin
          writeln('Fila incorrecta. Verifique su opcion.');
						  readln(j);
							end;		
			until ( j <> 0 );	
				
    if (cuad[i,j] <> 0) then
				begin
        writeln('Esa casilla no se puede editar.');	
				end;
				readkey();
			clrscr();		 
	 cuad[i,j]:=num;	
		
			
	end;
				
				
	begin
			Clrscr();
		repeat	
	gotoxy(1,1);
		textcolor(white);
	cuad[1,1]:=1;	cuad[3,3]:=9;	cuad[8,2]:=2;	cuad[6,3]:=7;	cuad[7,5]:=2;	cuad[3,6]:=7;
	cuad[9,7]:=8;	cuad[5,9]:=3;	cuad[4,7]:=6;	cuad[5,6]:=1;	cuad[3,7]:=1;
	cuad[7,8]:=5;	cuad[1,5]:=3;	cuad[1,9]:=9;	cuad[4,5]:=8;	cuad[9,4]:=7;	cuad[5,1]:=5;		
				
	textcolor(lightblue);
	 
	write(' | ');
		TextColor(lightcyan);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(Lightcyan);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('+-=*-----*=*-----*=*-----*+');			
					end;		
		end;
textcolor(white);
		writeln('Menu :');
			writeln('1 - Insertar un numero en el sudoku');
			writeln('2 - Rendirse');
		writeln('0 - Salir');
			writeln;
			write('Opcion: ');		
			readln(opcion);
			
	case opcion of
		
				1 :insertarnumero;
				
		2: begin
 			Clrscr();
	gotoxy(1,1);
		textcolor(white);
	cuad[1,1]:=1; cuad[3,3]:=9; cuad[8,2]:=2; cuad[6,3]:=7; cuad[7,5]:=2; cuad[3,6]:=7; cuad[2,1]:=2; cuad[3,1]:=3; cuad[2,9]:=7;
	cuad[9,7]:=8; cuad[9,9]:=2;	cuad[5,9]:=3; cuad[4,7]:=6;	cuad[5,6]:=1; cuad[3,7]:=1; cuad[1,2]:=4; cuad[1,3]:=7; cuad[1,4]:=2;
	cuad[7,8]:=5; cuad[1,5]:=3;	cuad[1,9]:=9; cuad[4,5]:=8;	cuad[9,4]:=7; cuad[5,1]:=5;	cuad[1,6]:=8; cuad[1,7]:=5; cuad[1,8]:=6;
	cuad[9,8]:=1; cuad[2,8]:=4; cuad[2,6]:=9; cuad[2,5]:=6; cuad[2,4]:=1; cuad[2,3]:=8; cuad[3,2]:=6; cuad[3,1]:=3; cuad[2,1]:=2;
	cuad[2,2]:=5; cuad[2,7]:=3; cuad[3,4]:=4; cuad[3,5]:=5; cuad[3,8]:=2; cuad[3,9]:=8;	cuad[4,1]:=4; cuad[4,2]:=7; cuad[4,3]:=1;
	cuad[4,4]:=3; cuad[4,6]:=2; cuad[4,7]:=6; cuad[4,8]:=9; cuad[4,9]:=5; cuad[7,1]:=7; cuad[7,2]:=1; cuad[7,3]:=4; cuad[7,4]:=8;
	cuad[7,6]:=3; cuad[7,7]:=9; cuad[7,9]:=6; cuad[5,2]:=8; cuad[5,3]:=2; cuad[5,4]:=6; cuad[5,5]:=9; cuad[5,7]:=4; cuad[5,8]:=7;
	cuad[6,1]:=6; cuad[6,2]:=9; cuad[6,4]:=5; cuad[6,5]:=7; cuad[6,6]:=4; cuad[6,7]:=2; cuad[6,8]:=8; cuad[6,9]:=1; cuad[8,1]:=8;
	cuad[8,3]:=5; cuad[8,4]:=9; cuad[8,5]:=1; cuad[8,6]:=6; cuad[8,7]:=7; cuad[8,8]:=3; cuad[8,9]:=4; cuad[9,1]:=9; cuad[9,2]:=3;
	cuad[9,3]:=6; cuad[9,5]:=4; cuad[9,6]:=5;
					textcolor(lightblue);
	 
	write(' | ');
		TextColor(lightcyan);
	write(' 1 2 3   4 5 6   7 8 9');
				TextColor(lightblue);
	writeln(' |');
		writeln('+-=*-----*=*-----*=*-----*+');	
for j := 1 to 9 do
		begin
				for i := 1 to 9 do
			begin
					If (i = 1) Then
				begin
					TextColor(lightblue);
					write('|');
					TextColor(Lightcyan);
					write(j);
					TextColor(lightblue);
					write('|');					
				end;
				TextColor(lightblue);
				if  (cuad[i ,j] <> 0) Then
			write(' ', cuad[i ,j])
				else
				 write('  ');
				if ((i mod 3) = 0) Then
						begin
							TextColor(lightblue);
							write(' |');
						end;
		end;
			Writeln;
				if ((j mod 3) = 0) Then
					begin
						TextColor(lightblue);
						writeln('+-=*-----*=*-----*=*-----*+');	
					end;	
		end;
	textcolor(white);	
	writeln(' - Te has rendido que pena - ');	
	
		end;						
			0 : writeln;
				else writeln('elige uno de los parametros asignados.');
			end;
		until ( opcion = 0 );
			clrscr();
			end.
