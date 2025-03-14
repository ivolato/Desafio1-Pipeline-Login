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
                read NOMYAPE
                echo "Ingrese el departamento al cual pertenece"
                read DEPARTAMENTO
                sudo useradd -g $DEPARTAMENTO $NOMYAPE
                sudo passwd $NOMYAPE
                sudo passwd -e $NOMYAPE
                echo "La Contraseña temporal es ."
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
