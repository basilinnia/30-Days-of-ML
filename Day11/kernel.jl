using Images

image_url="https://www.kittens-tekoop.nl/wp-content/uploads/2023/05/299935-500x399.jpg";

image = load(download(image_url));

kernel = Kernel.gaussian((6,6))

convolve(image, kernel)

function colored_kernel(kernel)
	toRgb(x) = RGB(max(x, 0), max(-x, 0), 0)
	toRgb.(kernel) / maximum(abs.(kernel))
end

colored_kernel(kernel)
