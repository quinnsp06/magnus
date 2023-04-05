Projeto Strapi

Este Projeto contém os arquivos criados para deploy local da aplicação Strapi, através de cluster minikube.

Considerações:

1 - Foi utilizado o Cluster Kubernetes Minikube no ambiente WSL em Ubuntu 20.04;
2 - Foi utilizado o arquivo ingress.yaml para acessar a aplicação no cluster por domínio interno.
3 - Para acesso pelo Browser o Default Gateway utilizado no Windows é o IP da Vethernet do WSL.
4 - É necessário colocar o dominio interno no arquivo de hosts do Windows e do WSL.
