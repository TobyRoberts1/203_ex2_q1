#include "/courses/compx203/ex2/lib_ex2.h"


void count(int start, int end) {

    if(0 <= start && start < 10000 && 0 <= end && end < 10000){
        int i;
        if(start <= end){
            for(i = start; i <= end; i++)
            {              
                writessd(i);
                delay();               
            
            }
        }   
        else{
            for (i = start; i >= end; i--)
            {
                writessd(i);
                delay();                    
            }
        }

    }
    else{
        return;
    }

}

