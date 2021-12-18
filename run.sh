#!/usr/bin/env bash

dtset=trivia
split=train
base_dir=/mnt/nfs/scratch1/dthai/DPR

python dense_retriever.py \
	model_file=${base_dir}/downloads/checkpoint/retriever/single-adv-hn/nq/bert-base-encoder.cp \
	qa_dataset=${dtset}_${split} \
	ctx_datatsets=[dpr_wiki] \
	index_path=${base_dir}/indexes/single-adv-hn/full/ \
	encoded_ctx_files=[\"${base_dir}/downloads/data/retriever_results/nq/single-adv-hn/wikipedia_passages_*\"] \
	out_file=${base_dir}/dpr_retrieval/${dtset}-${split}.json
