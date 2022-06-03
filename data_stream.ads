with Serial_Ports; use Serial_Ports;
with Registers;    use Registers;

package Data_Stream is

   procedure Send (Port : in out Serial_Port;
                   PMC  :        PMC_Peripheral);

   procedure Receive (Port : in out Serial_Port;
                      PMC  :    out PMC_Peripheral);

end Data_Stream;