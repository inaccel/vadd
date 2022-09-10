## Supported platforms

<details><summary>Intel PAC A10</summary><p>

* *38d782e3b6125343b9342433e348ac4c*
> ```sh
> export PLATFORM=intel/pac_a10/38d782e3b6125343b9342433e348ac4c
> ```
</p></details>

<details><summary>Intel PAC S10 DC</summary><p>

* *9346116da52d5ca8b06aa9a389ef7c8d*
> ```sh
> export PLATFORM=intel/pac_s10_dc/9346116da52d5ca8b06aa9a389ef7c8d
> ```
</p></details>

<details><summary>Xilinx AWS VU9P F1</summary><p>

* **AWS** | *dynamic-shell*
> ```sh
> export PLATFORM=xilinx/aws-vu9p-f1/dynamic-shell/aws
> ```
</p></details>

<details><summary>Xilinx U200</summary><p>

* *xdma_201830.2*
> ```sh
> export PLATFORM=xilinx/u200/xdma_201830.2
> ```
</p></details>

<details><summary>Xilinx U250</summary><p>

* **Azure** | *gen3x16_xdma_shell_2.1*
> ```sh
> export PLATFORM=xilinx/u250/gen3x16_xdma_shell_2.1/azure
> ```

* *xdma_201830.2*
> ```sh
> export PLATFORM=xilinx/u250/xdma_201830.2
> ```
</p></details>

<details><summary>Xilinx U280</summary><p>

* *xdma_201920.3*
> ```sh
> export PLATFORM=xilinx/u280/xdma_201920.3
> ```
</p></details>

<details><summary>Xilinx U50</summary><p>

* *gen3x16_xdma_201920.3*
> ```sh
> export PLATFORM=xilinx/u50/gen3x16_xdma_201920.3
> ```
</p></details>

---

### Docker

```sh
wget https://vadd.inaccel.com/${PLATFORM}/docker-compose.yml
docker compose run inaccel-vadd
docker compose down --volumes
rm docker-compose.yml
```

### Kubernetes

```sh
kubectl create --filename https://vadd.inaccel.com/${PLATFORM}/pod.yaml
kubectl wait --for condition=ready --timeout -1s pod/inaccel-vadd
kubectl logs --follow pod/inaccel-vadd
kubectl delete pod/inaccel-vadd
```
