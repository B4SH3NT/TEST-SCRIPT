# CARGAR VAR

anim_apt() {

  for i in {1..5}; do
     echo "Updateando [-  ]"
     sleep 0.5
     clear
     echo "Updateando [-- ]"
     sleep 0.5
     clear
     echo "Updateando [---]"
     sleep 0.5
     clear 
  done 

}

def_choice_apt() {

  anim_apt
   apt update -y > /dev/null 2>&1
   
    wait
    kill $! > /dev/null 2>&1

}

# CARGAR PREGUNTAS
echo "1] UPDATEAR APT"
read -p "> " Choice

if [[ "$Choice" = "1" ]]; then
   def_choice_apt
  else
   echo "Incorrecto, elija entre '1' | '5' "
fi