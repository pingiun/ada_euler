with Ada.Text_IO;
with Ada.Numerics.Elementary_Functions;

procedure Euler7 is
   type SieveType is array (Positive range <>) of Boolean;
   pragma Pack (SieveType);
   Input : constant Integer := 200_000;

   Sieve : SieveType(2..Input) := (others => true);
   SqrtInput : Integer := Integer(Ada.Numerics.Elementary_Functions.Sqrt(Float(Input)));
   Found : Integer := 0;
   I : Integer := 2;
   J : Integer := 2;
begin
   while I < Input loop
      if Sieve(I) = false then
         goto continue;
      end if;
      J := I;
      while J < Input loop
         Sieve(J) := false;
         J := J + I;
      end loop;

      Found := Found + 1;
      if Found = 10_001 then
         exit;
      end if;

      <<continue>>
      I := I + 1;
   end loop;
   Ada.Text_IO.Put_Line("Answer =" & I'Image);
end Euler7;
