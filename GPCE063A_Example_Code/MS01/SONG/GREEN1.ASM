;green1_n:


;Section=  1

	DB	$9						;Tempo= 120 beat/Min
	DB		$32,$2					;CH2 Volume Level= 02
	DB		$2A,$1					;CH2 Instrument/Speech= 01
	DB			$33,$2				;CH3 Volume Level= 02
	DB			$2B,$6				;CH3 Instrument/Speech= 06
	DB				$34,$2			;CH4 Volume Level= 02
	DB				$2C,$6			;CH4 Instrument/Speech= 06
	DB					$35,$5		;CH5 Volume Level= 05
	DB					$2D,$17		;CH5 Instrument/Speech= 23
	DB			$22,$04				;Ch2 Octave= 4
	DB						$25,$00	;Ch5 Octave= 0
	DB			$AC				;Ch2 play Si 
	DB						$DC	;ch5 play Si 
	DB						$4	;Beat=  4
	DB			$22,$05				;Ch2 Octave= 5
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4
	DB				$23,$03			;Ch3 Octave= 3
	DB					$24,$03		;Ch4 Octave= 3
	DB			$A7				;Ch2 play Fa#
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;ch4 play Re 
	DB						$4	;Beat=  4
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB						$4	;Beat=  4
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4

;Section=  2

	DB		$32,$4					;CH2 Volume Level= 04
	DB			$33,$3				;CH3 Volume Level= 03
	DB				$34,$3			;CH4 Volume Level= 03
	DB			$22,$04				;Ch2 Octave= 4
	DB						$25,$01	;Ch5 Octave= 1
	DB			$AC				;Ch2 play Si 
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D5	;ch5 play Mi 
	DB						$4	;Beat=  4
	DB			$22,$05				;Ch2 Octave= 5
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB			$A9				;Ch2 play So#
	DB				$B9			;Ch3 play So#
	DB					$C5		;ch4 play Mi 
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB			$A9				;Ch2 play So#
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4

;Section=  3

	DB		$32,$3					;CH2 Volume Level= 03
	DB			$33,$2				;CH3 Volume Level= 02
	DB				$34,$2			;CH4 Volume Level= 02
	DB					$35,$4		;CH5 Volume Level= 04
	DB			$22,$04				;Ch2 Octave= 4
	DB						$25,$00	;Ch5 Octave= 0
	DB			$AC				;Ch2 play Si 
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$DC	;ch5 play Si 
	DB						$4	;Beat=  4
	DB			$22,$05				;Ch2 Octave= 5
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;ch4 play Re 
	DB						$4	;Beat=  4
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB						$4	;Beat=  4
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4

;Section=  4

	DB		$32,$2					;CH2 Volume Level= 02
	DB					$35,$3		;CH5 Volume Level= 03
	DB			$22,$04				;Ch2 Octave= 4
	DB						$25,$01	;Ch5 Octave= 1
	DB			$AC				;Ch2 play Si 
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D5	;ch5 play Mi 
	DB						$4	;Beat=  4
	DB			$22,$05				;Ch2 Octave= 5
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB			$A9				;Ch2 play So#
	DB				$B9			;Ch3 play So#
	DB					$C5		;ch4 play Mi 
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB				$34,$C			;CH4 Volume Level= 12
	DB				$2C,$D			;CH4 Instrument/Speech= 13
	DB			$A9				;Ch2 play So#
	DB					$C5		;ch4 play Mi 
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4

;Section=  5

	DB	$F						;Tempo= 180 beat/Min
	DB		$32,$D					;CH2 Volume Level= 13
	DB		$2A,$D					;CH2 Instrument/Speech= 13
	DB			$33,$4				;CH3 Volume Level= 04
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$34,$4			;CH4 Volume Level= 04
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$35,$4		;CH5 Volume Level= 04
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB			$22,$03				;Ch2 Octave= 3
	DB				$23,$02			;Ch3 Octave= 2
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB						$25,$03	;Ch5 Octave= 3
	DB						$D8	;ch5 play So 
	DB						$2	;Beat=  2
	DB				$BC			;Ch3 play Si 
	DB						$10	;Beat= 16
	DB				$34,$1			;CH4 Volume Level= 01
	DB				$2C,$7			;CH4 Instrument/Speech= 07
	DB					$24,$03		;Ch4 Octave= 3
	DB			$AA				;Ch2 play La 
	DB					$C5		;ch4 play Mi 
	DB						$c	;Beat= 12

;Section=  6

	DB	$9						;Tempo= 120 beat/Min
	DB			$33,$2				;CH3 Volume Level= 02
	DB			$2B,$7				;CH3 Instrument/Speech= 07
	DB				$34,$2			;CH4 Volume Level= 02
	DB						$25,$01	;Ch5 Octave= 1
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C5		;ch4 play Mi 
	DB						$DA	;ch5 play La 
	DB						$c	;Beat= 12
	DB			$22,$04				;Ch2 Octave= 4
	DB			$A2				;Ch2 play Do#
	DB						$4	;Beat=  4
	DB			$22,$03				;Ch2 Octave= 3
	DB			$AC				;Ch2 play Si 
	DB						$8	;Beat=  8

