rm -rf main
g++ -o main *.cpp *.h

cat testInput.txt | ./main
echo "Checking Images"

if [ -f "output_images/flip.pgm" ]; then
  HORZ_CHECK=$(diff -b -B output_images/flip.pgm golden_images/flip.pgm)
  if [ "$HORZ_CHECK" !=  "" ]; then
    echo "IMAGE FLIP - FAIL"
  else
    echo "IMAGE FLIP - PASS"
  fi 
else
  echo "IMAGE FLIP - FAIL (MISSING FILE)"
fi
