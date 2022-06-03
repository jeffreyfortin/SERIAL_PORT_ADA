with Ada.Text_IO;

with Registers;
with Data_Stream;
with Serial_Ports;

procedure Test_Data_Stream is

   procedure Display_Registers is
      use Ada.Text_IO;
   begin
      Put_Line ("---- Registers ----");
      Put_Line
        ("PMC_SCER.USBCLK: " & Registers.PMC_Periph.PMC_SCER.USBCLK'Image);
      Put_Line
        ("PMC_SCDR.USBCLK: " & Registers.PMC_Periph.PMC_SCDR.USBCLK'Image);
      Put_Line ("-------------- ----");
   end Display_Registers;

   Port : Serial_Ports.Serial_Port;
begin
   Registers.PMC_Periph.PMC_SCER.USBCLK := 1;
   Registers.PMC_Periph.PMC_SCDR.USBCLK := 1;

   Display_Registers;

   Data_Stream.Send (Port => Port, PMC => Registers.PMC_Periph);

   Data_Stream.Receive (Port => Port, PMC => Registers.PMC_Periph);

   Display_Registers;
end Test_Data_Stream;
