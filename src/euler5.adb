with Ada.Text_IO;

procedure Euler5 is
   I : Integer := 20;

   function FullyDivisible ( num : Integer ) return Boolean is
   begin
      for J in 2 .. 20 loop
         if num mod J /= 0 then
            return false;
         end if;
      end loop;
      return true;
   end FullyDivisible;
begin
   while not FullyDivisible( I ) loop
      I := I + 20;
   end loop;
   Ada.Text_IO.Put_Line("Answer =" & I'Image);
end Euler5;
