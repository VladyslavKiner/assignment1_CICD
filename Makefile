run:
	kubectl apply -f back-deployment.yaml,back-service.yaml,data-deployment.yaml,data-service.yaml,front-deployment.yaml,front-service.yaml,pvc.yml,secrets.yaml
fill-db:
	kubectl apply -f data-script-deployment.yaml
stop:
	kubectl delete -f back-deployment.yaml,back-service.yaml,data-deployment.yaml,data-service.yaml,front-deployment.yaml,front-service.yaml,data-script-deployment.yaml
clean: stop
	kubectl delete -f pvc.yml