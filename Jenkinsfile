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
                def LOGIN = "${params.NOMYAPE}-${params.DEPARTAMENTO}"
                sh "sudo useradd -g '${params.DEPARTAMENTO}' '${LOGIN}'"
                //Generar y asignar la contraseña
                def PASSWORD = sh(script: 'openssl rand -base64 8', returnStdout: true).trim()
                sh "${LOGIN}:$PASSWORD | chpasswd"
                sh "passwd -e '${LOGIN}'"
                //Mostrar la contraseña
                echo "-----------------------------------------"
                echo "Usuario creado: ${LOGIN}"
                echo "Contraseña: ${PASSWORD}"
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
