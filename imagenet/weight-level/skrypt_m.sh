for i in $(1 5 10 20 50); do python3 cifer.py  --arch vgg19_bn --depth 19 --save_dir "./vgg/main_cifar10_m/m${i}000" --data_size "${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.3  --arch vgg19_bn --model "./vgg/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./vgg/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch vgg19_bn --resume "./vgg/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./vgg/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch vgg19_bn --resume "./vgg/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./vgg/main_cifar10_e/m${i}000" --dataset cifar10; done

for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.8  --arch vgg19_bn --model "./vgg/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./vggv8/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch vgg19_bn --resume "./vggv8/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./vggv8/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch vgg19_bn --resume "./vggv8/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./vggv8/main_cifar10_e/m${i}000" --dataset cifar10; done

for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.95  --arch vgg19_bn --model "./vgg/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./vggv95/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch vgg19_bn --resume "./vggv95/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./vggv95/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch vgg19_bn --resume "./vggv95/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./vggv95/main_cifar10_e/m${i}000" --dataset cifar10; done

for i in $(1 5 10 20 50); do python3 cifer.py  --arch preresnet --depth 110 --save_dir "./preresnet/main_cifar10_m/m${i}000" --data_size "${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.3 --arch preresnet --depth 110 --model "./preresnet/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./preresnetv3/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch preresnet --depth 110 --resume "./preresnetv3/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv3/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch preresnet --depth 110 --resume "./preresnetv3/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv3/main_cifar10_e/m${i}000" --dataset cifar10; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.8 --arch preresnet --depth 110 --model "./preresnet/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./preresnetv8/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch preresnet --depth 110 --resume "./preresnetv8/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv8/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch preresnet --depth 110 --resume "./preresnetv8/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv8/main_cifar10_e/m${i}000" --dataset cifar10; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.95 --arch preresnet --depth 110 --model "./preresnet/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./preresnetv95/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch preresnet --depth 110 --resume "./preresnetv95/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv95/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch preresnet --depth 110 --resume "./preresnetv95/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv95/main_cifar10_e/m${i}000" --dataset cifar10; done

for i in $(1 5 10 20 50); do python3 cifer.py  --arch densenet --depth 100 --compressionRate 2 --save_dir "./densenet/main_cifar10_m/m${i}000" --data_size "${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.3 --arch densenet --depth 100 --compressionRate 2 --model "./densenet/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./densenetv3/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv3/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv3/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv3/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv3/main_cifar10_e/m${i}000" --dataset cifar10; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.8 --arch densenet --depth 100 --compressionRate 2 --model "./densenet/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./densenetv8/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv8/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv8/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch densenet --depth 100 --compressionRate 2--resume "./densenetv8/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv8/main_cifar10_e/m${i}000" --dataset cifar10; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.95 --arch densenet --depth 100 --compressionRate 2 --model "./densenet/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_dir "./densenetv95/main_cifar10_p/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv95/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv95/main_cifar10_b/m${i}000" --dataset cifar10; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv95/main_cifar10_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv95/main_cifar10_e/m${i}000" --dataset cifar10; done

for i in $(1 5 10 20 50); do python3 cifer.py  --arch vgg19_bn --depth 19 --save_dir "./vgg/main_cifar100_m/m${i}000" --data_size "${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.3  --arch vgg19_bn --model "./vgg/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./vgg/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch vgg19_bn --resume "./vgg/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./vgg/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch vgg19_bn --resume "./vgg/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./vgg/main_cifar100_e/m${i}000" --dataset cifar100; done

for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.8  --arch vgg19_bn --model "./vgg/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./vggv8/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch vgg19_bn --resume "./vggv8/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./vggv8/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch vgg19_bn --resume "./vggv8/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./vggv8/main_cifar100_e/m${i}000" --dataset cifar100; done

for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.95  --arch vgg19_bn --model "./vgg/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./vggv95/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch vgg19_bn --resume "./vggv95/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./vggv95/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch vgg19_bn --resume "./vggv95/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./vggv95/main_cifar100_e/m${i}000" --dataset cifar100; done

for i in $(1 5 10 20 50); do python3 cifer.py  --arch preresnet --depth 110 --save_dir "./preresnet/main_cifar100_m/m${i}000" --data_size "${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.3 --arch preresnet --depth 110 --model "./preresnet/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./preresnetv3/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch preresnet --depth 110 --resume "./preresnetv3/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv3/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch preresnet --depth 110 --resume "./preresnetv3/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv3/main_cifar100_e/m${i}000" --dataset cifar100; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.8 --arch preresnet --depth 110 --model "./preresnet/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./preresnetv8/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch preresnet --depth 110 --resume "./preresnetv8/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv8/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch preresnet --depth 110 --resume "./preresnetv8/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv8/main_cifar100_e/m${i}000" --dataset cifar100; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.95 --arch preresnet --depth 110 --model "./preresnet/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./preresnetv95/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch preresnet --depth 110 --resume "./preresnetv95/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv95/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch preresnet --depth 110 --resume "./preresnetv95/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./preresnetv95/main_cifar100_e/m${i}000" --dataset cifar100; done

for i in $(1 5 10 20 50); do python3 cifer.py  --arch densenet --depth 100 --compressionRate 2 --save_dir "./densenet/main_cifar100_m/m${i}000" --data_size "${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.3 --arch densenet --depth 100 --compressionRate 2 --model "./densenet/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./densenetv3/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv3/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv3/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv3/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv3/main_cifar100_e/m${i}000" --dataset cifar100; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.8 --arch densenet --depth 100 --compressionRate 2 --model "./densenet/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./densenetv8/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv8/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv8/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch densenet --depth 100 --compressionRate 2--resume "./densenetv8/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv8/main_cifar100_e/m${i}000" --dataset cifar100; done


for i in $(1 5 10 20 50); do python3 cifar_prune.py --percent 0.95 --arch densenet --depth 100 --compressionRate 2 --model "./densenet/main_cifar100_m/m${i}000/checkpoint.pth.tar" --save_dir "./densenetv95/main_cifar100_p/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_B.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv95/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv95/main_cifar100_b/m${i}000" --dataset cifar100; done
for i in $(1 5 10 20 50); do python3 cifar_E.py  --arch densenet --depth 100 --compressionRate 2 --resume "./densenetv95/main_cifar100_p/m${i}000/pruned.pth.tar" --save_dir "./densenetv95/main_cifar100_e/m${i}000" --dataset cifar100; done