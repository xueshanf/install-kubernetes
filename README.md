# Install Kerbernetes Components

An Alpine based image to install Kerbernetes components from Kubernetes official binary release site. 
The binaries are installed in /shared volume which you can mount on host's installation directory.

The container accept two environment variables: VERSION and COMPONENTS.

# Usage Examples

* Install the default components __kube-apiserver kube-controller-manager kube-scheduler, and kubectl__.

```
$ docker run --rm -v /opt/bin/kubernetes:/shared xueshanf/install-kubernetes
```

* Install specific components:
```
$ docker run --env COMPONENTS="kube-apiserver kube-controller-manager kube-scheduler" --rm -v /opt/bin/kubernetes:/shared xueshanf/install-kubernetes
```
  Or:
```
$ docker run --env COMPONENTS="kubectl" --rm -v /opt/bin/kubernetes:/shared xueshanf/install-kubernetes
```

* Install specific version:

```
$ docker run --env VERSION="v1.4.3" --rm -v /opt/bin/kubernetes:/shared xueshanf/install-kubernetes
```
