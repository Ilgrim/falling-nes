;; Stream header format:
 ; 
 ; Stream number (MUSIC_SQ1, MUSIC_SQ2, MUSIC_TRI, MUSIC_NOI, SFX_1, or SFX_2)
 ; Stream status (1=enabled, 0=disabled: If stream is disabled, skip to next header)
 ; Channel number
 ; Channel settings (Squares: Duty cycle %DD110000, Triangle: $80, Noise: $30)
 ; Volume envelope (offset for pointer table)
 ; Note stream pointer (points to label with notes below)
 ; Tempo

sfxObst_header:
  .db $01	; number of streams

  .db SFX_2
  .db $01
  .db NOISE
  .db $80 
  .db ve_stac2
  .dw sfxObst_noi
  .db $C0
  
  
sfxObst_noi:
  .db n_8, N0_F, N0_E
  .db n_8, N1_F, rest
  
  .db endsound