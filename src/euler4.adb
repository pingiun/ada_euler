with Ada.Text_IO;
with Ada.Strings.Fixed;

procedure Euler4 is
   Largest : Integer := 0;
   Product : Integer;

   function Reverse_It (Item : String) return String is
      Result : String (Item'Range);
   begin
      for I in Item'range loop
         Result (Result'Last - I + Item'First) := Item (I);
      end loop;
      return Result;
   end Reverse_It;

   function IsPalindrome(X : Positive) return Boolean is
      Img : String := Ada.Strings.Fixed.Trim(X'Image, Ada.Strings.Both);
      ImgReverse : String := Reverse_It(Img);
   begin
      return Img = ImgReverse;
   end IsPalindrome;
begin
   for I in 100 .. 999 loop
      for J in 100 .. 999 loop
         Product := I * J;
         if Product > Largest and IsPalindrome(Product) then
            Largest := Product;
         end if;
      end loop;
   end loop;
   Ada.Text_IO.Put_Line("Answer =" & Largest'Image);
end Euler4;
