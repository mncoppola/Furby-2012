;tw1_n:


;Section=  1

	DB	$8						;Tempo= 110 beat/Min
	DB	$30,$A						;CH0 Volume Level= 10
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$31,$A						;CH1 Volume Level= 10
	DB	$29,$81						;CH1 Instrument/Speech= 129
	DB		$32,$F					;CH2 Volume Level= 15
	DB		$2A,$1					;CH2 Instrument/Speech= 01
	DB			$33,$9				;CH3 Volume Level= 09
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$34,$9			;CH4 Volume Level= 09
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$35,$6		;CH5 Volume Level= 06
	DB					$2D,$18		;CH5 Instrument/Speech= 24
	DB	$20,$02						;Ch0 Octave= 2
	DB			$22,$04				;Ch2 Octave= 4
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$00		;Ch4 Octave= 0
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B8			;Ch3 play So 
	DB					$C8		;Ch4 play So 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$18			;CH4 Instrument/Speech= 24
	DB					$35,$5		;CH5 Volume Level= 05
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$03	;Ch5 Octave= 3
	DB					$CC		;ch4 play Si 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$34,$9			;CH4 Volume Level= 09
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB		$21,$02					;Ch1 Octave= 2
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$4	;Beat=  4
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$18			;CH4 Instrument/Speech= 24
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$02	;Ch5 Octave= 2
	DB			$A3				;Ch2 play Re 
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$34,$9			;CH4 Volume Level= 09
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$24,$00		;Ch4 Octave= 0
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$18			;CH4 Instrument/Speech= 24
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$03	;Ch5 Octave= 3
	DB			$A3				;Ch2 play Re 
	DB					$CC		;ch4 play Si 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$34,$9			;CH4 Volume Level= 09
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$24,$00		;Ch4 Octave= 0
	DB						$25,$01	;Ch5 Octave= 1
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B3			;Ch3 play Re 
	DB					$C8		;ch4 play So 
	DB						$DC	;ch5 play Si 
	DB						$4	;Beat=  4
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$18			;CH4 Instrument/Speech= 24
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$02	;Ch5 Octave= 2
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB					$C3		;ch4 play Re 
	DB						$DA	;ch5 play La 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section=  2

	DB				$34,$9			;CH4 Volume Level= 09
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB			$22,$05				;Ch2 Octave= 5
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B1			;Ch3 play Do 
	DB					$C8		;Ch4 play So 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$18			;CH4 Instrument/Speech= 24
	DB			$22,$04				;Ch2 Octave= 4
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$03	;Ch5 Octave= 3
	DB			$AA				;Ch2 play La 
	DB					$CA		;ch4 play La 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$34,$9			;CH4 Volume Level= 09
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$C3		;ch4 play Re 
	DB						$DA	;ch5 play La 
	DB						$4	;Beat=  4
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$18			;CH4 Instrument/Speech= 24
	DB			$22,$05				;Ch2 Octave= 5
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$02	;Ch5 Octave= 2
	DB			$A3				;Ch2 play Re 
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$34,$9			;CH4 Volume Level= 09
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB			$22,$04				;Ch2 Octave= 4
	DB					$24,$00		;Ch4 Octave= 0
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C8		;Ch4 play So 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB				$34,$7			;CH4 Volume Level= 07
	DB				$2C,$18			;CH4 Instrument/Speech= 24
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$03	;Ch5 Octave= 3
	DB	$81						;Ch0 play Do 
	DB					$CC		;Ch4 play Si 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB					$C1		;ch4 play Do 
	DB						$D5	;ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB		$91					;Ch1 play Do 
	DB					$CC		;ch4 play Si 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB					$C0		;Ch4 rest
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB		$32,$C					;CH2 Volume Level= 12
	DB		$2A,$7					;CH2 Instrument/Speech= 07
	DB			$33,$C				;CH3 Volume Level= 12
	DB			$2B,$6				;CH3 Instrument/Speech= 06
	DB			$22,$03				;Ch2 Octave= 3
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB					$CA		;ch4 play La 
	DB						$D1	;ch5 play Do 
	DB						$2	;Beat=  2
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section=  3

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$29,$81						;CH1 Instrument/Speech= 129
	DB				$34,$C			;CH4 Volume Level= 12
	DB				$2C,$6			;CH4 Instrument/Speech= 06
	DB					$35,$6		;CH5 Volume Level= 06
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$BC			;Ch3 play Si 
	DB					$C3		;Ch4 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB						$25,$01	;Ch5 Octave= 1
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB						$25,$02	;Ch5 Octave= 2
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB					$C4		;ch4 play Re#
	DB						$D8	;ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB			$A8				;Ch2 play So 
	DB						$D3	;ch5 play Re 
	DB						$4	;Beat=  4
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB					$C5		;Ch4 play Mi 
	DB						$D7	;Ch5 play Fa#
	DB						$4	;Beat=  4
	DB			$AC				;Ch2 play Si 
	DB						$D8	;ch5 play So 
	DB						$2	;Beat=  2
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$D5	;ch5 play Mi 
	DB						$4	;Beat=  4
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB						$D7	;ch5 play Fa#
	DB						$4	;Beat=  4

