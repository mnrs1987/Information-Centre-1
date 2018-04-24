# finding running container id
conid=`docker ps -aq --filter "status=running"`
if [ "$conid" ]; then
        # Stop Container
        sudo docker stop $conid
        echo "Running container stopped.."

        # cleanup container(s)
        sudo docker rm $conid
        sudo docker container prune -f
        echo "Cleaned all containers.."

        # cleanup all images
        sudo docker rmi $(sudo docker images -q)
        echo "Cleaned all images"

        # run your container
        sudo docker run --rm -d -p 8080:8080 mnnsdocker/kuberketespocimage:latest
        echo "Tomcat docker image was started in container and InformationCentre application is up and running in port no :8080.."
        echo "Application URL : http://52.26.128.26:8080/InformationCentre"
else
	containers=`docker container ls -a | wc -l`
	if[ $containers > 1 ]; then
		# cleanup all images
        	sudo docker container prune -f
        	echo "Cleaned all containers"
	fi

	images=`docker images -q | wc -l`
	if[ $images > 0 ]; then
		# cleanup all images
        	sudo docker rmi $(sudo docker images -q)
        	echo "Cleaned all images"
	fi
	
        # run your container
        sudo docker run --rm -d -p 8080:8080 mnnsdocker/kuberketespocimage:latest
        echo "Tomcat docker image was started in container and InformationCentre application is up and running in port no :8080.."
        echo "Application URL : http://52.26.128.26:8080/InformationCentre"

fi
