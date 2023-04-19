i=0
program_request () {
  TARJETA=$(ruby -e 'puts (0...15).map { rand(10) }.join')
  FECHA="$(ruby -e 'puts rand(11) + 1')/$(ruby -e 'puts rand(9) + 22')"
  CVV=$(ruby -e 'puts (0...3).map{ rand(10) }.join')
  CEDULA=$(ruby -e 'puts (0...10).map { rand(10) }.join')
  TELEFONO="3$(ruby -e 'puts [00, 10, 11, 16, 21, 22].sample')$(ruby -e 'puts (0...7).map { rand(10) }.join')"
  CIUDAD=$(shuf -n 1 ciudades.txt | cut  -f 3)
  NOMBRE=$(shuf -n 1 nombres.txt)
  APELLIDO=$(shuf -n 1 apellidos.txt)
  SAPELLIDO=$(shuf -n 1 apellidos.txt)
  DIRECCION="$(ruby -e 'puts %w[Calle Carrera Transversal Circular Avenida Cll Cra CLL KRA CRA AV Av CR Tr].sample') $(($RANDOM % 99)) $(ruby -e 'puts %w[# nro n Numero N].sample') $(($RANDOM % 99)) - $(($RANDOM % 99))"
  USER_AGENT=$(shuf -n 1 user-agents.txt)

  # Optionally add random delay of up to 10 seconds
  # SLEEP_TIME=$(($RANDOM % 10))
  # echo "[$i] Sleeping for $SLEEP_TIME"
  # sleep $SLEEP_TIME


  # Send curl request here
  # echo "[$i] Sending request"
}

while true
do
  program_request
  i=$(($i+1))
done