;Section=  4

	DB			$33,$F				;CH3 Volume Level= 15
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B1			;Ch3 play Do 
	DB					$C6		;Ch4 play Fa 
	DB						$D1	;Ch5 play Do 
	DB						$4	;Beat=  4
	DB			$33,$C				;CH3 Volume Level= 12
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$BA			;Ch3 play La 
	DB						$D5	;ch5 play Mi 
	DB						$2	;Beat=  2
	DB			$AA				;Ch2 play La 
	DB						$2	;Beat=  2
	DB			$33,$F				;CH3 Volume Level= 15
	DB			$2B,$6				;CH3 Instrument/Speech= 06
	DB		$91					;Ch1 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$C7		;ch4 play Fa#
	DB						$4	;Beat=  4
	DB			$33,$C				;CH3 Volume Level= 12
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$23,$03			;Ch3 Octave= 3
	DB			$A5				;Ch2 play Mi 
	DB				$B1			;Ch3 play Do 
	DB						$DA	;ch5 play La 
	DB						$4	;Beat=  4
	DB			$33,$F				;CH3 Volume Level= 15
	DB			$2B,$6				;CH3 Instrument/Speech= 06
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB		$91					;Ch1 play Do 
	DB						$D8	;ch5 play So 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$DA	;ch5 play La 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D8	;ch5 play So 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2

;Section=  5

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$31,$C						;CH1 Volume Level= 12
	DB	$29,$82						;CH1 Instrument/Speech= 130
	DB		$32,$F					;CH2 Volume Level= 15
	DB		$2A,$1C					;CH2 Instrument/Speech= 28
	DB			$33,$7				;CH3 Volume Level= 07
	DB			$2B,$18				;CH3 Instrument/Speech= 24
	DB				$34,$A			;CH4 Volume Level= 10
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$35,$A		;CH5 Volume Level= 10
	DB				$23,$00			;Ch3 Octave= 0
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB				$2C,$1			;CH4 Instrument/Speech= 01
	DB					$2D,$1		;CH5 Instrument/Speech= 01
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$04	;Ch5 Octave= 4
	DB					$CC		;ch4 play Si 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB		$91					;Ch1 play Do 
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$CC		;ch4 play Si 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB	$30,$C						;CH0 Volume Level= 12
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$BC			;Ch3 play Si 
	DB					$C7		;Ch4 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB				$2C,$1			;CH4 Instrument/Speech= 01
	DB					$2D,$1		;CH5 Instrument/Speech= 01
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$04		;Ch4 Octave= 4
	DB						$25,$03	;Ch5 Octave= 3
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B8			;Ch3 play So 
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB					$C5		;Ch4 play Mi 
	DB						$D1	;Ch5 play Do 
	DB						$2	;Beat=  2
	DB				$2C,$1			;CH4 Instrument/Speech= 01
	DB					$2D,$1		;CH5 Instrument/Speech= 01
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$04	;Ch5 Octave= 4
	DB			$A0				;Ch2 rest
	DB					$CC		;ch4 play Si 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB					$24,$04		;Ch4 Octave= 4
	DB						$25,$03	;Ch5 Octave= 3
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2
	DB				$2C,$1			;CH4 Instrument/Speech= 01
	DB					$2D,$1		;CH5 Instrument/Speech= 01
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$04		;Ch4 Octave= 4
	DB						$25,$03	;Ch5 Octave= 3
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB					$C3		;ch4 play Re 
	DB						$DA	;ch5 play La 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section=  6

	DB	$30,$A						;CH0 Volume Level= 10
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$BA			;Ch3 play La 
	DB					$C1		;Ch4 play Do 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB				$2C,$1			;CH4 Instrument/Speech= 01
	DB					$2D,$1		;CH5 Instrument/Speech= 01
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$04	;Ch5 Octave= 4
	DB					$CA		;ch4 play La 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB					$CA		;ch4 play La 
	DB						$D3	;ch5 play Re 
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB					$CA		;Ch4 play La 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB				$2C,$1			;CH4 Instrument/Speech= 01
	DB					$2D,$1		;CH5 Instrument/Speech= 01
	DB			$22,$04				;Ch2 Octave= 4
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$04		;Ch4 Octave= 4
	DB						$25,$03	;Ch5 Octave= 3
	DB		$91					;Ch1 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB			$22,$03				;Ch2 Octave= 3
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$BC			;Ch3 play Si 
	DB					$CC		;Ch4 play Si 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB				$34,$7			;CH4 Volume Level= 07
	DB					$35,$7		;CH5 Volume Level= 07
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$03	;Ch5 Octave= 3
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB					$C1		;Ch4 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB					$CC		;Ch4 play Si 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB				$B3			;Ch3 play Re 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section=  7

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB		$32,$7					;CH2 Volume Level= 07
	DB		$2A,$19					;CH2 Instrument/Speech= 25
	DB			$33,$8				;CH3 Volume Level= 08
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$34,$8			;CH4 Volume Level= 08
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB					$35,$8		;CH5 Volume Level= 08
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB			$A0				;Ch2 rest
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C3		;Ch4 play Re 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B8			;Ch3 play So 
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB			$A0				;Ch2 rest
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$01		;Ch4 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB				$B7			;Ch3 play Fa#
	DB						$2	;Beat=  2

