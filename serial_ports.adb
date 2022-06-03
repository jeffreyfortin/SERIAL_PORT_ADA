with Ada.Text_IO; use Ada.Text_IO;

package body Serial_Ports is

   procedure Display (Data : UByte_Array) is
   begin
      Put_Line ("---- Data ----");
      for E of Data loop
         Put_Line (UByte'Image (E));
      end loop;
      Put_Line ("--------------");
   end Display;

   procedure Read (Port : in out Serial_Port; Data : out UByte_Array) is
      pragma Unreferenced (Port);
   begin
      Put_Line ("Reading data...");
      Data := (0, 0, 32, 0);
   end Read;

   procedure Write (Port : in out Serial_Port; Data : UByte_Array) is
      pragma Unreferenced (Port);
   begin
      Put_Line ("Writing data...");
      Display (Data);
   end Write;

end Serial_Ports;
