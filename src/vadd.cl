__attribute__((reqd_work_group_size(1, 1, 1)))
__kernel void vadd(__global const float *a, __global const float *b, __global float *c, int size) {
	for (int id = 0; id < size; id++) {
		c[id] = a[id] + b[id];
	}
}
