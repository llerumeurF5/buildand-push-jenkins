node {

   def registryProjet='llerumeurf5/'
   def IMAGE="${registryProjet}app:${version}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
          }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 8999:80") { c ->
       
          }
    }

    stage('Push') {
       docker.withRegistry('https://registry.ludovic.io/' , 'harbor_id') {
              img.push 'latest'
              img.push()
          }
    }

}

