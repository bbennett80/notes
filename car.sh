#!/bin/bash                                                                                                    
CAR1="Name of Car"                                                                                                 
CAR2="Name of Car"  

if [ ! -d "$CAR1" ]; then                                                                                      
  echo "Switching to $CAR2."                                                                                 
  mv openpilot $CAR1 && mv $CAR2 openpilot                                                                   
  echo "Deactivating $CAR1 and activating $CAR2."                             
elif [ ! -d "$CAR2"  ]; then                                                                                   
  echo "Switching to $CAR1."                                                                                 
  mv openpilot $CAR2 && mv $CAR1 openpilot                                                                   
  echo "Deactivating $CAR2 and activating $CAR1."                             
fi