;Section=  7

	DB			$AA				;Ch2 play La 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;ch4 play Re 
	DB						$D3	;ch5 play Re 
	DB						$10	;Beat= 16
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section=  8

	DB			$A3				;Ch2 play Re 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$c	;Beat= 12
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section=  9

	DB		$32,$A					;CH2 Volume Level= 10
	DB					$24,$02		;Ch4 Octave= 2
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$10	;Beat= 16
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 10

	DB				$23,$02			;Ch3 Octave= 2
	DB						$25,$02	;Ch5 Octave= 2
	DB			$A5				;Ch2 play Mi 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;ch4 play So 
	DB						$D5	;ch5 play Mi 
	DB						$c	;Beat= 12
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 11

	DB		$32,$9					;CH2 Volume Level= 09
	DB			$33,$1				;CH3 Volume Level= 01
	DB				$34,$1			;CH4 Volume Level= 01
	DB					$35,$3		;CH5 Volume Level= 03
	DB					$2D,$17		;CH5 Instrument/Speech= 23
	DB				$23,$03			;Ch3 Octave= 3
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A7				;Ch2 play Fa#
	DB				$B3			;Ch3 play Re 
	DB					$CC		;ch4 play Si 
	DB						$DC	;ch5 play Si 
	DB						$10	;Beat= 16
	DB			$A3				;Ch2 play Re 
	DB						$8	;Beat=  8

;Section= 12

	DB			$22,$02				;Ch2 Octave= 2
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;ch4 play Si 
	DB						$c	;Beat= 12
	DB			$A0				;Ch2 rest
	DB						$4	;Beat=  4
	DB		$32,$A					;CH2 Volume Level= 10
	DB		$2A,$13					;CH2 Instrument/Speech= 19
	DB			$22,$03				;Ch2 Octave= 3
	DB			$A5				;Ch2 play Mi 
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$8	;Beat=  8

;Section= 13

	DB			$33,$3				;CH3 Volume Level= 03
	DB				$34,$3			;CH4 Volume Level= 03
	DB					$35,$5		;CH5 Volume Level= 05
	DB					$24,$03		;Ch4 Octave= 3
	DB			$A8				;Ch2 play So 
	DB				$B8			;Ch3 play So 
	DB					$C5		;ch4 play Mi 
	DB						$D5	;ch5 play Mi 
	DB						$10	;Beat= 16
	DB			$AA				;Ch2 play La 
	DB						$8	;Beat=  8

;Section= 14

	DB	$F						;Tempo= 180 beat/Min
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C5		;ch4 play Mi 
	DB						$DA	;ch5 play La 
	DB						$12	;Beat= 18
	DB			$22,$04				;Ch2 Octave= 4
	DB			$A2				;Ch2 play Do#
	DB						$6	;Beat=  6
	DB			$22,$03				;Ch2 Octave= 3
	DB			$AC				;Ch2 play Si 
	DB						$8	;Beat=  8
	DB		$32,$4					;CH2 Volume Level= 04
	DB			$22,$04				;Ch2 Octave= 4
	DB			$A2				;Ch2 play Do#
	DB						$2	;Beat=  2
	DB		$32,$3					;CH2 Volume Level= 03
	DB			$22,$03				;Ch2 Octave= 3
	DB			$AC				;Ch2 play Si 
	DB						$2	;Beat=  2

;Section= 15

	DB	$9						;Tempo= 120 beat/Min
	DB		$32,$A					;CH2 Volume Level= 10
	DB			$AA				;Ch2 play La 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;ch4 play Re 
	DB						$D3	;ch5 play Re 
	DB						$10	;Beat= 16
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section= 16

	DB			$A3				;Ch2 play Re 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;ch4 play Re 
	DB						$DC	;ch5 play Si 
	DB						$c	;Beat= 12
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section= 17

	DB		$32,$C					;CH2 Volume Level= 12
	DB					$35,$6		;CH5 Volume Level= 06
	DB					$24,$02		;Ch4 Octave= 2
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$c	;Beat= 12
	DB			$A7				;Ch2 play Fa#
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 18

	DB		$32,$9					;CH2 Volume Level= 09
	DB			$33,$2				;CH3 Volume Level= 02
	DB				$34,$2			;CH4 Volume Level= 02
	DB					$35,$5		;CH5 Volume Level= 05
	DB			$A4				;Ch2 play Re#
	DB				$B4			;Ch3 play Re#
	DB					$CC		;ch4 play Si 
	DB						$DC	;ch5 play Si 
	DB						$c	;Beat= 12
	DB			$A2				;Ch2 play Do#
	DB						$4	;Beat=  4
	DB			$A4				;Ch2 play Re#
	DB						$8	;Beat=  8

;Section= 19

	DB		$32,$8					;CH2 Volume Level= 08
	DB			$33,$1				;CH3 Volume Level= 01
	DB				$34,$1			;CH4 Volume Level= 01
	DB					$35,$4		;CH5 Volume Level= 04
	DB			$A5				;Ch2 play Mi 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$18	;Beat= 24

;Section= 20

	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$10	;Beat= 16
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$8	;Beat=  8

;Section= 21

	DB	$F						;Tempo= 180 beat/Min
	DB		$32,$4					;CH2 Volume Level= 04
	DB		$2A,$0					;CH2 Instrument/Speech= 00
	DB			$33,$3				;CH3 Volume Level= 03
	DB				$34,$3			;CH4 Volume Level= 03
	DB					$35,$5		;CH5 Volume Level= 05
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;ch4 play Si 
	DB						$D8	;ch5 play So 
	DB						$2	;Beat=  2
	DB		$32,$D					;CH2 Volume Level= 13
	DB			$22,$04				;Ch2 Octave= 4
	DB			$A3				;Ch2 play Re 
	DB						$16	;Beat= 22
	DB			$A3				;Ch2 play Re 
	DB						$c	;Beat= 12

