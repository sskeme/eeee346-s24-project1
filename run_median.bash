rm -rf main
g++ -o main *.cpp *.h

cat testInput.txt | ./main
echo "Checking Images"

if [ -f "output_images/median.pgm" ]; then
  MEDIAN3_CHECK=$(diff -b -B output_images/median.pgm golden_images/median.pgm)
  if [ "$MEDIAN3_CHECK" !=  "" ]; then
    echo "IMAGE MEDIAN FILTER - FAIL"
  else
    echo "IMAGE MEDIAN FILTER - PASS"
  fi
else
  echo "IMAGE MEDIAN FILTER - FAIL (MISSING FILE)"
fi
