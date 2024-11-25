with Ada.Text_IO;

procedure Euler2 is
   Fib_old : Integer := 0;
   Fib_new : Integer := 1;
   Tmp : Integer;
   Sum : Integer := 0;
begin
   while Fib_old < 4_000_000 loop
      if Fib_old mod 2 = 0 then
         Sum := Sum + Fib_old;
      end if;

      Tmp := Fib_new;
      Fib_new := Fib_old + Fib_new;
      Fib_old := Tmp;
   end loop;
   Ada.Text_IO.Put_Line("Answer =" & Sum'Image);
end Euler2;
