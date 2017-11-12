with Ada.Integer_Text_IO;

procedure Maximum.Run is
   Example        : constant Vector (-1 .. +1) := (-1 => 1,
                                                    0 => 0,
                                                   +1 => 1);
   Largest_Sample : constant Integer := Maximum (Example);
begin
   Ada.Integer_Text_IO.Put (Largest_Sample);
end Maximum.Run;
