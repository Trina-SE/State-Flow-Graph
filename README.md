# State-Flow-Graph
State Flow Graph for the PetClinic website using Crawljax.
# How to Run Petclinic Website
- Nevigate to fse2019->petclinic folder
- Open Docker
- Then in terminal command: docker pull dockercontainervm/petclinic:latest
- Then command: docker run -it --workdir=/home/spring-petclinic-angularjs --expose 8080 --expose 3306 -p 3000:8080 -p 3306:3306 dockercontainervm/petclinic:latest bash
- Then command: ./run-services-docker.sh
- Then in your browser - go to http://localhost:3000 , then you'll see the website!