;Section= 22

	DB	$9						;Tempo= 120 beat/Min
	DB			$A3				;Ch2 play Re 
	DB						$c	;Beat= 12
	DB			$A2				;Ch2 play Do#
	DB						$4	;Beat=  4
	DB			$22,$03				;Ch2 Octave= 3
	DB			$AC				;Ch2 play Si 
	DB						$8	;Beat=  8

;Section= 23

	DB		$32,$9					;CH2 Volume Level= 09
	DB			$33,$2				;CH3 Volume Level= 02
	DB				$34,$2			;CH4 Volume Level= 02
	DB					$35,$3		;CH5 Volume Level= 03
	DB						$25,$02	;Ch5 Octave= 2
	DB			$AA				;Ch2 play La 
	DB				$B3			;Ch3 play Re 
	DB					$CA		;ch4 play La 
	DB						$D3	;ch5 play Re 
	DB						$10	;Beat= 16
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section= 24

	DB			$A3				;Ch2 play Re 
	DB						$c	;Beat= 12
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section= 25

	DB		$32,$C					;CH2 Volume Level= 12
	DB			$33,$3				;CH3 Volume Level= 03
	DB				$34,$3			;CH4 Volume Level= 03
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$10	;Beat= 16
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 26

	DB			$A5				;Ch2 play Mi 
	DB						$c	;Beat= 12
	DB			$A3				;Ch2 play Re 
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 27

	DB		$32,$8					;CH2 Volume Level= 08
	DB			$33,$2				;CH3 Volume Level= 02
	DB				$34,$2			;CH4 Volume Level= 02
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A7				;Ch2 play Fa#
	DB				$B3			;Ch3 play Re 
	DB					$CC		;ch4 play Si 
	DB						$DC	;ch5 play Si 
	DB						$10	;Beat= 16
	DB			$A3				;Ch2 play Re 
	DB						$8	;Beat=  8

;Section= 28

	DB			$22,$02				;Ch2 Octave= 2
	DB			$AC				;Ch2 play Si 
	DB						$14	;Beat= 20
	DB			$A0				;Ch2 rest
	DB						$4	;Beat=  4

;Section= 29

	DB	$F						;Tempo= 180 beat/Min
	DB		$32,$4					;CH2 Volume Level= 04
	DB			$33,$3				;CH3 Volume Level= 03
	DB				$34,$3			;CH4 Volume Level= 03
	DB					$35,$5		;CH5 Volume Level= 05
	DB			$22,$03				;Ch2 Octave= 3
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;ch4 play Si 
	DB						$D8	;ch5 play So 
	DB						$2	;Beat=  2
	DB		$32,$C					;CH2 Volume Level= 12
	DB			$22,$04				;Ch2 Octave= 4
	DB			$A3				;Ch2 play Re 
	DB						$16	;Beat= 22
	DB			$A3				;Ch2 play Re 
	DB						$c	;Beat= 12

;Section= 30

	DB			$A3				;Ch2 play Re 
	DB						$12	;Beat= 18
	DB			$A2				;Ch2 play Do#
	DB						$6	;Beat=  6
	DB			$22,$03				;Ch2 Octave= 3
	DB			$AC				;Ch2 play Si 
	DB						$8	;Beat=  8
	DB		$32,$6					;CH2 Volume Level= 06
	DB			$22,$04				;Ch2 Octave= 4
	DB			$A2				;Ch2 play Do#
	DB						$2	;Beat=  2
	DB		$32,$4					;CH2 Volume Level= 04
	DB			$22,$03				;Ch2 Octave= 3
	DB			$AC				;Ch2 play Si 
	DB						$2	;Beat=  2

;Section= 31

	DB	$9						;Tempo= 120 beat/Min
	DB		$32,$9					;CH2 Volume Level= 09
	DB			$33,$2				;CH3 Volume Level= 02
	DB				$34,$2			;CH4 Volume Level= 02
	DB					$35,$3		;CH5 Volume Level= 03
	DB						$25,$02	;Ch5 Octave= 2
	DB			$AA				;Ch2 play La 
	DB				$B3			;Ch3 play Re 
	DB					$CA		;ch4 play La 
	DB						$D3	;ch5 play Re 
	DB						$10	;Beat= 16
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section= 32

	DB			$A3				;Ch2 play Re 
	DB						$c	;Beat= 12
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB						$8	;Beat=  8

;Section= 33

	DB		$32,$C					;CH2 Volume Level= 12
	DB			$33,$3				;CH3 Volume Level= 03
	DB				$34,$3			;CH4 Volume Level= 03
	DB					$35,$5		;CH5 Volume Level= 05
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$c	;Beat= 12
	DB			$A7				;Ch2 play Fa#
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 34

	DB		$32,$9					;CH2 Volume Level= 09
	DB			$33,$2				;CH3 Volume Level= 02
	DB				$34,$2			;CH4 Volume Level= 02
	DB					$35,$4		;CH5 Volume Level= 04
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A4				;Ch2 play Re#
	DB				$B4			;Ch3 play Re#
	DB					$CC		;ch4 play Si 
	DB						$DC	;ch5 play Si 
	DB						$c	;Beat= 12
	DB			$A2				;Ch2 play Do#
	DB						$4	;Beat=  4
	DB			$A4				;Ch2 play Re#
	DB						$8	;Beat=  8

