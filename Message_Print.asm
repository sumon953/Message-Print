.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 'SUMON SARDER $' 
MSG2 DB 'sumon sarder $' 

.CODE

MAIN PROC
    
    MOV AX,@DATA                       
    MOV DS,AX      ;INITIALIZATION OF DATA SEGMENT
    
    
                                  
    LEA DX,MSG1    ;LOAD EFFECTIVE ADDRESS   
    MOV AH,9
    INT 21H 
    
     
     MOV AH,2
     MOV DL,0AH
     INT 21H        ;NEWLINE
     MOV DL,0DH
     INT 21H
     


      LEA DX,MSG2    ;LOAD EFFECTIVE ADDRESS   
      MOV AH,9
      INT 21H  
      
      
       EXIT:
       
       MOV AH,4CH
       INT 21H
       MAIN ENDP
END MAIN