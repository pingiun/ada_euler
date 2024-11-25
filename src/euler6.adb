with Ada.Text_IO;

procedure Euler6 is
   SumSquares : Integer := 0;
   SquareSum : Integer := 0;
   Result : Integer;
begin
   for I in 1..100 loop
      SumSquares := SumSquares + I * I;
   end loop;
   for I in 1..100 loop
      SquareSum := SquareSum + I;
   end loop;
   SquareSum := SquareSum * SquareSum;
   Result := SquareSum - SumSquares;
   Ada.Text_IO.Put_Line("Answer =" & Result'Image);
end Euler6;