;Section= 35

	DB	$9						;Tempo= 120 beat/Min
	DB		$32,$8					;CH2 Volume Level= 08
	DB			$33,$1				;CH3 Volume Level= 01
	DB				$34,$1			;CH4 Volume Level= 01
	DB					$35,$3		;CH5 Volume Level= 03
	DB					$2D,$19		;CH5 Instrument/Speech= 25
	DB				$23,$02			;Ch3 Octave= 2
	DB			$A5				;Ch2 play Mi 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;ch4 play So 
	DB						$D5	;ch5 play Mi 
	DB						$18	;Beat= 24

;Section= 36

	DB	$30,$A						;CH0 Volume Level= 10
	DB	$28,$8C						;CH0 Instrument/Speech= 140
	DB	$20,$02						;Ch0 Octave= 2
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$8D						;CH0 Instrument/Speech= 141
	DB	$81						;Ch0 play Do 
	DB						$8	;Beat=  8
	DB	$28,$8E						;CH0 Instrument/Speech= 142
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$8F						;CH0 Instrument/Speech= 143
	DB			$33,$A				;CH3 Volume Level= 10
	DB			$2B,$1D				;CH3 Instrument/Speech= 29
	DB				$34,$4			;CH4 Volume Level= 04
	DB				$2C,$6			;CH4 Instrument/Speech= 06
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4

;Section= 37

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB		$32,$5					;CH2 Volume Level= 05
	DB		$2A,$1F					;CH2 Instrument/Speech= 31
	DB			$33,$9				;CH3 Volume Level= 09
	DB				$34,$7			;CH4 Volume Level= 07
	DB					$35,$6		;CH5 Volume Level= 06
	DB					$2D,$18		;CH5 Instrument/Speech= 24
	DB			$22,$02				;Ch2 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB				$BA			;Ch3 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 38

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$DA	;Ch5 play La 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB				$23,$03			;Ch3 Octave= 3
	DB	$81						;Ch0 play Do 
	DB				$B2			;Ch3 play Do#
	DB					$CA		;Ch4 play La 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 39

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BA			;Ch3 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D7	;Ch5 play Fa#
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 40

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$02				;Ch2 Octave= 2
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 41

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 42

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$02				;Ch2 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 43

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$33,$7				;CH3 Volume Level= 07
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D7	;Ch5 play Fa#
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 44

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$03				;Ch2 Octave= 3
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BC			;Ch3 play Si 
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB			$33,$F				;CH3 Volume Level= 15
	DB			$2B,$6				;CH3 Instrument/Speech= 06
	DB				$23,$03			;Ch3 Octave= 3
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2

;Section= 45

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$02				;Ch2 Octave= 2
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB				$BA			;Ch3 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 46

	DB	$F						;Tempo= 180 beat/Min
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$DA	;Ch5 play La 
	DB						$6	;Beat=  6
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$6	;Beat=  6
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB				$23,$04			;Ch3 Octave= 4
	DB	$81						;Ch0 play Do 
	DB				$B2			;Ch3 play Do#
	DB					$CA		;Ch4 play La 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB				$23,$03			;Ch3 Octave= 3
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB			$33,$6				;CH3 Volume Level= 06
	DB				$23,$04			;Ch3 Octave= 4
	DB				$B2			;Ch3 play Do#
	DB						$2	;Beat=  2
	DB			$33,$4				;CH3 Volume Level= 04
	DB				$23,$03			;Ch3 Octave= 3
	DB				$BC			;Ch3 play Si 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 47

	DB	$9						;Tempo= 120 beat/Min
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$33,$C				;CH3 Volume Level= 12
	DB					$35,$9		;CH5 Volume Level= 09
	DB					$2D,$19		;CH5 Instrument/Speech= 25
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BA			;Ch3 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB						$D7	;Ch5 play Fa#
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 48

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$02				;Ch2 Octave= 2
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 49

	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A1				;Ch2 play Do 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D2	;Ch5 play Do#
	DB						$4	;Beat=  4

;Section= 50

	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$B4			;Ch3 play Re#
	DB					$CC		;Ch4 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB				$B2			;Ch3 play Do#
	DB						$D7	;Ch5 play Fa#
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB				$B4			;Ch3 play Re#
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D4	;Ch5 play Re#
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 51

	DB	$28,$88						;CH0 Instrument/Speech= 136
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$6	;Beat=  6
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$81						;Ch0 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2

;Section= 52

	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB	$28,$8D						;CH0 Instrument/Speech= 141
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$8F						;CH0 Instrument/Speech= 143
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2

;Section= 53

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB		$32,$4					;CH2 Volume Level= 04
	DB		$2A,$7					;CH2 Instrument/Speech= 07
	DB			$33,$9				;CH3 Volume Level= 09
	DB			$2B,$19				;CH3 Instrument/Speech= 25
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$7			;CH4 Instrument/Speech= 07
	DB					$35,$A		;CH5 Volume Level= 10
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B3			;Ch3 play Re 
	DB					$C8		;Ch4 play So 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$31,$A						;CH1 Volume Level= 10
	DB	$29,$84						;CH1 Instrument/Speech= 132
	DB		$21,$02					;Ch1 Octave= 2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB				$B0			;Ch3 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 54

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B2			;Ch3 play Do#
	DB					$CA		;Ch4 play La 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB				$B0			;Ch3 rest
	DB						$2	;Beat=  2

