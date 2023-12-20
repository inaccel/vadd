#!/bin/bash

platforms=(
	intel/ofs_ia420fr0/06dd1e32478657c38c353dc048cdb7e0
	intel/ofs_ia840fr0/18f573d96298516d891fc9b6261e3a73
	intel/pac_a10/38d782e3b6125343b9342433e348ac4c
	intel/pac_s10/9346116da52d5ca8b06aa9a389ef7c8d
	xilinx/aws-vu9p-f1/dynamic-shell/aws
	xilinx/u200/xdma_201830.2
	xilinx/u250/gen3x16_xdma_shell_2.1/azure
	xilinx/u250/xdma_201830.2
	xilinx/u280/gen3x16_xdma_base.1
	xilinx/u280/xdma_201920.3
	xilinx/u50/gen3x16_xdma_201920.3
)

mkdir --parents public
for platform in ${platforms[@]}; do
	mkdir --parents public/${platform}
	env=(${platform//\// })
	for deploy in deploy/*; do
		env VENDOR=${env[0]} NAME=${env[1]} VERSION=${env[2]} LABELS=${env[3]} \
		envsubst < ${deploy} > public/${platform}/$(basename ${deploy})
	done
done
