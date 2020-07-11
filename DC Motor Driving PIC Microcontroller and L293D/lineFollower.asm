
_main:

;lineFollower.c,1 :: 		void main() {
;lineFollower.c,2 :: 		TRISC=0B00000000;
	CLRF       TRISC+0
;lineFollower.c,3 :: 		TRISD=0B11111111;
	MOVLW      255
	MOVWF      TRISD+0
;lineFollower.c,4 :: 		for(;;)
L_main0:
;lineFollower.c,6 :: 		if(portd.f0==1&&portd.f1==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main5
	BTFSS      PORTD+0, 1
	GOTO       L_main5
L__main18:
;lineFollower.c,7 :: 		{ portc=0B00000011;}
	MOVLW      3
	MOVWF      PORTC+0
L_main5:
;lineFollower.c,8 :: 		if(portd.f0==1&&portd.f1==0)
	BTFSS      PORTD+0, 0
	GOTO       L_main8
	BTFSC      PORTD+0, 1
	GOTO       L_main8
L__main17:
;lineFollower.c,9 :: 		{ portc=0B00000010;}
	MOVLW      2
	MOVWF      PORTC+0
L_main8:
;lineFollower.c,10 :: 		if(portd.f0==0&&portd.f1==1)
	BTFSC      PORTD+0, 0
	GOTO       L_main11
	BTFSS      PORTD+0, 1
	GOTO       L_main11
L__main16:
;lineFollower.c,11 :: 		{ portc=0B00000001;}
	MOVLW      1
	MOVWF      PORTC+0
L_main11:
;lineFollower.c,12 :: 		if(portd.f0==0&&portd.f1==0)
	BTFSC      PORTD+0, 0
	GOTO       L_main14
	BTFSC      PORTD+0, 1
	GOTO       L_main14
L__main15:
;lineFollower.c,13 :: 		{ portc=0B00000000;}
	CLRF       PORTC+0
L_main14:
;lineFollower.c,14 :: 		}
	GOTO       L_main0
;lineFollower.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
