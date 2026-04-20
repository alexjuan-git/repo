USUARI=$1
KEY=$2
PASSWORD=$USUARI

# 1. CREAR USUARI I DIRECTORI HOME
useradd -m $USUARI

# 2. ASSIGNAR CONTRASENYA A L'USUARI
echo $USUARI:$PASSWORD | chpasswd

# 3.  crear direcotir .ssh  (dins /home/$USUARI)
cd /home/$USUARI
mkdir .ssh
# 4. crear el fitxer .ssh/authorized_keys

cd .ssh
touch authorized_keys
echo "$KEY" > .ssh/authorized_keys

# 5. ficar la clau ssh en el fitxer authorized_keys
chown $USUARI:$USUARI -R .ssh
chmod 700 .ssh
chmod 600 .ssh/authorized_keys
