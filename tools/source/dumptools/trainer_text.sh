python3 tools/narcpy.py extract base/root/a/0/5/7 -o a057
python3 tools/narcpy.py extract base/root/a/1/3/1 -o a131
./tools/msgenc -d -c charmap.txt build/text/7_728 data/text/728.txt
python3 tools/source/dumptools/trainer_text.py
rm -rf data/text/728.txt a057 a131