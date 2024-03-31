# M_index_func used for boundary handling
function convolve(M, kernel, M_index_func=clamp_at_boundary)
	
	# the dimensions of the kernel
    height = size(kernel, 1)
    width = size(kernel, 2)

	# the half dimensions of the kernel
    half_height = height ÷ 2
    half_width = width ÷ 2

	# creates a new array with the same dimensions as M to store the convolved image
    new_image = similar(M)
	
	# Normally, the compiler would insert explicit bounds checks within the nested loops iterating through the image pixels.
	# With @inbounds the programmer guarantees that the loops access valid elements
	# and this is an outer loop to iterate through each row of the input image.
    @inbounds for i in 1:size(M, 1)
        for j in 1:size(M, 2)
            # (k, l) loop over the neighboring pixels
			new_image[i, j] = sum([
				# convolution
				kernel[k, l] * M_index_func(M, i - k, j - l)
				for k in -half_height:-half_height + height - 1
				for l in -half_width:-half_width + width - 1
			])
        end
    end
    
    return new_image
end

# M is the 2D array, in this case, the image of Hasan Baltacı
# i row index, j column index
function clamp_at_boundary(M, i, j)
	return M[
		# clamp(x, low, high) function basically returns:
		# x, if low < x < high
		# low, if x < low
		# high, if high < x
		# size(M, 1) calculates the number of columns or rows in the image, ensuring j stays within the image's width
		clamp(i, 1, size(M, 1)),
		clamp(j, 1, size(M, 2)),	
	]
end