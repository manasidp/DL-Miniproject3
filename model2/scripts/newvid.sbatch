#!/bin/bash
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=8:00:00
#SBATCH --mem=16GB
#SBATCH --gres=gpu
#SBATCH --job-name=new_vid
#SBATCH --output=new_vid.out

  
module load amber/openmpi/intel/20.06;
module load anaconda3/2020.07;
source /share/apps/anaconda3/2020.07/etc/profile.d/conda.sh;
conda activate /scratch/mdp9405/DeepFakeTorch/penv;
##python3 video_writer.py 
##python3 writes_images.py
##bash 1_clear_workspace.sh
##bash 2_extract_image_from_data_src.sh
##bash 3_extract_image_from_data_dst.sh
##bash 3.1_denoise_data_dst_images.sh
##bash 4_data_src_extract_faces_S3FD.sh
##bash 4.1_download_Quick96.sh
##bash 4.2_data_src_sort.sh
##bash 4.2_data_src_util_add_landmarks_debug_images.sh
##bash 4.2_data_src_util_faceset_enhance.sh
##bash 5_data_dst_extract_faces_S3FD.sh
##bash 5.2_data_dst_sort.sh
##bash 5_XSeg_data_dst_mask_edit.sh

##bash 4.1_download_CelebA.sh
##bash 6_train_Quick96.sh
bash 7_merge_Quick96.sh
##bash 8_merged_to_mp4_lossless.sh

##python3 video_writer.py  -original_video data_dst.mp4 -model_location saved_models/model.pt -out_name myswappedvideo1 -decoder b




