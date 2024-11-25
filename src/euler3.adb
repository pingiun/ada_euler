with Ada.Text_IO;

with Ada.Numerics.Elementary_Functions;

procedure Euler3 is
   Input : Long_Integer := 600851475143;
   SqrtInput : Integer := Integer(Ada.Numerics.Elementary_Functions.Sqrt(Float(Input)));
   type SieveType is array (Positive range <>) of Boolean;
   pragma Pack (SieveType);
begin
   SqrtInput := Integer(Ada.Numerics.Elementary_Functions.Sqrt(Float(Input)));
   declare
      Sieve : SieveType(2..SqrtInput) := (others => true);
      I : Integer := 2;
      J : Integer;
      Max : Integer := 2;
   begin
      while I < SqrtInput loop
         if Sieve(I) = false then
            goto continue;
         end if;
         J := I;
         while J < SqrtInput loop
            Sieve(J) := false;
            J := J + I;
         end loop;

         if Input mod Long_Integer(I) = 0 then
            Max := I;
         end if;

         <<continue>>
         I := I + 1;
      end loop;
      Ada.Text_IO.Put_Line("Answer =" & Max'Image);
   end;
end Euler3;