;Section= 55

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB					$35,$9		;CH5 Volume Level= 09
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BA			;Ch3 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB			$22,$02				;Ch2 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 56

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AB				;Ch2 play La#
	DB				$B5			;Ch3 play Mi 
	DB					$C2		;Ch4 play Do#
	DB						$D2	;Ch5 play Do#
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB				$B0			;Ch3 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 57

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$03				;Ch2 Octave= 3
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B8			;Ch3 play So 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB			$22,$02				;Ch2 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B5			;Ch3 play Mi 
	DB					$C8		;Ch4 play So 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 58

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 59

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB					$35,$3		;CH5 Volume Level= 03
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$D7	;Ch5 play Fa#
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 60

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$03		;Ch4 Octave= 3
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$BC			;Ch3 play Si 
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$2	;Beat=  2
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2

;Section= 61

	DB	$9						;Tempo= 120 beat/Min
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$33,$C				;CH3 Volume Level= 12
	DB			$2B,$1A				;CH3 Instrument/Speech= 26
	DB					$35,$9		;CH5 Volume Level= 09
	DB				$23,$03			;Ch3 Octave= 3
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB						$2	;Beat=  2
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB				$B0			;Ch3 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 62

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;Ch4 play Si 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB			$22,$02				;Ch2 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A2				;Ch2 play Do#
	DB				$B2			;Ch3 play Do#
	DB					$CA		;Ch4 play La 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$2	;Beat=  2

;Section= 63

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB			$22,$03				;Ch2 Octave= 3
	DB					$24,$03		;Ch4 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$BA			;Ch3 play La 
	DB					$C7		;Ch4 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB			$22,$02				;Ch2 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB	$81						;Ch0 play Do 
	DB		$91					;Ch1 play Do 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB		$91					;Ch1 play Do 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 64

	DB	$28,$80						;CH0 Instrument/Speech= 128
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$B3			;Ch3 play Re 
	DB					$C7		;Ch4 play Fa#
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB	$28,$82						;CH0 Instrument/Speech= 130
	DB	$81						;Ch0 play Do 
	DB						$4	;Beat=  4
	DB	$28,$8A						;CH0 Instrument/Speech= 138
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$81						;CH0 Instrument/Speech= 129
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$B5			;Ch3 play Mi 
	DB					$C2		;Ch4 play Do#
	DB						$D2	;Ch5 play Do#
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$8C						;CH0 Instrument/Speech= 140
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB	$28,$8D						;CH0 Instrument/Speech= 141
	DB	$81						;Ch0 play Do 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2

;Section= 65

	DB		$32,$7					;CH2 Volume Level= 07
	DB		$2A,$1A					;CH2 Instrument/Speech= 26
	DB			$33,$5				;CH3 Volume Level= 05
	DB			$2B,$7				;CH3 Instrument/Speech= 07
	DB					$35,$6		;CH5 Volume Level= 06
	DB				$23,$03			;Ch3 Octave= 3
	DB					$24,$02		;Ch4 Octave= 2
	DB						$25,$02	;Ch5 Octave= 2
	DB			$A8				;Ch2 play So 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$c	;Beat= 12
	DB			$A7				;Ch2 play Fa#
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 66

	DB			$33,$4				;CH3 Volume Level= 04
	DB				$34,$4			;CH4 Volume Level= 04
	DB					$35,$5		;CH5 Volume Level= 05
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A4				;Ch2 play Re#
	DB				$B4			;Ch3 play Re#
	DB					$CC		;ch4 play Si 
	DB						$DC	;ch5 play Si 
	DB						$c	;Beat= 12
	DB			$A2				;Ch2 play Do#
	DB						$4	;Beat=  4
	DB			$A4				;Ch2 play Re#
	DB						$8	;Beat=  8

;Section= 67

	DB		$32,$5					;CH2 Volume Level= 05
	DB		$2A,$19					;CH2 Instrument/Speech= 25
	DB			$33,$1				;CH3 Volume Level= 01
	DB				$34,$2			;CH4 Volume Level= 02
	DB					$35,$3		;CH5 Volume Level= 03
	DB				$23,$02			;Ch3 Octave= 2
	DB			$A5				;Ch2 play Mi 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;ch4 play So 
	DB						$D5	;ch5 play Mi 
	DB						$18	;Beat= 24