;Section=  8

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB					$35,$A		;CH5 Volume Level= 10
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B1			;Ch3 play Do 
	DB					$C5		;Ch4 play Mi 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$03	;Ch5 Octave= 3
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D1	;Ch5 play Do 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$00		;Ch4 Octave= 0
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$CA		;Ch4 play La 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B5			;Ch3 play Mi 
	DB					$C1		;Ch4 play Do 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB			$A0				;Ch2 rest
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$01		;Ch4 Octave= 1
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$BC			;Ch3 play Si 
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB			$AA				;Ch2 play La 
	DB				$B7			;Ch3 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$01		;Ch4 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B1			;Ch3 play Do 
	DB					$C8		;Ch4 play So 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB				$23,$02			;Ch3 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B8			;Ch3 play So 
	DB					$C1		;Ch4 play Do 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB			$A0				;Ch2 rest
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2

;Section=  9

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$33,$7				;CH3 Volume Level= 07
	DB			$2B,$19				;CH3 Instrument/Speech= 25
	DB				$2C,$17			;CH4 Instrument/Speech= 23
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$01		;Ch4 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BA			;Ch3 play La 
	DB					$C1		;Ch4 play Do 
	DB						$DA	;Ch5 play La 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$33,$5				;CH3 Volume Level= 05
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB					$35,$6		;CH5 Volume Level= 06
	DB				$23,$03			;Ch3 Octave= 3
	DB						$25,$03	;Ch5 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB				$B7			;Ch3 play Fa#
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB			$A3				;Ch2 play Re 
	DB				$B8			;Ch3 play So 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$33,$7				;CH3 Volume Level= 07
	DB			$2B,$19				;CH3 Instrument/Speech= 25
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$BA			;Ch3 play La 
	DB					$C2		;Ch4 play Do#
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$33,$5				;CH3 Volume Level= 05
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$23,$03			;Ch3 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$33,$7				;CH3 Volume Level= 07
	DB			$2B,$19				;CH3 Instrument/Speech= 25
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BA			;Ch3 play La 
	DB					$C3		;Ch4 play Re 
	DB						$DA	;Ch5 play La 
	DB						$6	;Beat=  6
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2

