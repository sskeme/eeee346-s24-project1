rm -rf main
g++ -o main *.cpp *.h

cat testInput.txt | ./main
echo "Checking Images"

if [ -f "output_images/stretching.pgm" ]; then
  VERT_CHECK=$(diff -b -B output_images/stretching.pgm golden_images/stretching.pgm)
  if [ "$VERT_CHECK" !=  "" ]; then
    echo "IMAGE HISTOGRAM STRETCHING - FAIL"
  else
    echo "IMAGE HISTOGRAM STRETCHING - PASS"
  fi
else
  echo "IMAGE HISTOGRAM STRETCHING - FAIL (MISSING FILE)"
fi
