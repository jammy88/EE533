import ctypes
import time
import numpy as np
from PIL import Image
import os

BASE = "/content/drive/MyDrive/EE533_CUDAlab"

lib = ctypes.cdll.LoadLibrary(
    BASE + "/libconv_cuda.so"
)

lib.conv2d_cuda_gpu.argtypes = [
    np.ctypeslib.ndpointer(dtype=np.uint32, ndim=1, flags="C_CONTIGUOUS"),
    np.ctypeslib.ndpointer(dtype=np.int32, ndim=1, flags="C_CONTIGUOUS"),
    np.ctypeslib.ndpointer(dtype=np.int32, ndim=1, flags="C_CONTIGUOUS"),
    ctypes.c_int,
    ctypes.c_int
]

filters = {
    3: np.array([
        -1, 0, 1,
        -2, 0, 2,
        -1, 0, 1
    ], dtype=np.int32),

    5: np.array([
        -1,-1,-1,-1,-1,
        -1, 0, 0, 0,-1,
        -1, 0,16, 0,-1,
        -1, 0, 0, 0,-1,
        -1,-1,-1,-1,-1
    ], dtype=np.int32),

    7: np.array([
        -1,-1,-1,-1,-1,-1,-1,
        -1, 0, 0, 0, 0, 0,-1,
        -1, 0, 0, 0, 0, 0,-1,
        -1, 0, 0,24, 0, 0,-1,
        -1, 0, 0, 0, 0, 0,-1,
        -1, 0, 0, 0, 0, 0,-1,
        -1,-1,-1,-1,-1,-1,-1
    ], dtype=np.int32)
}

sizes = [512, 1024, 2048]

out_dir = BASE + "/cuda_results"
os.makedirs(out_dir, exist_ok=True)

python_cuda_times = []

for M in sizes:
    img = Image.open(
        f"{BASE}/resized/squirrel_{M}.png"
    ).convert("L")
    img_np = np.array(img, dtype=np.uint32)

    for N, filt in filters.items():
        output = np.zeros((M, M), dtype=np.int32)

        start = time.time()
        lib.conv2d_cuda_gpu(
            img_np.ravel(),
            filt.ravel(),
            output.ravel(),
            M, N
        )
        end = time.time()

        elapsed = end - start
        python_cuda_times.append((M, N, elapsed))

        min_val = output.min()
        max_val = output.max()

        if max_val > min_val:
            norm = (output - min_val) / (max_val - min_val) * 255.0
        else:
            norm = np.abs(output)
            if norm.max() > 0:
                norm = norm / norm.max() * 255.0

        norm = norm.astype(np.uint8)

        out_img = Image.fromarray(norm)
        out_path = f"{out_dir}/cuda_M{M}_N{N}.png"
        out_img.save(out_path)

        print(f"Python+CUDA M={M}, N={N}, time={elapsed:.4f}s → saved {out_path}")

print("\nPython + CUDA Performance Summary")
for M, N, t in python_cuda_times:
    print(f"M={M}, N={N} → {t:.4f} sec")
