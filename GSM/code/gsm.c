#include<pic.h>
#define _XTAL_FREQ 20000000
__CONFIG(0X3F3A);


void main()
{
	char a1[]="AT+CMGF=1\r";
	char a2[]="AT+CMGS=\"9488946638\"\r";
	char a3[]="HELLO WORLD";
	char a4[]={0x1a,'\0'};
  	char a5[]="ATD 9488946638;\r";
    char a6[]="ATH\r";
	int i;
    int count=0;

    TRISD = 0xFF;   // RD0 as input
   
	TXSTA=0b00100100;
	RCSTA=0b10010000;
	SPBRG=129;

	while(1)
	{
	    if(RD0==0)    //
	    {
	      for(i=0;a1[i]!='\0';i++)
	      {
	       TXREG=a1[i];
	       while(TXIF==0);
	       TXIF=0;
	      }
	      __delay_ms(500);
	
	      for(i=0;a2[i]!='\0';i++)
	      {
	       TXREG=a2[i];
	       while(TXIF==0);
	       TXIF=0;
	      }
	      __delay_ms(500);
	
	      for(i=0;a3[i]!='\0';i++)
	      {
	       TXREG=a3[i];
	       while(TXIF==0);
	       TXIF=0;
	      }
	
	      for(i=0;a4[i]!='\0';i++)
	      {
	       TXREG=a4[i];
	       while(TXIF==0);
	       TXIF=0;
	      }
	      TXREG='\r';
	       while(TXIF==0);
	       TXIF=0;
	       while(RD0==0);
		}
	 
		if(RD1==0)
	    {
	      for(i=0;a5[i]!='\0';i++)
	      {
	       TXREG=a5[i];
	       while(TXIF==0);
	       TXIF=0;
	      }
	      while(RD1==0);
		}

	    if(RD2==0)
	    {
	      for(i=0;a6[i]!='\0';i++)
	      {
	       TXREG=a6[i];
	       while(TXIF==0);
	       TXIF=0;
	      }
	       while(RD2==0);
		}
	}
}