;Section= 10

	DB	$28,$8C						;CH0 Instrument/Speech= 140
	DB	$31,$A						;CH1 Volume Level= 10
	DB	$29,$81						;CH1 Instrument/Speech= 129
	DB		$32,$9					;CH2 Volume Level= 09
	DB					$35,$7		;CH5 Volume Level= 07
	DB					$2D,$A		;CH5 Instrument/Speech= 10
	DB			$22,$02				;Ch2 Octave= 2
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB	$28,$8F						;CH0 Instrument/Speech= 143
	DB	$81						;Ch0 play Do 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$2	;Beat=  2
	DB	$29,$82						;CH1 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB	$29,$81						;CH1 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$C5		;Ch4 play Mi 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$29,$82						;CH1 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB				$B0			;Ch3 rest
	DB					$C7		;Ch4 play Fa#
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB					$C0		;Ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$8C						;CH0 Instrument/Speech= 140
	DB	$29,$81						;CH1 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$8F						;CH0 Instrument/Speech= 143
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$29,$82						;CH1 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2
	DB	$29,$81						;CH1 Instrument/Speech= 129
	DB		$91					;Ch1 play Do 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$29,$84						;CH1 Instrument/Speech= 132
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$2	;Beat=  2
	DB	$29,$85						;CH1 Instrument/Speech= 133
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2
	DB	$29,$84						;CH1 Instrument/Speech= 132
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2

;Section= 11

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$29,$82						;CH1 Instrument/Speech= 130
	DB		$32,$F					;CH2 Volume Level= 15
	DB		$2A,$20					;CH2 Instrument/Speech= 32
	DB			$33,$9				;CH3 Volume Level= 09
	DB			$2B,$17				;CH3 Instrument/Speech= 23
	DB				$34,$6			;CH4 Volume Level= 06
	DB				$2C,$2			;CH4 Instrument/Speech= 02
	DB					$35,$8		;CH5 Volume Level= 08
	DB					$2D,$6		;CH5 Instrument/Speech= 06
	DB			$22,$03				;Ch2 Octave= 3
	DB				$23,$00			;Ch3 Octave= 0
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB					$C3		;Ch4 play Re 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB			$22,$04				;Ch2 Octave= 4
	DB		$91					;Ch1 play Do 
	DB			$A3				;Ch2 play Re 
	DB					$C8		;ch4 play So 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$34,$7			;CH4 Volume Level= 07
	DB			$22,$03				;Ch2 Octave= 3
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BA			;Ch3 play La 
	DB					$CA		;Ch4 play La 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB			$A0				;Ch2 rest
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$22,$04				;Ch2 Octave= 4
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB					$C7		;Ch4 play Fa#
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB					$CA		;ch4 play La 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$34,$9			;CH4 Volume Level= 09
	DB			$22,$03				;Ch2 Octave= 3
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$BC			;Ch3 play Si 
	DB					$CC		;Ch4 play Si 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB					$C8		;Ch4 play So 
	DB						$2	;Beat=  2
	DB			$22,$04				;Ch2 Octave= 4
	DB		$91					;Ch1 play Do 
	DB			$A3				;Ch2 play Re 
	DB					$CC		;ch4 play Si 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$34,$C			;CH4 Volume Level= 12
	DB			$22,$03				;Ch2 Octave= 3
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$C3		;Ch4 play Re 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C8		;ch4 play So 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB						$25,$04	;Ch5 Octave= 4
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB					$CA		;Ch4 play La 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$24,$04		;Ch4 Octave= 4
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 12

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$34,$A			;CH4 Volume Level= 10
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B1			;Ch3 play Do 
	DB					$C5		;Ch4 play Mi 
	DB						$D1	;Ch5 play Do 
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB					$C1		;Ch4 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$03	;Ch5 Octave= 3
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB					$CC		;ch4 play Si 
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$34,$C			;CH4 Volume Level= 12
	DB						$25,$04	;Ch5 Octave= 4
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$AA				;Ch2 play La 
	DB				$B3			;Ch3 play Re 
	DB					$CA		;Ch4 play La 
	DB						$D1	;Ch5 play Do 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB					$C8		;ch4 play So 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB					$C7		;Ch4 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$23,$00			;Ch3 Octave= 0
	DB						$25,$03	;Ch5 Octave= 3
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B8			;Ch3 play So 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$6	;Beat=  6
	DB	$3F						;Song ended
