package body Maximum with SPARK_Mode is

   function Maximum (A : in Vector) return Integer
   is
      Max : Integer := A (A'First);
   begin
      if A'Length = 1 then
         return Max;
      end if;

      for K in A'First + 1 .. A'Last loop
         pragma Loop_Invariant
           ((for all  I in A'First .. K - 1 => A (I) <= Max)
            and
            (for some I in A'First .. K - 1 => A (I) = Max));

         if A (K) > Max then
            Max := A (K);
         end if;
      end loop;

      return Max;
   end Maximum;

end Maximum;
