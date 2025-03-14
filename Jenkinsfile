pipeline {
    agent any
     parameters{
        //string(name:'LOGIN',description:'Identificador unico compuesto del nombre y el apellido.')
        string(name:'NOMYAPE',description:'Nombre y Apellido del usuario.')
        string(name:'DEPARTAMENTO',description:'Departamento al que pertenece.')
    }

    stages {
        stage('Build') {
            steps {
                script{

                echo "Ingrese Nombre y Apellido del usuario"
                sh = ( read NOMYAPE)
                sh = ( echo "Ingrese el departamento al cual pertenece")
                sh = (read DEPARTAMENTO)
                sh = (sudo useradd -g $DEPARTAMENTO $LOGIN)
                sh = (sudo passwd $LOGIN)
                sh = (sudo passwd -e $LOGIN)
                sh = (echo "La Contraseña temporal es .")
            }
        }
    }

    post {
          always{
            cleanWs()
        }
    }
}
}
