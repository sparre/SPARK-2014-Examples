with Ada.Containers;

with Double_Loop.Lists;

procedure Double_Loop.Run with SPARK_Mode is
   use all type Ada.Containers.Count_Type;

   Data : Lists.List (Capacity => Outer_Limit * Inner_Limit);

begin
   Lists.Clear (Data);

   Outer :
   for Y in Ada.Containers.Count_Type range 1 .. Outer_Limit loop

      Inner :
      for X in Ada.Containers.Count_Type range 1 .. Inner_Limit loop
         Lists.Prepend (Container => Data,
                        New_Item  => 17);

         pragma Loop_Invariant
           (Lists.Length (Data) = (Y - 1) * Inner_Limit + X);
      end loop Inner;

      pragma Loop_Invariant (Lists.Length (Data) = Y * Inner_Limit);
   end loop Outer;
end Double_Loop.Run;
