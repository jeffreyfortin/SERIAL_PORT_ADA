package Serial_Ports is

   type UByte is new Natural range 0 .. 255 with
      Size => 8;

   type UByte_Array is array (Positive range <>) of UByte;

   type Serial_Port is null record;

   procedure Read (Port : in out Serial_Port; Data : out UByte_Array);

   procedure Write (Port : in out Serial_Port; Data : UByte_Array);

end Serial_Ports;
