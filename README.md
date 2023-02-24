# Kubernetes presentation

Slide deck for a presentation I'm giving.

## TODO

- [x] Add remaining slides

- [x] Add Dockerfile

- [x] Add kubernetes manifests so that we can run the presentation in kubernetes

## Run presentation locally

git clone the repo then

* Using vite (for development)

  ```bash
  npm run dev
  # Open http://localhost:5173 in your browser to view the presentation
  ```

* OR using kubernetes with Docker Desktop

  ```bash
  make
  # Open http://localhost in your browser to view the presentation
  # ^ This assumes port 80 is available on your computer for Docker Desktop to bind to
  # ^ If this is not the case on your machine you can connect to the node port instead
  # ^ See `kubectl get svc`
  ```

### Why do I need to use Docker Desktop's kubernetes?

I didn't push the docker image to a registry and docker desktop makes it simple to
run docker images built locally in your local kubernetes cluster.
You could use other kubernetes versions too _if_ they support this (or push the image to some registry).
I just know that it works out-of-the-box with Docker Desktop's kubernetes.
