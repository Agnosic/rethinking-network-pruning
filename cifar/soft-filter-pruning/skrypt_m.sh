for i in $(1 5 10 20 50); do python3 pruning_cifar10_pretrain.py DATA --arch resnet56 --layer_end 162 --dataset cifar10 --save_path "./resnet56/main_cifar10_m/m${i}000" --data_size "${i}000" --dataset cifar10  --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 vggprune.py DATA --arch resnet56 --layer_end 162 --dataset cifar10 --resume "./resnet56/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_path "./resnet56v3/main_cifar10_p/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.001 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 main_B.py DATA --arch resnet56 --layer_end 162 --dataset cifar10 --resume "./resnet56v3/main_cifar10_p/m${i}000/pruned.pth.tar" --save_path "./resnet56v3/main_cifar10_b/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 main_E.py DATA --arch resnet56 --layer_end 162 --dataset cifar10 --resume "./resnet56v3/main_cifar10_p/m${i}000/pruned.pth.tar" --save_path "./resnet56v3/main_cifar10_e/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done


for i in $(1 5 10 20 50); do python3 vggprune.py DATA --arch resnet56 --layer_end 162 --dataset cifar10 --resume "./resnet56/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_path "./resnet56v4/main_cifar10_p/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.001 --decay 0.0005 --batch_size 128 --rate 0.6 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 main_B.py DATA --arch resnet56 --layer_end 162 --dataset cifar10 --resume "./resnet56v4/main_cifar10_p/m${i}000/pruned.pth.tar" --save_path "./resnet56v4/main_cifar10_b/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.6 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 main_E.py DATA --arch resnet56 --layer_end 162 --dataset cifar10 --resume "./resnet56v4/main_cifar10_p/m${i}000/pruned.pth.tar" --save_path "./resnet56v4/main_cifar10_e/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.6 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done


for i in $(1 5 10 20 50); do python3 pruning_cifar10_pretrain.py DATA --arch resnet110 --layer_end 324 --dataset cifar10 --save_path "./resnet110/main_cifar10_m/m${i}000" --data_size "${i}000" --dataset cifar10  --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 vggprune.py DATA --arch resnet110 --layer_end 324 --dataset cifar10 --resume "./resnet110/main_cifar10_m/m${i}000/checkpoint.pth.tar" --save_path "./resnet110/main_cifar10_p/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.001 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 main_B.py DATA --arch resnet110 --layer_end 324 --dataset cifar10 --resume "./resnet110/main_cifar10_p/m${i}000/pruned.pth.tar" --save_path "./resnet110/main_cifar10_b/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
for i in $(1 5 10 20 50); do python3 main_E.py DATA --arch resnet110 --layer_end 324 --dataset cifar10 --resume "./resnet110/main_cifar10_p/m${i}000/pruned.pth.tar" --save_path "./resnet110/main_cifar10_e/m${i}000" --dataset cifar10 --epochs 200 --schedule 1 60 120 160 --gammas 10 0.2 0.2 0.2 \
    --learning_rate 0.01 --decay 0.0005 --batch_size 128 --rate 0.7 \
    --layer_begin 0  --layer_end 162 --layer_inter 3 --epoch_prune 1 ; done
