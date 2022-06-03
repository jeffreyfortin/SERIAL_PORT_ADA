package body Data_Stream is

   procedure Send (Port : in out Serial_Port; PMC : PMC_Peripheral) is
      Raw_TX : UByte_Array (1 .. PMC'Size / 8) with
         Address => PMC'Address;
   begin
      Write (Port => Port, Data => Raw_TX);
   end Send;

   procedure Receive (Port : in out Serial_Port; PMC : out PMC_Peripheral) is
      Raw_TX : UByte_Array (1 .. PMC'Size / 8) with
         Address => PMC'Address;
   begin
      Read (Port => Port, Data => Raw_TX);
   end Receive;

end Data_Stream;
