USUARI=$1
CLAU=$2
PASSWORD=$USUARI

# 1. CREAR USUARI I DIRECTORI HOME
sudo useradd -m $USUARI

# 2. ASSIGNAR CONTRASENYA A L'USUARI
echo $USUARI:$PASSWORD | chpsswd

# 3.  crear direcotir .ssh  (dins /home/$USUARI)
sudo mkdir /home/$USUARI/.ssh

# 4. crear el fitxer .ssh/authorized_keys
sudo touch /home/$USUARI/.ssh/authorized_keys
# 5. ficar la clau ssh en el fitxer authorized_keys