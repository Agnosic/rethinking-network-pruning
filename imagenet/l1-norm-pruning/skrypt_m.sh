for i in $(1 5 10 20 50); do python3 main.py   --arch resnet34 --save "./resnet34/main_m/m${i}000" --data_size "${i}000"; done
for i in $(1 5 10 20 50); do python3 prune.py  --arch resnet34  --model "./resnet34/main_m/m${i}000/checkpoint.pth.tar" --save "./resnet34/main_p/m${i}000"; done
for i in $(1 5 10 20 50); do python3 main_B.py  --arch resnet34 --scratch "./resnet34/main_p/m${i}000/pruned.pth.tar" --save "./resnet34/main_b/m${i}000"; done
for i in $(1 5 10 20 50); do python3 main_E.py  --arch resnet34 --scratch "./resnet34/main_p/m${i}000/pruned.pth.tar" --save "./resnet34/main_e/m${i}000"; done

