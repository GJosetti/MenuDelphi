program Primeiro_teste_16_07;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;



procedure MostrarMenu;
begin

  WriteLn('');
  WriteLn(' -- Menu ---');
  WriteLn('| 1-Login   |');
  WriteLn('| 2-Cadastro   |');
  WriteLn('| 9-Sair    |');
  WriteLn(' -----------');

end;

 const senhaAdmin: String = 'Admin';
        usuarioAdmin:String = 'Admin';


function LoginValido(usuario,senha: String) :Boolean;
begin

  Result := (usuario = usuarioAdmin) and (senha = senhaAdmin)

end;



var i :Integer;


procedure LoadView;
begin

  for i := 0 to 4 do begin

          Sleep(500);
          Write('.') ;

  end;
          exit;


end;







   //Variaveis Main
  var senhaUsuario, loginUsuario, opcaoUsuario: String;








  begin

  while True do begin

    try

      //Menu
      MostrarMenu;
      //Pegar Input do usu�rio
      ReadLn(opcaoUsuario);

      if (opcaoUsuario = '1') then begin

        WriteLn('Digite seu usu�rio');
        ReadLn(loginUsuario);
        WriteLn('Digite sua senha');
        ReadLn(senhaUsuario);

        if LoginValido(loginUsuario,senhaUsuario) then
        begin

          Write('Login Realizado com sucesso');
          LoadView;
          exit;

        end else begin

          Write('Login Inv�lido :(');
          LoadView;
          continue;
        end;





      end else if (opcaoUsuario = '9') then
        begin


          Write('Saindo');

          LoadView;

          exit;

        end else begin

        WriteLn('Selecione uma Op��o v�lida');
        continue;

        end;






    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;

  end;






end.
