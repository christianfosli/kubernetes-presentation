KUBE_CLUSTER=docker-desktop

all: docker_build kube_deploy

docker_build:
	@echo "Building container image"
	docker build -t kubernetes-presentation .

kube_deploy:
	@echo "Switching to cluster ${KUBE_CLUSTER}"
	kubectl config use-context ${KUBE_CLUSTER}
	@echo "Applying manifests with kubernetes"
	kubectl apply -f deployment.yaml
	kubectl apply -f service-lb.yaml

clean:
	@echo "Switching to cluster ${KUBE_CLUSTER}"
	kubectl config use-context ${KUBE_CLUSTER}
	@echo "Cleaning up..."
	kubectl delete -f service-lb.yaml
	kubectl delete -f deployment.yaml
	docker image rm kubernetes-presentation
