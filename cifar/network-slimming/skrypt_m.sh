%%shell
#!/bin/bash

for i in 1 5 10 20 49
do
    python3 main.py  --arch vgg --save "./vgg/main_cifar10_m/m${i}000" --data-size "${i}000" --dataset cifar10
    python3 vggprune.py --percent 0.7 --model "./vgg/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./vgg/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py --scratch "./vgg/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./vgg/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py --scratch "./vgg/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./vgg/main_cifar10_e/m${i}000" --dataset cifar10

    python3 main.py --arch resnet --depth 164 --save "./resnet164/main_cifar10_m/m${i}000" --data-size "${i}000" --dataset cifar10
    python3 resprune.py --percent 0.4 --arch resnet --depth 164 --model "./resnet164/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./resnet164/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py --arch resnet --depth 164 --scratch "./resnet164/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet164/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py --arch resnet --depth 164 --scratch "./resnet164/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet164/main_cifar10_e/m${i}000" --dataset cifar10

    python3 resprune.py --percent 0.6 --arch resnet --depth 164 --model "./resnet164/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./resnet164/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py --arch resnet --depth 164 --scratch "./resnet164/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet164/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py  --arch resnet --depth 164 --scratch "./resnet164/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./resnet164/main_cifar10_e/m${i}000" --dataset cifar10


    python3 main.py --arch densenet --depth 40 --save "./densenet40/main_cifar10_m/m${i}000" --data-size "${i}000" --dataset cifar10
    python3 denseprune.py --percent 0.4 --arch densenet --depth 40 --model "./densenet40/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./densenet40v04/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py  --arch densenet --depth 40 --scratch "./densenet40v04/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./densenet40v04/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py --arch densenet --depth 40 --scratch "./densenet40v04/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./densenet40v04/main_cifar10_e/m${i}000" --dataset cifar10

    python3 denseprune.py --percent 0.6 --arch densenet --depth 40 --model "./densenet40/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save "./densenet40v06/main_cifar10_p/m${i}000" --dataset cifar10
    python3 main_B.py  --arch densenet --depth 40 --scratch "./densenet40v06/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./densenet40v06/main_cifar10_b/m${i}000" --dataset cifar10
    python3 main_E.py  --arch densenet --depth 40 --scratch "./densenet40v06/main_cifar10_p/m${i}000/pruned.pth.tar" --save "./densenet40v06/main_cifar10_e/m${i}000" --dataset cifar10

    python3 main.py --arch vgg --save "./vgg/main_cifar100_m/m${i}000" --data-size "${i}000" --dataset cifar100
    python3 vggprune.py --percent 0.5 --model "./vgg/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save "./vgg/main_cifar100_p/m${i}000" --dataset cifar100
    python3 main_B.py --scratch "./vgg/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./vgg/main_cifar100_b/m${i}000" --dataset cifar100
    python3 main_E.py --scratch "./vgg/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./vgg/main_cifar100_e/m${i}000" --dataset cifar100

    python3 main.py --arch resnet --depth 164 --save "./resnet164/main_cifar100_m/m${i}000" --data-size "${i}000" --dataset cifar100
    python3 resprune.py --percent 0.4 --arch resnet --depth 164 --model "./resnet164/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save "./resnet164v04/main_cifar100_p/m${i}000" --dataset cifar100
    python3 main_B.py --arch resnet --depth 164 --scratch "./resnet164v04/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./resnet164v04/main_cifar100_b/m${i}000" --dataset cifar100
    python3 main_E.py --arch resnet --depth 164 --scratch "./resnet164v04/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./resnet164v04/main_cifar100_e/m${i}000" --dataset cifar100

    python3 resprune.py --percent 0.6 --arch resnet --depth 164 --model "./resnet164/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save "./resnet164v06/main_cifar100_p/m${i}000" --dataset cifar100
    python3 main_B.py --arch resnet --depth 164 --scratch "./resnet164v06/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./resnet164v06/main_cifar100_b/m${i}000" --dataset cifar100
    python3 main_E.py --arch resnet --depth 164 --scratch "./resnet164v06/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./resnet164v06/main_cifar100_e/m${i}000" --dataset cifar100


    python3 main.py --arch densenet --depth 40 --save "./densenet40/main_cifar100_m/m${i}000" --data-size "${i}000" --dataset cifar10
    python3 denseprune.py --percent 0.4 --arch densenet --depth 40 --model "./densenet40/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save "./densenet40v04/main_cifar100_p/m${i}000" --dataset cifar100
    python3 main_B.py --arch densenet --depth 40 --scratch "./densenet40v04/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./densenet40v04/main_cifar100_b/m${i}000" --dataset cifar100
    python3 main_E.py --arch densenet --depth 40 --scratch "./densenet40v04/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./densenet40v04/main_cifar100_e/m${i}000" --dataset cifar100

    python3 denseprune.py --percent 0.6 --arch densenet --depth 40 --model "./densenet40/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save "./densenet40/main_cifar10_p/m${i}000" --dataset cifar100
    python3 main_B.py --arch densenet --depth 40 --scratch "./densenet40v06/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./densenet40v06/main_cifar100_b/m${i}000" --dataset cifar100
    python3 main_E.py --arch densenet --depth 40 --scratch "./densenet40v06/main_cifar100_p/m${i}000/pruned.pth.tar" --save "./densenet40v06/main_cifar100_e/m${i}000" --dataset cifar100



done