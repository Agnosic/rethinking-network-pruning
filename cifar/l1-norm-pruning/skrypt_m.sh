%%shell
#!/bin/bash

for i in 1 5 10 20 49
do
    python3 main.py --arch vgg --save "./vgg/main_cifar10_m/m${i}000" --data-size "${i}000" --dataset cifar10
    python3 vggprune.py --model "./vgg/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./vgg/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py --scratch "./vgg/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./vgg/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py --scratch "./vgg/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./vgg/main_cifar10_e/m${i}000" --dataset cifar10

    python3 main.py --arch resnet --depth 56 --save "./resnet56/main_cifar10_m/m${i}000" --data-size "${i}000" --dataset cifar10
    python3 res56prune.py --arch resnet --depth 56 --model "./resnet56/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./resnet56/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py --arch resnet --depth 56 --scratch "./resnet56/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet56/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py --arch resnet --depth 56 --scratch "./resnet56/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet56/main_cifar10_e/m${i}000" --dataset cifar10

    python3 main.py --arch resnet --depth 110 --save "./resnet110/main_cifar10_m/m${i}000" --data-size "${i}000" --dataset cifar10
    python3 res110.py --arch resnet --depth 110 --model "./resnet110/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./resnet56/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py --arch resnet --depth 110 --scratch "./resnet110/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet56/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py --arch resnet --depth 110 --scratch "./resnet110/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet56/main_cifar10_e/m${i}000" --dataset cifar10


done