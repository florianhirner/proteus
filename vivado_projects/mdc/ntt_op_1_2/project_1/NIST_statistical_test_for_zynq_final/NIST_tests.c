#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include "externs.h"
#include "utilities.h"
#include "cephes.h"  


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                A P P R O X I M A T E  E N T R O P Y   T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
ApproximateEntropy(int m, int n)
{
	int				i, j, k, r, blockSize, seqLength, powLen, index;
	double			sum, numOfBlocks, ApEn[2], apen, chi_squared, p_value;
	unsigned int	*P;
	
	printf( "\t\t\tAPPROXIMATE ENTROPY TEST\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\t(a) m (block length)    = %d\n", m);

	seqLength = n;
	r = 0;
	
	for ( blockSize=m; blockSize<=m+1; blockSize++ ) {
		if ( blockSize == 0 ) {
			ApEn[0] = 0.00;
			r++;
		}
		else {
			numOfBlocks = (double)seqLength;
			powLen = (int)pow(2, blockSize+1)-1;
			if ( (P = (unsigned int*)calloc(powLen,sizeof(unsigned int)))== NULL ) {
				printf( "ApEn:  Insufficient memory available.\n");
				return;
			}
			for ( i=1; i<powLen-1; i++ )
				P[i] = 0;
			for ( i=0; i<numOfBlocks; i++ ) { /* COMPUTE FREQUENCY */
				k = 1;
				for ( j=0; j<blockSize; j++ ) {
					k <<= 1;
					if ( (int)epsilon[(i+j) % seqLength] == 1 )
						k++;
				}
				P[k-1]++;
			}
			/* DISPLAY FREQUENCY */
			sum = 0.0;
			index = (int)pow(2, blockSize)-1;
			for ( i=0; i<(int)pow(2, blockSize); i++ ) {
				if ( P[index] > 0 )
					sum += P[index]*log(P[index]/numOfBlocks);
				index++;
			}
			sum /= numOfBlocks;
			ApEn[r] = sum;
			r++;
			free(P);
		}
	}
	apen = ApEn[0] - ApEn[1];
	
	chi_squared = 2.0*seqLength*(log(2) - apen);
	p_value = cephes_igamc(pow(2, m-1), chi_squared/2.0);
	
	printf( "\t\t(b) n (sequence length) = %d\n", seqLength);
	printf( "\t\t(c) Chi^2               = %f\n", chi_squared);
	printf( "\t\t(d) Phi(m)	       = %f\n", ApEn[0]);
	printf( "\t\t(e) Phi(m+1)	       = %f\n", ApEn[1]);
	printf( "\t\t(f) ApEn                = %f\n", apen);
	printf( "\t\t(g) Log(2)              = %f\n", log(2.0));
	printf( "\t\t--------------------------------------------\n");

	if ( m > (int)(log(seqLength)/log(2)-5) ) {
		printf( "\t\tNote: The blockSize = %d exceeds recommended value of %d\n", m,
			MAX(1, (int)(log(seqLength)/log(2)-5)));
		printf( "\t\tResults are inaccurate!\n");
		printf( "\t\t--------------------------------------------\n");
	}
	
	printf( "%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value); fflush(stats[TEST_APEN]);
	printf( "%f\n", p_value); fflush(results[TEST_APEN]);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                    B L O C K  F R E Q U E N C Y  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
BlockFrequency(int M, int n)
{
	int		i, j, N, blockSum;
	double	p_value, sum, pi, v, chi_squared;
	
	N = n/M; 		/* # OF SUBSTRING BLOCKS      */
	sum = 0.0;
	
	for ( i=0; i<N; i++ ) {
		blockSum = 0;
		for ( j=0; j<M; j++ )
			blockSum += epsilon[j+i*M];
		pi = (double)blockSum/(double)M;
		v = pi - 0.5;
		sum += v*v;
	}
	chi_squared = 4.0 * M * sum;
	p_value = cephes_igamc(N/2.0, chi_squared/2.0);

	printf("\t\t\tBLOCK FREQUENCY TEST\n");
	printf("\t\t---------------------------------------------\n");
	printf("\t\tCOMPUTATIONAL INFORMATION:\n");
	printf("\t\t---------------------------------------------\n");
	printf("\t\t(a) Chi^2           = %f\n", chi_squared);
	printf("\t\t(b) # of substrings = %d\n", N);
	printf("\t\t(c) block length    = %d\n", M);
	printf("\t\t(d) Note: %d bits were discarded.\n", n % M);
	printf("\t\t---------------------------------------------\n");

	printf("%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value); fflush(stats[TEST_BLOCK_FREQUENCY]);
	printf("%f\n", p_value); fflush(results[TEST_BLOCK_FREQUENCY]);

}


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
		    C U M U L A T I V E  S U M S  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
CumulativeSums(int n)
{
	int		S, sup, inf, z, zrev, k;
	double	sum1, sum2, p_value;

	S = 0;
	sup = 0;
	inf = 0;
	for ( k=0; k<n; k++ ) {
		epsilon[k] ? S++ : S--;
		if ( S > sup )
			sup++;
		if ( S < inf )
			inf--;
		z = (sup > -inf) ? sup : -inf;
		zrev = (sup-S > S-inf) ? sup-S : S-inf;
	}
	
	// forward
	sum1 = 0.0;
	for ( k=(-n/z+1)/4; k<=(n/z-1)/4; k++ ) {
		sum1 += cephes_normal(((4*k+1)*z)/sqrt(n));
		sum1 -= cephes_normal(((4*k-1)*z)/sqrt(n));
	}
	sum2 = 0.0;
	for ( k=(-n/z-3)/4; k<=(n/z-1)/4; k++ ) {
		sum2 += cephes_normal(((4*k+3)*z)/sqrt(n));
		sum2 -= cephes_normal(((4*k+1)*z)/sqrt(n));
	}

	p_value = 1.0 - sum1 + sum2;
	
	printf( "\t\t      CUMULATIVE SUMS (FORWARD) TEST\n");
	printf( "\t\t-------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t-------------------------------------------\n");
	printf( "\t\t(a) The maximum partial sum = %d\n", z);
	printf( "\t\t-------------------------------------------\n");

	if ( isNegative(p_value) || isGreaterThanOne(p_value) )
		printf( "\t\tWARNING:  P_VALUE IS OUT OF RANGE\n");

	printf( "%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value);
	printf( "%f\n", p_value);
		
	// backwards
	sum1 = 0.0;
	for ( k=(-n/zrev+1)/4; k<=(n/zrev-1)/4; k++ ) {
		sum1 += cephes_normal(((4*k+1)*zrev)/sqrt(n));
		sum1 -= cephes_normal(((4*k-1)*zrev)/sqrt(n));
	}
	sum2 = 0.0;
	for ( k=(-n/zrev-3)/4; k<=(n/zrev-1)/4; k++ ) {
		sum2 += cephes_normal(((4*k+3)*zrev)/sqrt(n));
		sum2 -= cephes_normal(((4*k+1)*zrev)/sqrt(n));
	}
	p_value = 1.0 - sum1 + sum2;

	printf( "\t\t      CUMULATIVE SUMS (REVERSE) TEST\n");
	printf( "\t\t-------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t-------------------------------------------\n");
	printf( "\t\t(a) The maximum partial sum = %d\n", zrev);
	printf( "\t\t-------------------------------------------\n");

	if ( isNegative(p_value) || isGreaterThanOne(p_value) )
		printf( "\t\tWARNING:  P_VALUE IS OUT OF RANGE\n");

	printf( "%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value); fflush(stats[TEST_CUSUM]);
	printf( "%f\n", p_value); fflush(results[TEST_CUSUM]);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
         D I S C R E T E  F O U R I E R  T R A N S F O R M  T E S T 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
void  __ogg_fdrffti(int n, double *wsave, int *ifac);
void  __ogg_fdrfftf(int n, double *X, double *wsave, int *ifac);

void
DiscreteFourierTransform(int n)
{
	double	p_value, upperBound, percentile, N_l, N_o, d, *m = NULL, *X = NULL, *wsave = NULL;
	int		i, count, ifac[15];

	if ( ((X = (double*) calloc(n,sizeof(double))) == NULL) ||
		 ((wsave = (double *)calloc(2*n,sizeof(double))) == NULL) ||
		 ((m = (double*)calloc(n/2+1, sizeof(double))) == NULL) ) {
			fprintf(stats[7],"\t\tUnable to allocate working arrays for the DFT.\n");
			if( X != NULL )
				free(X);
			if( wsave != NULL )
				free(wsave);
			if( m != NULL )
				free(m);
			return;
	}
	for ( i=0; i<n; i++ )
		X[i] = 2*(int)epsilon[i] - 1;
	
	__ogg_fdrffti(n, wsave, ifac);		/* INITIALIZE WORK ARRAYS */
	__ogg_fdrfftf(n, X, wsave, ifac);	/* APPLY FORWARD FFT */
	
	m[0] = sqrt(X[0]*X[0]);	    /* COMPUTE MAGNITUDE */
	
	for ( i=0; i<n/2; i++ )
		m[i+1] = sqrt(pow(X[2*i+1],2)+pow(X[2*i+2],2)); 
	count = 0;				       /* CONFIDENCE INTERVAL */
	upperBound = sqrt(2.995732274*n);
	for ( i=0; i<n/2; i++ )
		if ( m[i] < upperBound )
			count++;
	percentile = (double)count/(n/2)*100;
	N_l = (double) count;       /* number of peaks less than h = sqrt(3*n) */
	N_o = (double) 0.95*n/2.0;
	d = (N_l - N_o)/sqrt(n/4.0*0.95*0.05);
	p_value = erfc(fabs(d)/sqrt(2.0));

	printf( "\t\t\t\tFFT TEST\n");
	printf( "\t\t-------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t-------------------------------------------\n");
	printf( "\t\t(a) Percentile = %f\n", percentile);
	printf( "\t\t(b) N_l        = %f\n", N_l);
	printf( "\t\t(c) N_o        = %f\n", N_o);
	printf( "\t\t(d) d          = %f\n", d);
	printf( "\t\t-------------------------------------------\n");

	printf( "%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value);
	printf( "%f\n", p_value);

	free(X);
	free(wsave);
	free(m);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                          F R E Q U E N C Y  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
Frequency(int n)
{
	int		i;
	double	f, s_obs, p_value, sum, sqrt2 = 1.41421356237309504880;
	
	sum = 0.0;
	for ( i=0; i<n; i++ )
		sum += 2*(int)epsilon[i]-1;
	s_obs = fabs(sum)/sqrt(n);
	f = s_obs/sqrt2;
	p_value = erfc(f);

	printf("\t\t\t      FREQUENCY TEST\n");
	printf("\t\t---------------------------------------------\n");
	printf("\t\tCOMPUTATIONAL INFORMATION:\n");
	printf("\t\t---------------------------------------------\n");
	printf("\t\t(a) The nth partial sum = %d\n", (int)sum);
	printf("\t\t(b) S_n/n               = %f\n", sum/n);
	printf("\t\t---------------------------------------------\n");

	printf("%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value); fflush(stats[TEST_FREQUENCY]);
	printf("%f\n", p_value); fflush(results[TEST_FREQUENCY]);

}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                   L I N E A R   C O M P L E X I T Y   T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
LinearComplexity(int M, int n)
{
	int       i, ii, j, d, N, L, m, N_, parity, sign, K = 6;
	double    p_value, T_, mean, nu[7], chi2;
	double    pi[7] = { 0.01047, 0.03125, 0.12500, 0.50000, 0.25000, 0.06250, 0.020833 };
	BitSequence  *T = NULL, *P = NULL, *B_ = NULL, *C = NULL;
	
	N = (int)floor(n/M);
	if ( ((B_ = (BitSequence *) calloc(M, sizeof(BitSequence))) == NULL) ||
		 ((C  = (BitSequence *) calloc(M, sizeof(BitSequence))) == NULL) ||
		 ((P  = (BitSequence *) calloc(M, sizeof(BitSequence))) == NULL) ||
		 ((T  = (BitSequence *) calloc(M, sizeof(BitSequence))) == NULL) ) {
		printf("Insufficient Memory for Work Space:: Linear Complexity Test\n");
		if ( B_ != NULL )
			free(B_);
		if ( C != NULL )
			free(C);
		if ( P != NULL )
			free(P);
		if ( T != NULL )
			free(T);
		return;
	}


	printf( "-----------------------------------------------------\n");
	printf( "\tL I N E A R  C O M P L E X I T Y\n");
	printf( "-----------------------------------------------------\n");
	printf( "\tM (substring length)     = %d\n", M);
	printf( "\tN (number of substrings) = %d\n", N);
	printf( "-----------------------------------------------------\n");
	printf( "        F R E Q U E N C Y                            \n");
	printf( "-----------------------------------------------------\n");
	printf( "  C0   C1   C2   C3   C4   C5   C6    CHI2    P-value\n");
	printf( "-----------------------------------------------------\n");
	printf( "\tNote: %d bits were discarded!\n", n%M);

	for ( i=0; i<K+1; i++ )
		nu[i] = 0.00;
	for ( ii=0; ii<N; ii++ ) {
		for ( i=0; i<M; i++ ) {
			B_[i] = 0;
			C[i] = 0;
			T[i] = 0;
			P[i] = 0;
		}
		L = 0;
		m = -1;
		d = 0;
		C[0] = 1;
		B_[0] = 1;
		
		/* DETERMINE LINEAR COMPLEXITY */
		N_ = 0;
		while ( N_ < M ) {
			d = (int)epsilon[ii*M+N_];
			for ( i=1; i<=L; i++ )
				d += C[i] * epsilon[ii*M+N_-i];
			d = d%2;
			if ( d == 1 ) {
				for ( i=0; i<M; i++ ) {
					T[i] = C[i];
					P[i] = 0;
				}
				for ( j=0; j<M; j++ )
					if ( B_[j] == 1 )
						P[j+N_-m] = 1;
				for ( i=0; i<M; i++ )
					C[i] = (C[i] + P[i])%2;
				if ( L <= N_/2 ) {
					L = N_ + 1 - L;
					m = N_;
					for ( i=0; i<M; i++ )
						B_[i] = T[i];
				}
			}
			N_++;
		}
		if ( (parity = (M+1)%2) == 0 ) 
			sign = -1;
		else 
			sign = 1;
		mean = M/2.0 + (9.0+sign)/36.0 - 1.0/pow(2, M) * (M/3.0 + 2.0/9.0);
		if ( (parity = M%2) == 0 )
			sign = 1;
		else 
			sign = -1;
		T_ = sign * (L - mean) + 2.0/9.0;
		
		if ( T_ <= -2.5 )
			nu[0]++;
		else if ( T_ > -2.5 && T_ <= -1.5 )
			nu[1]++;
		else if ( T_ > -1.5 && T_ <= -0.5 )
			nu[2]++;
		else if ( T_ > -0.5 && T_ <= 0.5 )
			nu[3]++;
		else if ( T_ > 0.5 && T_ <= 1.5 )
			nu[4]++;
		else if ( T_ > 1.5 && T_ <= 2.5 )
			nu[5]++;
		else
			nu[6]++;
	}
	chi2 = 0.00;
	for ( i=0; i<K+1; i++ ) 
		printf( "%4d ", (int)nu[i]);
	for ( i=0; i<K+1; i++ )
		chi2 += pow(nu[i]-N*pi[i], 2) / (N*pi[i]);
	p_value = cephes_igamc(K/2.0, chi2/2.0);

	printf( "%9.6f%9.6f\n", chi2, p_value); fflush(stats[TEST_LINEARCOMPLEXITY]);
	printf( "%f\n", p_value); fflush(results[TEST_LINEARCOMPLEXITY]);

	free(B_);
	free(P);
	free(C);
	free(T);
}


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                      L O N G E S T  R U N S  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
LongestRunOfOnes(int n)
{
	double			pval, chi2, pi[7];
	int				run, v_n_obs, N, i, j, K, M, V[7];
	unsigned int	nu[7] = { 0, 0, 0, 0, 0, 0, 0 };

	if ( n < 128 ) {
		printf( "\t\t\t  LONGEST RUNS OF ONES TEST\n");
		printf( "\t\t---------------------------------------------\n");
		printf( "\t\t   n=%d is too short\n", n);
		return;
	}
	if ( n < 6272 ) {
		K = 3;
		M = 8;
		V[0] = 1; V[1] = 2; V[2] = 3; V[3] = 4;
		pi[0] = 0.21484375;
		pi[1] = 0.3671875;
		pi[2] = 0.23046875;
		pi[3] = 0.1875;
	}
	else if ( n < 750000 ) {
		K = 5;
		M = 128;
		V[0] = 4; V[1] = 5; V[2] = 6; V[3] = 7; V[4] = 8; V[5] = 9;
		pi[0] = 0.1174035788;
		pi[1] = 0.242955959;
		pi[2] = 0.249363483;
		pi[3] = 0.17517706;
		pi[4] = 0.102701071;
		pi[5] = 0.112398847;
	}
	else {
		K = 6;
		M = 10000;
			V[0] = 10; V[1] = 11; V[2] = 12; V[3] = 13; V[4] = 14; V[5] = 15; V[6] = 16;
		pi[0] = 0.0882;
		pi[1] = 0.2092;
		pi[2] = 0.2483;
		pi[3] = 0.1933;
		pi[4] = 0.1208;
		pi[5] = 0.0675;
		pi[6] = 0.0727;
	}
	
	N = n/M;
	for ( i=0; i<N; i++ ) {
		v_n_obs = 0;
		run = 0;
		for ( j=0; j<M; j++ ) {
			if ( epsilon[i*M+j] == 1 ) {
				run++;
				if ( run > v_n_obs )
					v_n_obs = run;
			}
			else
				run = 0;
		}
		if ( v_n_obs < V[0] )
			nu[0]++;
		for ( j=0; j<=K; j++ ) {
			if ( v_n_obs == V[j] )
				nu[j]++;
		}
		if ( v_n_obs > V[K] )
			nu[K]++;
	}

	chi2 = 0.0;
	for ( i=0; i<=K; i++ )
		chi2 += ((nu[i] - N * pi[i]) * (nu[i] - N * pi[i])) / (N * pi[i]);

	pval = cephes_igamc((double)(K/2.0), chi2 / 2.0);

	printf( "\t\t\t  LONGEST RUNS OF ONES TEST\n");
	printf( "\t\t---------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t---------------------------------------------\n");
	printf( "\t\t(a) N (# of substrings)  = %d\n", N);
	printf( "\t\t(b) M (Substring Length) = %d\n", M);
	printf( "\t\t(c) Chi^2                = %f\n", chi2);
	printf( "\t\t---------------------------------------------\n");
	printf( "\t\t      F R E Q U E N C Y\n");
	printf( "\t\t---------------------------------------------\n");

	if ( K == 3 ) {
		printf( "\t\t  <=1     2     3    >=4   P-value  Assignment");
		printf( "\n\t\t %3d %3d %3d  %3d ", nu[0], nu[1], nu[2], nu[3]);
	}
	else if ( K == 5 ) {
		printf( "\t\t<=4  5  6  7  8  >=9 P-value  Assignment");
		printf( "\n\t\t %3d %3d %3d %3d %3d  %3d ", nu[0], nu[1], nu[2],
				nu[3], nu[4], nu[5]);
	}
	else {
		printf("\t\t<=10  11  12  13  14  15 >=16 P-value  Assignment");
		printf("\n\t\t %3d %3d %3d %3d %3d %3d  %3d ", nu[0], nu[1], nu[2],
				nu[3], nu[4], nu[5], nu[6]);
	}
	if ( isNegative(pval) || isGreaterThanOne(pval) )
		printf( "WARNING:  P_VALUE IS OUT OF RANGE.\n");

	printf( "%s\t\tp_value = %f\n\n", pval < ALPHA ? "FAILURE" : "SUCCESS", pval); fflush(stats[TEST_LONGEST_RUN]);
	printf( "%f\n", pval); fflush(results[TEST_LONGEST_RUN]);
}


/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
          N O N O V E R L A P P I N G  T E M P L A T E  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
NonOverlappingTemplateMatchings(int m, int n)
{
	int		numOfTemplates[100] = {0, 0, 2, 4, 6, 12, 20, 40, 74, 148, 284, 568, 1116,
						2232, 4424, 8848, 17622, 35244, 70340, 140680, 281076, 562152};
	/*----------------------------------------------------------------------------
	NOTE:  Should additional templates lengths beyond 21 be desired, they must 
	first be constructed, saved into files and then the corresponding 
	number of nonperiodic templates for that file be stored in the m-th 
	position in the numOfTemplates variable.
	----------------------------------------------------------------------------*/
	unsigned int	bit, W_obs, nu[6], *Wj = NULL; 
	FILE			*fp = NULL;
	double			sum, chi2, p_value, lambda, pi[6], varWj;
	int				i, j, jj, k, match, SKIP, M, N, K = 5;
	char			directory[100];
	BitSequence		*sequence = NULL;

	N = 8;
	M = n/N;

	if ( (Wj = (unsigned int*)calloc(N, sizeof(unsigned int))) == NULL ) {
		printf( "\tNONOVERLAPPING TEMPLATES TESTS ABORTED DUE TO ONE OF THE FOLLOWING : \n");
		printf( "\tInsufficient memory for required work space.\n");
		return;
	}
	lambda = (M-m+1)/pow(2, m);
	varWj = M*(1.0/pow(2.0, m) - (2.0*m-1.0)/pow(2.0, 2.0*m));
	sprintf(directory, "templates/template%d", m);

	if ( ((isNegative(lambda)) || (isZero(lambda))) ||
		 ((fp = fopen(directory, "r")) == NULL) ||
		 ((sequence = (BitSequence *) calloc(m, sizeof(BitSequence))) == NULL) ) {
		printf( "\tNONOVERLAPPING TEMPLATES TESTS ABORTED DUE TO ONE OF THE FOLLOWING : \n");
		printf( "\tLambda (%f) not being positive!\n", lambda);
		printf( "\tTemplate file <%s> not existing\n", directory);
		printf( "\tInsufficient memory for required work space.\n");
		if ( sequence != NULL )
			free(sequence);
	}
	else {
		printf( "\t\t  NONPERIODIC TEMPLATES TEST\n");
		printf( "-------------------------------------------------------------------------------------\n");
		printf( "\t\t  COMPUTATIONAL INFORMATION\n");
		printf( "-------------------------------------------------------------------------------------\n");
		printf( "\tLAMBDA = %f\tM = %d\tN = %d\tm = %d\tn = %d\n", lambda, M, N, m, n);
		printf( "-------------------------------------------------------------------------------------\n");
		printf( "\t\tF R E Q U E N C Y\n");
		printf( "Template   W_1  W_2  W_3  W_4  W_5  W_6  W_7  W_8    Chi^2   P_value Assignment Index\n");
		printf( "-------------------------------------------------------------------------------------\n");

		if ( numOfTemplates[m] < MAXNUMOFTEMPLATES )
			SKIP = 1;
		else
			SKIP = (int)(numOfTemplates[m]/MAXNUMOFTEMPLATES);
		numOfTemplates[m] = (int)numOfTemplates[m]/SKIP;
		
		sum = 0.0;
		for ( i=0; i<2; i++ ) {                      /* Compute Probabilities */
			pi[i] = exp(-lambda+i*log(lambda)-cephes_lgam(i+1));
			sum += pi[i];
		}
		pi[0] = sum;
		for ( i=2; i<=K; i++ ) {                      /* Compute Probabilities */
			pi[i-1] = exp(-lambda+i*log(lambda)-cephes_lgam(i+1));
			sum += pi[i-1];
		}
		pi[K] = 1 - sum;

		for( jj=0; jj<MIN(MAXNUMOFTEMPLATES, numOfTemplates[m]); jj++ ) {
			sum = 0;

			for ( k=0; k<m; k++ ) {
				fscanf(fp, "%d", &bit);
				sequence[k] = bit;
				printf( "%d", sequence[k]);
			}
			printf( " ");
			for ( k=0; k<=K; k++ )
				nu[k] = 0;
			for ( i=0; i<N; i++ ) {
				W_obs = 0;
				for ( j=0; j<M-m+1; j++ ) {
					match = 1;
					for ( k=0; k<m; k++ ) {
						if ( (int)sequence[k] != (int)epsilon[i*M+j+k] ) {
							match = 0;
							break;
						}
					}
					if ( match == 1 ) {
						W_obs++;
                        j += m-1;
                    }
				}
				Wj[i] = W_obs;
			}
			sum = 0;
			chi2 = 0.0;                                   /* Compute Chi Square */
			for ( i=0; i<N; i++ ) {
				if ( m == 10 )
					printf( "%3d  ", Wj[i]);
				else
					printf( "%4d ", Wj[i]);
				chi2 += pow(((double)Wj[i] - lambda)/pow(varWj, 0.5), 2);
			}
			p_value = cephes_igamc(N/2.0, chi2/2.0);
		
			if ( isNegative(p_value) || isGreaterThanOne(p_value) )
				printf( "\t\tWARNING:  P_VALUE IS OUT OF RANGE.\n");

			printf( "%9.6f %f %s %3d\n", chi2, p_value, p_value < ALPHA ? "FAILURE" : "SUCCESS", jj);
			if ( SKIP > 1 )
				fseek(fp, (long)(SKIP-1)*2*m, SEEK_CUR);
			fprintf(results[TEST_NONPERIODIC], "%f\n", p_value); fflush(results[TEST_NONPERIODIC]);
		}
	}
	
	printf( "\n"); fflush(stats[TEST_NONPERIODIC]);
	if ( sequence != NULL )
		free(sequence);

	free(Wj);
    if ( fp != NULL )
        fclose(fp);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
               O V E R L A P P I N G  T E M P L A T E  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
double	Pr(int u, double eta);

void
OverlappingTemplateMatchings(int m, int n)
{
	int				i, k, match;
	double			W_obs, eta, sum, chi2, p_value, lambda;
	int				M, N, j, K = 5;
	unsigned int	nu[6] = { 0, 0, 0, 0, 0, 0 };
	//double			pi[6] = { 0.143783, 0.139430, 0.137319, 0.124314, 0.106209, 0.348945 };
	double			pi[6] = { 0.364091, 0.185659, 0.139381, 0.100571, 0.0704323, 0.139865 };
	BitSequence		*sequence;

	M = 1032;
	N = n/M;
	printf("m=%d\n", m);

	if ( (sequence = (BitSequence *) calloc(m, sizeof(BitSequence))) == NULL ) {
		printf( "\t\t    OVERLAPPING TEMPLATE OF ALL ONES TEST\n");
		printf( "\t\t---------------------------------------------\n");
		printf( "\t\tTEMPLATE DEFINITION:  Insufficient memory, Overlapping Template Matchings test aborted!\n");
	}
	else
		for ( i=0; i<m; i++ )
			sequence[i] = 1;
	
	lambda = (double)(M-m+1)/pow(2,m);
	eta = lambda/2.0;
	sum = 0.0;
	for ( i=0; i<K; i++ ) {			/* Compute Probabilities */
		pi[i] = Pr(i, eta);
		sum += pi[i];
	}
	pi[K] = 1 - sum;

	for ( i=0; i<N; i++ ) {
		W_obs = 0;
		for ( j=0; j<M-m+1; j++ ) {
			match = 1;
			for ( k=0; k<m; k++ ) {
				if ( sequence[k] != epsilon[i*M+j+k] )
					match = 0;
			}
			if ( match == 1 )
				W_obs++;
		}
		if ( W_obs <= 4 )
			nu[(int)W_obs]++;
		else
			nu[K]++;
	}
	sum = 0;
	chi2 = 0.0;                                   /* Compute Chi Square */
	for ( i=0; i<K+1; i++ ) {
		chi2 += pow((double)nu[i] - (double)N*pi[i], 2)/((double)N*pi[i]);
		sum += nu[i];
	}
	p_value = cephes_igamc(K/2.0, chi2/2.0);

	printf( "\t\t    OVERLAPPING TEMPLATE OF ALL ONES TEST\n");
	printf( "\t\t-----------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t-----------------------------------------------\n");
	printf( "\t\t(a) n (sequence_length)      = %d\n", n);
	printf( "\t\t(b) m (block length of 1s)   = %d\n", m);
	printf( "\t\t(c) M (length of substring)  = %d\n", M);
	printf( "\t\t(d) N (number of substrings) = %d\n", N);
	printf( "\t\t(e) lambda [(M-m+1)/2^m]     = %f\n", lambda);
	printf( "\t\t(f) eta                      = %f\n", eta);
	printf( "\t\t-----------------------------------------------\n");
	printf( "\t\t   F R E Q U E N C Y\n");
	printf( "\t\t  0   1   2   3   4 >=5   Chi^2   P-value  Assignment\n");
	printf( "\t\t-----------------------------------------------\n");
	printf( "\t\t%3d %3d %3d %3d %3d %3d  %f ",
		nu[0], nu[1], nu[2], nu[3], nu[4], nu[5], chi2);

	if ( isNegative(p_value) || isGreaterThanOne(p_value) )
		printf( "WARNING:  P_VALUE IS OUT OF RANGE.\n");


	printf( "%f %s\n\n", p_value, p_value < ALPHA ? "FAILURE" : "SUCCESS"); fflush(stats[TEST_OVERLAPPING]);
	printf( "%f\n", p_value); fflush(results[TEST_OVERLAPPING]);

	free(sequence);

}

double
Pr(int u, double eta)
{
	int		l;
	double	sum, p;
	
	if ( u == 0 )
		p = exp(-eta);
	else {
		sum = 0.0;
		for ( l=1; l<=u; l++ )
			sum += exp(-eta-u*log(2)+l*log(eta)-cephes_lgam(l+1)+cephes_lgam(u)-cephes_lgam(l)-cephes_lgam(u-l+1));
		p = sum;
	}
	return p;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                     R A N D O M  E X C U R S I O N S  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
RandomExcursions(int n)
{
	int		b, i, j, k, J, x;
	int		cycleStart, cycleStop, *cycle = NULL, *S_k = NULL;
	int		stateX[8] = { -4, -3, -2, -1, 1, 2, 3, 4 };
	int		counter[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };
	double	p_value, sum, constraint, nu[6][8];
	double	pi[5][6] = { {0.0000000000, 0.00000000000, 0.00000000000, 0.00000000000, 0.00000000000, 0.0000000000}, 
						 {0.5000000000, 0.25000000000, 0.12500000000, 0.06250000000, 0.03125000000, 0.0312500000},
						 {0.7500000000, 0.06250000000, 0.04687500000, 0.03515625000, 0.02636718750, 0.0791015625},
						 {0.8333333333, 0.02777777778, 0.02314814815, 0.01929012346, 0.01607510288, 0.0803755143},
						 {0.8750000000, 0.01562500000, 0.01367187500, 0.01196289063, 0.01046752930, 0.0732727051} };
	
	if ( ((S_k = (int *)calloc(n, sizeof(int))) == NULL) ||
		 ((cycle = (int *)calloc(MAX(1000, n/100), sizeof(int))) == NULL) ) {
		printf("Random Excursions Test:  Insufficent Work Space Allocated.\n");
		if ( S_k != NULL )
			free(S_k);
		if ( cycle != NULL )
			free(cycle);
		return;
	}
	
	J = 0; 					/* DETERMINE CYCLES */
	S_k[0] = 2*(int)epsilon[0] - 1;
	for( i=1; i<n; i++ ) {
		S_k[i] = S_k[i-1] + 2*epsilon[i] - 1;
		if ( S_k[i] == 0 ) {
			J++;
			if ( J > MAX(1000, n/100) ) {
				printf("ERROR IN FUNCTION randomExcursions:  EXCEEDING THE MAX NUMBER OF CYCLES EXPECTED\n.");
				free(S_k);
				free(cycle);
				return;
			}
			cycle[J] = i;
		}
	}
	if ( S_k[n-1] != 0 )
		J++;
	cycle[J] = n;

	printf( "\t\t\t  RANDOM EXCURSIONS TEST\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\t(a) Number Of Cycles (J) = %04d\n", J);
	printf( "\t\t(b) Sequence Length (n)  = %d\n", n);

	constraint = MAX(0.005*pow(n, 0.5), 500);
	if (J < constraint) {
		printf( "\t\t---------------------------------------------\n");
		printf( "\t\tWARNING:  TEST NOT APPLICABLE.  THERE ARE AN\n");
		printf( "\t\t\t  INSUFFICIENT NUMBER OF CYCLES.\n");
		printf( "\t\t---------------------------------------------\n");
		for(i = 0; i < 8; i++)
			printf( "%f\n", 0.0);
	}
	else {
		printf( "\t\t(c) Rejection Constraint = %f\n", constraint);
		printf( "\t\t-------------------------------------------\n");

		cycleStart = 0;
		cycleStop  = cycle[1];
		for ( k=0; k<6; k++ )
			for ( i=0; i<8; i++ )
				nu[k][i] = 0.;
		for ( j=1; j<=J; j++ ) {                           /* FOR EACH CYCLE */
			for ( i=0; i<8; i++ )
				counter[i] = 0;
			for ( i=cycleStart; i<cycleStop; i++ ) {
				if ( (S_k[i] >= 1 && S_k[i] <= 4) || (S_k[i] >= -4 && S_k[i] <= -1) ) {
					if ( S_k[i] < 0 )
						b = 4;
					else
						b = 3;
					counter[S_k[i]+b]++;
				}
			}
			cycleStart = cycle[j]+1;
			if ( j < J )
				cycleStop = cycle[j+1];
			
			for ( i=0; i<8; i++ ) {
				if ( (counter[i] >= 0) && (counter[i] <= 4) )
					nu[counter[i]][i]++;
				else if ( counter[i] >= 5 )
					nu[5][i]++;
			}
		}
		
		for ( i=0; i<8; i++ ) {
			x = stateX[i];
			sum = 0.;
			for ( k=0; k<6; k++ )
				sum += pow(nu[k][i] - J*pi[(int)fabs(x)][k], 2) / (J*pi[(int)fabs(x)][k]);
			p_value = cephes_igamc(2.5, sum/2.0);
			
			if ( isNegative(p_value) || isGreaterThanOne(p_value) )
				printf( "WARNING:  P_VALUE IS OUT OF RANGE.\n");

			printf( "%s\t\tx = %2d chi^2 = %9.6f p_value = %f\n",
					p_value < ALPHA ? "FAILURE" : "SUCCESS", x, sum, p_value);
			printf( "%f\n", p_value); fflush(results[TEST_RND_EXCURSION]);
		}
	} 
	printf( "\n"); fflush(stats[TEST_RND_EXCURSION]);
	free(S_k);
	free(cycle);
}
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
            R A N D O M  E X C U R S I O N S  V A R I A N T  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
RandomExcursionsVariant(int n)
{
	int		i, p, J, x, constraint, count, *S_k;
	int		stateX[18] = { -9, -8, -7, -6, -5, -4, -3, -2, -1, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
	double	p_value;
	
	if ( (S_k = (int *)calloc(n, sizeof(int))) == NULL ) {
		printf( "\t\tRANDOM EXCURSIONS VARIANT: Insufficent memory allocated.\n");
		return;
	}
	J = 0;
	S_k[0] = 2*(int)epsilon[0] - 1;
	for ( i=1; i<n; i++ ) {
		S_k[i] = S_k[i-1] + 2*epsilon[i] - 1;
		if ( S_k[i] == 0 )
			J++;
	}
	if ( S_k[n-1] != 0 )
		J++;

	printf( "\t\t\tRANDOM EXCURSIONS VARIANT TEST\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\t(a) Number Of Cycles (J) = %d\n", J);
	printf( "\t\t(b) Sequence Length (n)  = %d\n", n);
	printf( "\t\t--------------------------------------------\n");

	constraint = (int)MAX(0.005*pow(n, 0.5), 500);
	if (J < constraint) {
		printf( "\n\t\tWARNING:  TEST NOT APPLICABLE.  THERE ARE AN\n");
		printf( "\t\t\t  INSUFFICIENT NUMBER OF CYCLES.\n");
		printf( "\t\t---------------------------------------------\n");
		for ( i=0; i<18; i++ )
			printf( "%f\n", 0.0);
	}
	else {
		for ( p=0; p<=17; p++ ) {
			x = stateX[p];
			count = 0;
			for ( i=0; i<n; i++ )
				if ( S_k[i] == x )
					count++;
			p_value = erfc(fabs(count-J)/(sqrt(2.0*J*(4.0*fabs(x)-2))));

			if ( isNegative(p_value) || isGreaterThanOne(p_value) )
				printf( "\t\t(b) WARNING: P_VALUE IS OUT OF RANGE.\n");
			printf( "%s\t\t", p_value < ALPHA ? "FAILURE" : "SUCCESS");
			printf( "(x = %2d) Total visits = %4d; p-value = %f\n", x, count, p_value);
			printf( "%f\n", p_value); fflush(results[TEST_RND_EXCURSION_VAR]);
		}
	}
	printf( "\n"); fflush(stats[TEST_RND_EXCURSION_VAR]);
	free(S_k);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                              R A N K  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
Rank(int n)
{
	int			N, i, k, r;
	double		p_value, product, chi_squared, arg1, p_32, p_31, p_30, R, F_32, F_31, F_30;
	BitSequence	**matrix = create_matrix(32, 32);
	
	N = n/(32*32);
	if ( isZero(N) ) {
		printf( "\t\t\t\tRANK TEST\n");
		printf( "\t\tError: Insuffucient # Of Bits To Define An 32x32 (%dx%d) Matrix\n", 32, 32);
		p_value = 0.00;
	}
	else {
		r = 32;					/* COMPUTE PROBABILITIES */
		product = 1;
		for ( i=0; i<=r-1; i++ )
			product *= ((1.e0-pow(2, i-32))*(1.e0-pow(2, i-32)))/(1.e0-pow(2, i-r));
		p_32 = pow(2, r*(32+32-r)-32*32) * product;
		
		r = 31;
		product = 1;
		for ( i=0; i<=r-1; i++ )
			product *= ((1.e0-pow(2, i-32))*(1.e0-pow(2, i-32)))/(1.e0-pow(2, i-r));
		p_31 = pow(2, r*(32+32-r)-32*32) * product;
		
		p_30 = 1 - (p_32+p_31);
		
		F_32 = 0;
		F_31 = 0;
		for ( k=0; k<N; k++ ) {			/* FOR EACH 32x32 MATRIX   */
			def_matrix(32, 32, matrix, k);
#if (DISPLAY_MATRICES == 1)
			display_matrix(32, 32, matrix);
#endif
			R = computeRank(32, 32, matrix);
			if ( R == 32 )
				F_32++;			/* DETERMINE FREQUENCIES */
			if ( R == 31 )
				F_31++;
		}
		F_30 = (double)N - (F_32+F_31);
		
		chi_squared =(pow(F_32 - N*p_32, 2)/(double)(N*p_32) +
					  pow(F_31 - N*p_31, 2)/(double)(N*p_31) +
					  pow(F_30 - N*p_30, 2)/(double)(N*p_30));
		
		arg1 = -chi_squared/2.e0;

		printf( "\t\t\t\tRANK TEST\n");
		printf( "\t\t---------------------------------------------\n");
		printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
		printf( "\t\t---------------------------------------------\n");
		printf( "\t\t(a) Probability P_%d = %f\n", 32,p_32);
		printf( "\t\t(b)             P_%d = %f\n", 31,p_31);
		printf( "\t\t(c)             P_%d = %f\n", 30,p_30);
		printf( "\t\t(d) Frequency   F_%d = %d\n", 32,(int)F_32);
		printf( "\t\t(e)             F_%d = %d\n", 31,(int)F_31);
		printf( "\t\t(f)             F_%d = %d\n", 30,(int)F_30);
		printf( "\t\t(g) # of matrices    = %d\n", N);
		printf( "\t\t(h) Chi^2            = %f\n", chi_squared);
		printf( "\t\t(i) NOTE: %d BITS WERE DISCARDED.\n", n%(32*32));
		printf( "\t\t---------------------------------------------\n");

		p_value = exp(arg1);
		if ( isNegative(p_value) || isGreaterThanOne(p_value) )
			printf( "WARNING:  P_VALUE IS OUT OF RANGE.\n");

		for ( i=0; i<32; i++ )				/* DEALLOCATE MATRIX  */
			free(matrix[i]);
		free(matrix);
	}
	printf( "%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value); fflush(stats[TEST_RANK]);
	printf( "%f\n", p_value); fflush(results[TEST_RANK]);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                              R U N S  T E S T 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
Runs(int n)
{
	int		S, k;
	double	pi, V, erfc_arg, p_value;

	S = 0;
	for ( k=0; k<n; k++ )
		if ( epsilon[k] )
			S++;
	pi = (double)S / (double)n;

	if ( fabs(pi - 0.5) > (2.0 / sqrt(n)) ) {
		printf( "\t\t\t\tRUNS TEST\n");
		printf( "\t\t------------------------------------------\n");
		printf( "\t\tPI ESTIMATOR CRITERIA NOT MET! PI = %f\n", pi);
		p_value = 0.0;
	}
	else {

		V = 1;
		for ( k=1; k<n; k++ )
			if ( epsilon[k] != epsilon[k-1] )
				V++;
	
		erfc_arg = fabs(V - 2.0 * n * pi * (1-pi)) / (2.0 * pi * (1-pi) * sqrt(2*n));
		p_value = erfc(erfc_arg);
		
		printf( "\t\t\t\tRUNS TEST\n");
		printf( "\t\t------------------------------------------\n");
		printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
		printf( "\t\t------------------------------------------\n");
		printf( "\t\t(a) Pi                        = %f\n", pi);
		printf( "\t\t(b) V_n_obs (Total # of runs) = %d\n", (int)V);
		printf( "\t\t(c) V_n_obs - 2 n pi (1-pi)\n");
		printf( "\t\t    -----------------------   = %f\n", erfc_arg);
		printf( "\t\t      2 sqrt(2n) pi (1-pi)\n");
		printf( "\t\t------------------------------------------\n");
		if ( isNegative(p_value) || isGreaterThanOne(p_value) )
			printf( "WARNING:  P_VALUE IS OUT OF RANGE.\n");

		printf( "%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value); fflush(stats[TEST_RUNS]);
	}

	printf( "%f\n", p_value); fflush(results[TEST_RUNS]);
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                              S E R I A L  T E S T 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */


double psi2(int m, int n);

void
Serial(int m, int n)
{
	double	p_value1, p_value2, psim0, psim1, psim2, del1, del2;
	
	psim0 = psi2(m, n);
	psim1 = psi2(m-1, n);
	psim2 = psi2(m-2, n);
	del1 = psim0 - psim1;
	del2 = psim0 - 2.0*psim1 + psim2;
	p_value1 = cephes_igamc(pow(2, m-1)/2, del1/2.0);
	p_value2 = cephes_igamc(pow(2, m-2)/2, del2/2.0);
	
	printf( "\t\t\t       SERIAL TEST\n");
	printf( "\t\t---------------------------------------------\n");
	printf( "\t\t COMPUTATIONAL INFORMATION:		  \n");
	printf( "\t\t---------------------------------------------\n");
	printf( "\t\t(a) Block length    (m) = %d\n", m);
	printf( "\t\t(b) Sequence length (n) = %d\n", n);
	printf( "\t\t(c) Psi_m               = %f\n", psim0);
	printf( "\t\t(d) Psi_m-1             = %f\n", psim1);
	printf( "\t\t(e) Psi_m-2             = %f\n", psim2);
	printf( "\t\t(f) Del_1               = %f\n", del1);
	printf( "\t\t(g) Del_2               = %f\n", del2);
	printf( "\t\t---------------------------------------------\n");

	printf( "%s\t\tp_value1 = %f\n", p_value1 < ALPHA ? "FAILURE" : "SUCCESS", p_value1);
	printf( "%f\n", p_value1);

	printf( "%s\t\tp_value2 = %f\n\n", p_value2 < ALPHA ? "FAILURE" : "SUCCESS", p_value2); fflush(stats[TEST_SERIAL]);
	printf( "%f\n", p_value2); fflush(results[TEST_SERIAL]);
}

double
psi2(int m, int n)
{
	int				i, j, k, powLen;
	double			sum, numOfBlocks;
	unsigned int	*P;
	
	if ( (m == 0) || (m == -1) )
		return 0.0;
	numOfBlocks = n;
	powLen = (int)pow(2, m+1)-1;
	if ( (P = (unsigned int*)calloc(powLen,sizeof(unsigned int)))== NULL ) {
		printf( "Serial Test:  Insufficient memory available.\n");
		fflush(stats[TEST_SERIAL]);
		return 0.0;
	}
	for ( i=1; i<powLen-1; i++ )
		P[i] = 0;	  /* INITIALIZE NODES */
	for ( i=0; i<numOfBlocks; i++ ) {		 /* COMPUTE FREQUENCY */
		k = 1;
		for ( j=0; j<m; j++ ) {
			if ( epsilon[(i+j)%n] == 0 )
				k *= 2;
			else if ( epsilon[(i+j)%n] == 1 )
				k = 2*k+1;
		}
		P[k-1]++;
	}
	sum = 0.0;
	for ( i=(int)pow(2, m)-1; i<(int)pow(2, m+1)-1; i++ )
		sum += pow(P[i], 2);
	sum = (sum * pow(2, m)/(double)n) - (double)n;
	free(P);
	
	return sum;
}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
                         U N I V E R S A L  T E S T
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

void
Universal(int n)
{
	int		i, j, p, L, Q, K;
	double	arg, sqrt2, sigma, phi, sum, p_value, c;
	long	*T, decRep;
	double	expected_value[17] = { 0, 0, 0, 0, 0, 0, 5.2177052, 6.1962507, 7.1836656,
				8.1764248, 9.1723243, 10.170032, 11.168765,
				12.168070, 13.167693, 14.167488, 15.167379 };
	double   variance[17] = { 0, 0, 0, 0, 0, 0, 2.954, 3.125, 3.238, 3.311, 3.356, 3.384,
				3.401, 3.410, 3.416, 3.419, 3.421 };
	
	/* * * * * * * * * ** * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
	 * THE FOLLOWING REDEFINES L, SHOULD THE CONDITION:     n >= 1010*2^L*L       *
	 * NOT BE MET, FOR THE BLOCK LENGTH L.                                        *
	 * * * * * * * * * * ** * * * * * * * * * * * * * * * * * * * * * * * * * * * */
	L = 5;
	if ( n >= 387840 )     L = 6;
	if ( n >= 904960 )     L = 7;
	if ( n >= 2068480 )    L = 8;
	if ( n >= 4654080 )    L = 9;
	if ( n >= 10342400 )   L = 10;
	if ( n >= 22753280 )   L = 11;
	if ( n >= 49643520 )   L = 12;
	if ( n >= 107560960 )  L = 13;
	if ( n >= 231669760 )  L = 14;
	if ( n >= 496435200 )  L = 15;
	if ( n >= 1059061760 ) L = 16;
	
	Q = 10*(int)pow(2, L);
	K = (int) (floor(n/L) - (double)Q);	 		    /* BLOCKS TO TEST */
	
	p = (int)pow(2, L);
	if ( (L < 6) || (L > 16) || ((double)Q < 10*pow(2, L)) ||
		 ((T = (long *)calloc(p, sizeof(long))) == NULL) ) {
		printf( "\t\tUNIVERSAL STATISTICAL TEST\n");
		printf( "\t\t---------------------------------------------\n");
		printf( "\t\tERROR:  L IS OUT OF RANGE.\n");
		printf( "\t\t-OR- :  Q IS LESS THAN %f.\n", 10*pow(2, L));
		printf( "\t\t-OR- :  Unable to allocate T.\n");
		return;
	}
	
	/* COMPUTE THE EXPECTED:  Formula 16, in Marsaglia's Paper */
	c = 0.7 - 0.8/(double)L + (4 + 32/(double)L)*pow(K, -3/(double)L)/15;
	sigma = c * sqrt(variance[L]/(double)K);
	sqrt2 = sqrt(2);
	sum = 0.0;
	for ( i=0; i<p; i++ )
		T[i] = 0;
	for ( i=1; i<=Q; i++ ) {		/* INITIALIZE TABLE */
		decRep = 0;
		for ( j=0; j<L; j++ )
			decRep += epsilon[(i-1)*L+j] * (long)pow(2, L-1-j);
		T[decRep] = i;
	}
	for ( i=Q+1; i<=Q+K; i++ ) { 	/* PROCESS BLOCKS */
		decRep = 0;
		for ( j=0; j<L; j++ )
			decRep += epsilon[(i-1)*L+j] * (long)pow(2, L-1-j);
		sum += log(i - T[decRep])/log(2);
		T[decRep] = i;
	}
	phi = (double)(sum/(double)K);

	printf( "\t\tUNIVERSAL STATISTICAL TEST\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\tCOMPUTATIONAL INFORMATION:\n");
	printf( "\t\t--------------------------------------------\n");
	printf( "\t\t(a) L         = %d\n", L);
	printf( "\t\t(b) Q         = %d\n", Q);
	printf( "\t\t(c) K         = %d\n", K);
	printf( "\t\t(d) sum       = %f\n", sum);
	printf( "\t\t(e) sigma     = %f\n", sigma);
	printf( "\t\t(f) variance  = %f\n", variance[L]);
	printf( "\t\t(g) exp_value = %f\n", expected_value[L]);
	printf( "\t\t(h) phi       = %f\n", phi);
	printf( "\t\t(i) WARNING:  %d bits were discarded.\n", n-(Q+K)*L);
	printf( "\t\t-----------------------------------------\n");

	arg = fabs(phi-expected_value[L])/(sqrt2 * sigma);
	p_value = erfc(arg);
	if ( isNegative(p_value) || isGreaterThanOne(p_value) )
		printf( "\t\tWARNING:  P_VALUE IS OUT OF RANGE\n");

	printf( "%s\t\tp_value = %f\n\n", p_value < ALPHA ? "FAILURE" : "SUCCESS", p_value); fflush(stats[TEST_UNIVERSAL]);
	printf( "%f\n", p_value); fflush(results[TEST_UNIVERSAL]);
	
	free(T);
}
