rm -rf main
g++ -o main *.cpp *.h

cat testInput.txt | ./main
echo "Checking Images"

if [ -f "output_images/gaussian.pgm" ]; then
  GAUSSIAN_CHECK=$(diff -b -B output_images/gaussian.pgm golden_images/gaussian.pgm)
  if [ "$GAUSSIAN_CHECK" !=  "" ]; then
    echo "IMAGE GAUSSIAN FILTER - FAIL"
  else
    echo "IMAGE GAUSSIAN FILTER - PASS"
  fi
else
  echo "IMAGE GAUSSIAN FILTER - FAIL (MISSING FILE)"
fi
