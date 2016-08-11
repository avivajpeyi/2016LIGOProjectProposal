 #pragma rtGlobals=3		// Use modern global access method and strict wave access.

Menu "Stuff"
	"HistogramData",  HistogramData(H_freq_noisevar_5 , H_freq_img_5, H_freq_real_5, L_freq_noisevar_5 ,L_freq_img_5, L_freq_real_5)
	
End


Function HistogramData(H_freq_noisevar_5 , H_freq_img_5, H_freq_real_5, L_freq_noisevar_5 ,L_freq_img_5, L_freq_real_5)


Wave H_freq_noisevar_5 , H_freq_img_5, H_freq_real_5, L_freq_noisevar_5 ,L_freq_img_5, L_freq_real_5


Duplicate/O H_freq_noisevar_5, H_sqrt_noisevar_5; H_sqrt_noisevar_5 = sqrt(H_sqrt_noisevar_5)
Duplicate/O  H_freq_img_5,  Himg_histo_5; Himg_histo_5 = Himg_histo_5 /  H_sqrt_noisevar_5
Duplicate/O  H_freq_real_5,  Hreal_histo_5; Hreal_histo_5 = Hreal_histo_5 /  H_sqrt_noisevar_5

Duplicate/O L_freq_noisevar_5, L_sqrt_noisevar_5; L_sqrt_noisevar_5 = sqrt(L_sqrt_noisevar_5)
Duplicate/O  L_freq_img_5,  Limg_histo_5; Limg_histo_5 = Limg_histo_5 /  L_sqrt_noisevar_5
Duplicate/O  L_freq_real_5,  Lreal_histo_5; Lreal_histo_5 = Lreal_histo_5 /  L_sqrt_noisevar_5



End

	
	
	end