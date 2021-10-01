#include <algorithm>
#include <cassert>
#include <inaccel/coral>
#include <iostream>

int main() {
	int size = 1024;

	std::pmr::set_default_resource(inaccel::pmr::resource());
	std::pmr::vector<float> a(size), b(size), c(size);

	std::pmr::set_default_resource(nullptr);
	std::pmr::vector<float> c_golden(size);

	std::generate(a.begin(), a.end(), std::rand);
	std::generate(b.begin(), b.end(), std::rand);

	inaccel::request vadd("vector.addition");
	vadd.arg(a).arg(b).arg(c).arg(size);
	inaccel::submit(vadd).get();

	std::transform(a.begin(), a.end(), b.begin(), c_golden.begin(), std::plus());

	assert(c == c_golden);

	std::cout << "Test PASSED" << std::endl;

	std::this_thread::sleep_for(std::chrono::seconds(3));
}
