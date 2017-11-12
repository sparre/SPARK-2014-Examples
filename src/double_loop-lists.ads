pragma SPARK_Mode;

with Ada.Containers.Formal_Doubly_Linked_Lists;

package Double_Loop.Lists is
  new Ada.Containers.Formal_Doubly_Linked_Lists (Element_Type => Positive);
