// You don't need to modify this file

#ifndef IMAGE_PROCESSING__
#define IMAGE_PROCESSING__

/*
 * Negates the original image.
 *
 * @oData - original input 2D array
 * @rData - output 2D array
 * @height - height of 2D arrays
 * @width - width of 2D arrays
 */
void imgNegation(int **oData, int **rData, int height, int width);

/*
 * Flips the original image about its center horizontal axis.
 *
 * @oData - original input 2D array
 * @rData - output 2D array
 * @height - height of 2D arrays
 * @width - width of 2D arrays
 */
void flipVertical(int **oData, int **rData, int height, int width);

/*
 * Enhances the contrast of the original image.
 *
 * @oData - original input 2D array
 * @rData - output 2D array
 * @height - height of 2D arrays
 * @width - width of 2D arrays
 */
void histogramStretching(int **oData, int **rData, int height, int width);

/*
 * Applies a 3x3 median filter to the original image.
 *
 * @oData - original input 2D array
 * @rData - output 2D array
 * @height - height of 2D arrays
 * @width - width of 2D arrays
 */
void medianFilter(int **oData, int **rData, int height, int width);

/*
 * Applies a 7x7 Gaussian filter to the original image.
 *
 * @oData - original input 2D array
 * @rData - output 2D array
 * @height - height of 2D arrays
 * @width - width of 2D arrays
 */
void gaussianFilter(int **oData, int **rData, int height, int width);

#endif
