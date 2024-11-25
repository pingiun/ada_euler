with Ada.Text_IO;

procedure Euler1 is
   Sum : Integer := 0;
begin
   for I in 1 .. 999 loop
      if I mod 3 = 0 then
         Sum := Sum + I;
      elsif I Mod 5 = 0 then
         Sum := Sum + I;
      end if;
   end loop;
   Ada.Text_IO.Put_Line("Answer =" & Sum'Image);
end Euler1;
