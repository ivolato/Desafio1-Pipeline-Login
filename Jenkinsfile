pipeline {
    agent any
     parameters{
        //string(name:'LOGIN',description:'Identificador unico compuesto del nombre y el apellido.')
        string(name:'NOMYAPE',description:'Nombre y Apellido del usuario.')
        choice(name:'DEPARTAMENTO',
                choices:['Contabilidad','Finanzas','Tecnologia'],
                description:'Departamento al que pertenece.')
    }

    stages {
        stage('Build') {
            steps {
                script{

                echo "Ingrese Nombre y Apellido del usuario"
                //read NOMYAPE
                echo "Ingrese el departamento al cual pertenece"
                //read DEPARTAMENTO
                sh 'LOGIN=$NOMYAPE-$DEPARTAMENTO'
                sh 'useradd -g $DEPARTAMENTO $LOGIN'
                sh 'passwd $NOMYAPE'
                sh 'passwd -e $NOMYAPE'
                echo "La Contraseña temporal es LOGIN."
                sh 'LOGIN=$NOMYAPE-$GRUPO'
                sh 'useradd -g $GRUPO $LOGIN'
                //Generar y asignar la contraseña
                sh 'PASSWORD=$(openssl rand -base64 8)'
                sh '"$LOGIN:$PASSWORD" | chpasswd'
                sh 'passwd -e $LOGIN'
                //Mostrar la contraseña
                echo "-----------------------------------------"
                echo "Usuario creado: $LOGIN"
                echo "Contraseña: $PASSWORD"
                echo "-----------------------------------------"
                echo "Al iniciar sesión por primera vez deberá cambiarla."
                }
            }
        }
    }

    post {
          always{
            cleanWs()
        }
    }
}