;Section= 68

	DB	$7						;Tempo= 100 beat/Min
	DB				$34,$1			;CH4 Volume Level= 01
	DB					$35,$2		;CH5 Volume Level= 02
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$01		;Ch4 Octave= 1
	DB				$BC			;Ch3 play Si 
	DB					$C8		;ch4 play So 
	DB						$D5	;ch5 play Mi 
	DB						$10	;Beat= 16
	DB		$32,$A					;CH2 Volume Level= 10
	DB		$2A,$C					;CH2 Instrument/Speech= 12
	DB			$22,$03				;Ch2 Octave= 3
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 69

	DB	$A						;Tempo= 130 beat/Min
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB		$32,$C					;CH2 Volume Level= 12
	DB			$33,$7				;CH3 Volume Level= 07
	DB			$2B,$D				;CH3 Instrument/Speech= 13
	DB				$34,$7			;CH4 Volume Level= 07
	DB				$2C,$D			;CH4 Instrument/Speech= 13
	DB					$35,$6		;CH5 Volume Level= 06
	DB					$2D,$12		;CH5 Instrument/Speech= 18
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C5		;ch4 play Mi 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$C5		;ch4 play Mi 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB				$BC			;Ch3 play Si 
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C8		;ch4 play So 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 70

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB					$C0		;Ch4 rest
	DB						$DA	;Ch5 play La 
	DB						$4	;Beat=  4
	DB					$C5		;ch4 play Mi 
	DB						$2	;Beat=  2
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB			$22,$04				;Ch2 Octave= 4
	DB	$81						;Ch0 play Do 
	DB			$A2				;Ch2 play Do#
	DB				$B8			;Ch3 play So 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB					$C5		;ch4 play Mi 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB			$22,$03				;Ch2 Octave= 3
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB				$BC			;Ch3 play Si 
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C8		;ch4 play So 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 71

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB					$C0		;Ch4 rest
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB				$B7			;Ch3 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CA		;ch4 play La 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$BA			;Ch3 play La 
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB				$23,$02			;Ch3 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C7		;ch4 play Fa#
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 72

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB					$C0		;Ch4 rest
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C7		;ch4 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B3			;Ch3 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$B7			;Ch3 play Fa#
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB					$CC		;Ch4 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B3			;Ch3 play Re 
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 73

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B0			;Ch3 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B8			;Ch3 play So 
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B5			;Ch3 play Mi 
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 74

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B0			;Ch3 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B8			;Ch3 play So 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B5			;Ch3 play Mi 
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 75

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$B0			;Ch3 rest
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C7		;ch4 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B7			;Ch3 play Fa#
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB				$B0			;Ch3 rest
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 76

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB			$22,$02				;Ch2 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB					$C0		;Ch4 rest
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C7		;ch4 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB				$B3			;Ch3 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB		$32,$A					;CH2 Volume Level= 10
	DB		$2A,$B					;CH2 Instrument/Speech= 11
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$CC		;Ch4 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 77

	DB	$29,$93						;CH1 Instrument/Speech= 147
	DB		$32,$C					;CH2 Volume Level= 12
	DB			$33,$6				;CH3 Volume Level= 06
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$34,$6			;CH4 Volume Level= 06
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C5		;ch4 play Mi 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$29,$92						;CH1 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$29,$93						;CH1 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$C5		;ch4 play Mi 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$29,$92						;CH1 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 78

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB						$DA	;Ch5 play La 
	DB						$4	;Beat=  4
	DB					$C5		;ch4 play Mi 
	DB						$2	;Beat=  2
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB			$22,$04				;Ch2 Octave= 4
	DB	$81						;Ch0 play Do 
	DB			$A2				;Ch2 play Do#
	DB				$B8			;Ch3 play So 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB					$C5		;ch4 play Mi 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$DA	;Ch5 play La 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 79

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB				$B7			;Ch3 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CA		;ch4 play La 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CA		;ch4 play La 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 80

	DB	$29,$93						;CH1 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$29,$92						;CH1 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$29,$93						;CH1 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B7			;Ch3 play Fa#
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$29,$92						;CH1 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 81

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB						$D1	;Ch5 play Do 
	DB						$4	;Beat=  4
	DB					$C1		;ch4 play Do 
	DB						$2	;Beat=  2
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$B5			;Ch3 play Mi 
	DB						$D1	;Ch5 play Do 
	DB						$2	;Beat=  2
	DB					$C1		;ch4 play Do 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B1			;Ch3 play Do 
	DB					$C5		;Ch4 play Mi 
	DB						$D1	;Ch5 play Do 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 82

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A4				;Ch2 play Re#
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B4			;Ch3 play Re#
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C7		;ch4 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A2				;Ch2 play Do#
	DB				$B4			;Ch3 play Re#
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A4				;Ch2 play Re#
	DB						$2	;Beat=  2
	DB					$C7		;ch4 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB				$23,$01			;Ch3 Octave= 1
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C4		;Ch4 play Re#
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$2	;Beat=  2

;Section= 83

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$C5		;ch4 play Mi 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$C5		;ch4 play Mi 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 84

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$C5		;ch4 play Mi 
	DB						$2	;Beat=  2
	DB				$B8			;Ch3 play So 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$C5		;ch4 play Mi 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$C5		;Ch4 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2

;Section= 85

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB		$32,$A					;CH2 Volume Level= 10
	DB		$2A,$6					;CH2 Instrument/Speech= 06
	DB					$35,$7		;CH5 Volume Level= 07
	DB					$2D,$18		;CH5 Instrument/Speech= 24
	DB			$22,$05				;Ch2 Octave= 5
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$BC			;Ch3 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB			$A0				;Ch2 rest
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 86

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$BC			;Ch3 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A2				;Ch2 play Do#
	DB				$BC			;Ch3 play Si 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB			$22,$04				;Ch2 Octave= 4
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$2	;Beat=  2

