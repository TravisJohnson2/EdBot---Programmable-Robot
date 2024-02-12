;------------------------------------------------
;
;
;
;------------------------------------------------
    list    p=18F1220
    radix   hex
    config WDT=OFF,LVP=OFF,OSC=INTIO2
    
#include p18F1220.inc
    
    org	    0x000
    
    CLRF    PORTA
    CLRF    PORTB
    MOVLW   0x7F
    MOVWF   ADCON1
    MOVLW   0x05
    MOVWF   TRISA
    MOVLW   0xC7
    MOVWF   TRISB
    MOVLW   0x00
    
Init:
    BSF	    PORTB,3
    BCF	    PORTB,4
    BCF	    PORTA,6
    BSF	    PORTA,7

    
Loop:
    BRA	    Loop

end