for i in $(1 5 10 20 50); do python3 main.py  --arch vgg11_bn --save "./vgg/main_m/m${i}000" --data_size "${i}000"; done
for i in $(1 5 10 20 50); do python3 prune.py --arch vgg11_bn --percent 0.5 --model "./vgg/main_m/m${i}000/checkpoint.pth.tar" --save "./vgg/main_p/m${i}000"; done
for i in $(1 5 10 20 50); do python3 main_B.py --arch vgg11_bn --scratch "./vgg/main_p/m${i}000/pruned.pth.tar" --save "./vgg/main_b/m${i}000"; done
for i in $(1 5 10 20 50); do python3 main_E.py --arch vgg11_bn --scratch "./vgg/main_p/m${i}000/pruned.pth.tar" --save "./vgg/main_e/m${i}000"; done

