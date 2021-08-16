## Supported platforms

<details><summary>Intel PAC A10</summary><p>

* *38d782e3b6125343b9342433e348ac4c*
> ```sh
> export VENDOR=intel
> export NAME=pac_a10
> export VERSION=38d782e3b6125343b9342433e348ac4c
> ```
</p></details>

<details><summary>Xilinx AWS VU9P F1</summary><p>

* **AWS** | *shell-v04261818_201920.2*
> ```sh
> export VENDOR=xilinx
> export NAME=aws-vu9p-f1
> export VERSION=shell-v04261818_201920.2
> export LABELS=aws
> ```
</p></details>

<details><summary>Xilinx U200</summary><p>

* *xdma_201830.2*
> ```sh
> export VENDOR=xilinx
> export NAME=u200
> export VERSION=xdma_201830.2
> ```
</p></details>

<details><summary>Xilinx U250</summary><p>

* **Azure** | *gen3x16_xdma_shell_2.1*
> ```sh
> export VENDOR=xilinx
> export NAME=u250
> export VERSION=gen3x16_xdma_shell_2.1
> export LABELS=azure
> ```

* *xdma_201830.2*
> ```sh
> export VENDOR=xilinx
> export NAME=u250
> export VERSION=xdma_201830.2
> ```
</p></details>

<details><summary>Xilinx U280</summary><p>

* *xdma_201920.3*
> ```sh
> export VENDOR=xilinx
> export NAME=u280
> export VERSION=xdma_201920.3
> ```
</p></details>

<details><summary>Xilinx U50</summary><p>

* *gen3x16_xdma_201920.3*
> ```sh
> export VENDOR=xilinx
> export NAME=u50
> export VERSION=gen3x16_xdma_201920.3
> ```
</p></details>

---

### Docker

```sh
docker-compose --file deploy/docker-compose.yml run inaccel-vadd
docker-compose --file deploy/docker-compose.yml down --volumes
```

### Kubernetes

```sh
envsubst < deploy/pod.yaml | kubectl create --filename -
kubectl wait --for condition=ready --timeout -1s pod/inaccel-vadd
kubectl logs --follow pod/inaccel-vadd
kubectl delete pod/inaccel-vadd
```