;Section= 87

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB				$B7			;Ch3 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CA		;ch4 play La 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CA		;ch4 play La 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 88

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$00	;Ch5 Octave= 0
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B7			;Ch3 play Fa#
	DB						$D2	;Ch5 play Do#
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 89

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A8				;Ch2 play So 
	DB				$B0			;Ch3 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B8			;Ch3 play So 
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B5			;Ch3 play Mi 
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 90

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B0			;Ch3 rest
	DB						$D5	;Ch5 play Mi 
	DB						$4	;Beat=  4
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B5			;Ch3 play Mi 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B8			;Ch3 play So 
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB					$CC		;Ch4 play Si 
	DB						$D5	;Ch5 play Mi 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B5			;Ch3 play Mi 
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 91

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$01	;Ch5 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB				$B0			;Ch3 rest
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C7		;ch4 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B3			;Ch3 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB				$B7			;Ch3 play Fa#
	DB						$D0	;Ch5 rest
	DB						$4	;Beat=  4
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB				$B0			;Ch3 rest
	DB					$C3		;ch4 play Re 
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 92

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB			$22,$03				;Ch2 Octave= 3
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB					$C0		;Ch4 rest
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C7		;ch4 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A0				;Ch2 rest
	DB				$B3			;Ch3 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB				$B0			;Ch3 rest
	DB					$C0		;Ch4 rest
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB				$B5			;Ch3 play Mi 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB				$23,$01			;Ch3 Octave= 1
	DB	$81						;Ch0 play Do 
	DB				$B8			;Ch3 play So 
	DB					$CC		;Ch4 play Si 
	DB						$DC	;Ch5 play Si 
	DB						$2	;Beat=  2
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 93

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB			$2B,$D				;CH3 Instrument/Speech= 13
	DB				$2C,$D			;CH4 Instrument/Speech= 13
	DB			$22,$05				;Ch2 Octave= 5
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$BC			;Ch3 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB			$A0				;Ch2 rest
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 94

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$D8	;Ch5 play So 
	DB						$4	;Beat=  4
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$BC			;Ch3 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$03		;Ch4 Octave= 3
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A2				;Ch2 play Do#
	DB				$BC			;Ch3 play Si 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB			$22,$04				;Ch2 Octave= 4
	DB	$81						;Ch0 play Do 
	DB			$AC				;Ch2 play Si 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB				$BC			;Ch3 play Si 
	DB					$C8		;Ch4 play So 
	DB						$D8	;Ch5 play So 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$2	;Beat=  2

;Section= 95

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB					$2D,$19		;CH5 Instrument/Speech= 25
	DB	$81						;Ch0 play Do 
	DB			$AA				;Ch2 play La 
	DB						$D3	;Ch5 play Re 
	DB						$4	;Beat=  4
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB				$B7			;Ch3 play Fa#
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$CA		;ch4 play La 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CA		;ch4 play La 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 96

	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB	$81						;Ch0 play Do 
	DB			$A3				;Ch2 play Re 
	DB						$DC	;Ch5 play Si 
	DB						$4	;Beat=  4
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$B3			;Ch3 play Re 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB	$81						;Ch0 play Do 
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$93						;CH0 Instrument/Speech= 147
	DB						$25,$02	;Ch5 Octave= 2
	DB	$81						;Ch0 play Do 
	DB			$A5				;Ch2 play Mi 
	DB				$B7			;Ch3 play Fa#
	DB						$D2	;Ch5 play Do#
	DB						$2	;Beat=  2
	DB					$C3		;ch4 play Re 
	DB						$2	;Beat=  2
	DB	$81						;Ch0 play Do 
	DB			$A7				;Ch2 play Fa#
	DB						$D0	;Ch5 rest
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB	$28,$92						;CH0 Instrument/Speech= 146
	DB					$24,$02		;Ch4 Octave= 2
	DB	$81						;Ch0 play Do 
	DB				$B7			;Ch3 play Fa#
	DB					$C3		;Ch4 play Re 
	DB						$D3	;Ch5 play Re 
	DB						$2	;Beat=  2
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2

;Section= 97

	DB	$F						;Tempo= 180 beat/Min
	DB		$32,$8					;CH2 Volume Level= 08
	DB			$33,$5				;CH3 Volume Level= 05
	DB			$2B,$0				;CH3 Instrument/Speech= 00
	DB				$34,$5			;CH4 Volume Level= 05
	DB				$2C,$0			;CH4 Instrument/Speech= 00
	DB					$35,$5		;CH5 Volume Level= 05
	DB					$2D,$0		;CH5 Instrument/Speech= 00
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A8				;Ch2 play So 
	DB						$D1	;ch5 play Do 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$B1			;Ch3 play Do 
	DB						$2	;Beat=  2
	DB						$25,$02	;Ch5 Octave= 2
	DB						$D5	;ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB				$B1			;Ch3 play Do 
	DB						$8	;Beat=  8
	DB			$A7				;Ch2 play Fa#
	DB						$6	;Beat=  6
	DB			$A5				;Ch2 play Mi 
	DB						$c	;Beat= 12

;Section= 98

	DB		$32,$7					;CH2 Volume Level= 07
	DB			$33,$4				;CH3 Volume Level= 04
	DB				$34,$4			;CH4 Volume Level= 04
	DB					$35,$4		;CH5 Volume Level= 04
	DB						$25,$00	;Ch5 Octave= 0
	DB			$A4				;Ch2 play Re#
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$B4			;Ch3 play Re#
	DB						$2	;Beat=  2
	DB						$25,$02	;Ch5 Octave= 2
	DB						$D7	;ch5 play Fa#
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$CC		;ch4 play Si 
	DB						$2	;Beat=  2
	DB				$23,$03			;Ch3 Octave= 3
	DB				$B4			;Ch3 play Re#
	DB						$8	;Beat=  8
	DB			$A2				;Ch2 play Do#
	DB						$6	;Beat=  6
	DB			$A4				;Ch2 play Re#
	DB						$c	;Beat= 12

