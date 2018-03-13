#define gerror( err ) (c_HandleError( err, __FILE__, __LINE__ ))

// 打印错误信息与位置
void c_HandleError(cudaError_t err,
	const char *file,
	int line) {
	if (err != cudaSuccess) {
		printf("%s in %s at line %d, %d\n", cudaGetErrorString(err),
			file, line, err);
		getchar();
		exit(EXIT_FAILURE);
	}
}