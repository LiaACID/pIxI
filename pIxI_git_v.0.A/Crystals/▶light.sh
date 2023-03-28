#!/bin/bash
shard=$(</dev/stdin)

	target (){ cd .. 
	path=$(pwd)
	path_internal=/Shards/ 
	constructor(){ 
	bash $path$path_internal$shard
	}
	constructor $shard 
	}
	refactor (){ 
	echo "0">crocodile.dat 
	}

target $shard		
refactor

#echo Current Home Path Is: $path 
#echo Current Internal Folder Path Is: $path_internal