;Section= 99

	DB		$32,$6					;CH2 Volume Level= 06
	DB			$33,$3				;CH3 Volume Level= 03
	DB				$34,$3			;CH4 Volume Level= 03
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A5				;Ch2 play Mi 
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D5	;ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$01		;Ch4 Octave= 1
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$23,$01			;Ch3 Octave= 1
	DB				$BC			;Ch3 play Si 
	DB						$2	;Beat=  2
	DB						$25,$02	;Ch5 Octave= 2
	DB						$D5	;ch5 play Mi 
	DB						$2	;Beat=  2
	DB					$24,$02		;Ch4 Octave= 2
	DB					$C8		;ch4 play So 
	DB						$2	;Beat=  2
	DB				$23,$02			;Ch3 Octave= 2
	DB				$BC			;Ch3 play Si 
	DB						$2	;Beat=  2
	DB						$25,$03	;Ch5 Octave= 3
	DB						$D5	;ch5 play Mi 
	DB						$18	;Beat= 24

;Section= 100

	DB	$8						;Tempo= 110 beat/Min
	DB		$32,$3					;CH2 Volume Level= 03
	DB			$A5				;Ch2 play Mi 
	DB						$16	;Beat= 22
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2

;Section= 101

	DB	$8						;Tempo= 110 beat/Min
	DB		$32,$4					;CH2 Volume Level= 04
	DB		$2A,$1F					;CH2 Instrument/Speech= 31
	DB			$33,$2				;CH3 Volume Level= 02
	DB			$2B,$6				;CH3 Instrument/Speech= 06
	DB				$34,$2			;CH4 Volume Level= 02
	DB				$2C,$6			;CH4 Instrument/Speech= 06
	DB					$35,$3		;CH5 Volume Level= 03
	DB					$2D,$17		;CH5 Instrument/Speech= 23
	DB			$22,$05				;Ch2 Octave= 5
	DB				$23,$03			;Ch3 Octave= 3
	DB						$25,$00	;Ch5 Octave= 0
	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;ch4 play Si 
	DB						$D8	;ch5 play So 
	DB						$c	;Beat= 12
	DB						$DC	;ch5 play Si 
	DB						$2	;Beat=  2
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A3				;Ch2 play Re 
	DB						$D3	;ch5 play Re 
	DB						$6	;Beat=  6
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2

;Section= 102

	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$CC		;ch4 play Si 
	DB						$D8	;ch5 play So 
	DB						$c	;Beat= 12
	DB			$A2				;Ch2 play Do#
	DB						$4	;Beat=  4
	DB			$22,$04				;Ch2 Octave= 4
	DB			$AC				;Ch2 play Si 
	DB						$D3	;ch5 play Re 
	DB						$6	;Beat=  6
	DB			$A0				;Ch2 rest
	DB						$2	;Beat=  2

;Section= 103

	DB					$35,$2		;CH5 Volume Level= 02
	DB			$AA				;Ch2 play La 
	DB				$B3			;Ch3 play Re 
	DB					$CA		;ch4 play La 
	DB						$D3	;ch5 play Re 
	DB						$c	;Beat= 12
	DB						$D7	;ch5 play Fa#
	DB						$4	;Beat=  4
	DB			$A7				;Ch2 play Fa#
	DB						$DA	;ch5 play La 
	DB						$8	;Beat=  8

;Section= 104

	DB						$25,$02	;Ch5 Octave= 2
	DB			$A3				;Ch2 play Re 
	DB				$B3			;Ch3 play Re 
	DB					$CA		;ch4 play La 
	DB						$D3	;ch5 play Re 
	DB						$c	;Beat= 12
	DB			$A5				;Ch2 play Mi 
	DB						$4	;Beat=  4
	DB						$25,$01	;Ch5 Octave= 1
	DB			$A7				;Ch2 play Fa#
	DB						$DA	;ch5 play La 
	DB						$8	;Beat=  8

;Section= 105

	DB	$7						;Tempo= 100 beat/Min
	DB			$33,$1				;CH3 Volume Level= 01
	DB				$34,$1			;CH4 Volume Level= 01
	DB				$23,$02			;Ch3 Octave= 2
	DB			$A8				;Ch2 play So 
	DB				$B8			;Ch3 play So 
	DB					$C5		;ch4 play Mi 
	DB						$D5	;ch5 play Mi 
	DB						$c	;Beat= 12
	DB			$A7				;Ch2 play Fa#
	DB						$4	;Beat=  4
	DB			$A5				;Ch2 play Mi 
	DB						$8	;Beat=  8

;Section= 106

	DB	$6						;Tempo=  90 beat/Min
	DB			$A4				;Ch2 play Re#
	DB				$B7			;Ch3 play Fa#
	DB					$C4		;ch4 play Re#
	DB						$DC	;ch5 play Si 
	DB						$c	;Beat= 12
	DB			$A2				;Ch2 play Do#
	DB						$4	;Beat=  4
	DB			$A4				;Ch2 play Re#
	DB						$8	;Beat=  8

;Section= 107

	DB					$24,$01		;Ch4 Octave= 1
	DB			$A5				;Ch2 play Mi 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$18	;Beat= 24

;Section= 108

	DB		$32,$2					;CH2 Volume Level= 02
	DB		$2A,$7					;CH2 Instrument/Speech= 07
	DB			$A5				;Ch2 play Mi 
	DB				$B5			;Ch3 play Mi 
	DB					$CC		;ch4 play Si 
	DB						$D5	;ch5 play Mi 
	DB						$16	;Beat= 22
	DB			$A0				;Ch2 rest
	DB				$B0			;Ch3 rest
	DB					$C0		;ch4 rest
	DB						$D0	;ch5 rest
	DB						$2	;Beat=  2
	DB	$3F						;Song ended
