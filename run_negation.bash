rm -rf main
g++ -o main *.cpp *.h

cat testInput.txt | ./main
echo "Checking Images"

if [ -f "output_images/negation.pgm" ]; then
  COPY_CHECK=$(diff -b -B output_images/negation.pgm golden_images/negation.pgm)
  if [ "$COPY_CHECK" !=  "" ]; then
    echo "IMAGE NEGATION - FAIL"
  else
    echo "IMAGE NEGATION - PASS"
  fi
else
  echo "IMAGE NEGATION - FAIL (Missing File)"
fi
