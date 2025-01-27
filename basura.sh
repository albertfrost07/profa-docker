#!/bin/bash                                                                                                                                
# Funci..n para calcular el factor de escala                                                                                               
# basado en el par..metro de entrada                                                                                                       
# Un valor m..s alto indica un consumo m..s r..pido                                                                                        
calcular_factor_escala() {                                                                                                                 
  factor_escala=$((10 ** $1))                                                                                                              
  echo $factor_escala                                                                                                                      
}                                                                                                                                          
# Obtener el par..metro de "velocidad de consumo"                                                                                          
velocidad="$1"                                                                                                                             
# Validar el par..metro de entrada                                                                                                         
if [ -z "$velocidad" ]; then                                                                                                               
  echo "Debe proporcionar un valor num..rico para^K        la velocidad de consumo."                                                       
  exit 1                                                                                                                                   
fi                                                                                                                                         
# Calcular el factor de escala                                                                                                             
factor_escala=$(calcular_factor_escala "$velocidad")                                                                                       
# Bucle infinito para consumir recursos                                                                                                    
while true; do                                                                                                                             
  # Consumir CPU                                                                                                                           
  for i in $(seq 1 $factor_escala); do                                                                                                     
    # Operaciones in..tiles para consumir CPU                                                                                              
    ((a++))                                                                                                                                
  done                                                                                                                                     
  # Consumir memoria                                                                                                                       
  declare -a array                                                                                                                         
  for i in $(seq 1 $factor_escala); do                                                                                                     
    array+=("$i")                                                                                                                          
  done                                                                                                                                     
  # Esperar un segundo para controlar                                                                                                      
  # la velocidad                                                                                                                           
  sleep 1                                                                                                                                  
done 