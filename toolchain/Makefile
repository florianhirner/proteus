NTT_TYPE        = "NORMAL" 	# NORMAL, MERGED
RADIX2_TYPE     = "SDF"         # SDF, MDC
OP              = "1"      	# 1, ..., 8
LOGN            = "12"      	# 1, ... , 12
LOGQ            = "64"      	# 16, ..., 64
REDUCTION_TYPE  = "ADDSHIFT"	# ADDSHIFT, MONTGOMERY

all:
	#generate roms, refs, ...
	python3 py/ntt_demo.py $NTT_TYPE $RADIX2_TYPE $OP $LOGN $LOGQ $REDUCTION_TYPE > log 
	#mkdir hw_ntt
	#ln -s hw_ntt_sdf/ntt_sdf_op_1_2 hw_top
	#vivado &
	
clean:
	rm -rf build
	rm *.log
	rm *.jou
	rm *.str
