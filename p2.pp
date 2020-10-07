class Stack{
    //takes prime integers
    //use dynamic array
    // pointer called dA, points to type int
    public: 
        int size=2;
        
        int * dA= new int [size];//start with any size? then grow as limit reached
        int * sA= new int [size];//pointer to int array
        //automatically resize by 1.5 (include check inside push f)
        int numCount=0;//start count/index at 0
        //functions
        //push
    
        void push(int num){
            //resize check
            // if(numCount==size){//if (past?)last element in array is full
            //     int newSize= size*1.5;
            //     sA= dA;
            //     dA= new int [newSize];
            //     dA=sA;
            // }
            //insert, set element at index = 
            if(num==num){//change to check if prime
                dA[numCount]=num;//sets current(top of stack) equal to the pushed num        
                numCount++;
            }
        }
        // int size(){
        //     for(int i=0;i<size;i++){
                
        //     }
        //     return(i);
        // }
    //pop
    //empty
    
};

//end OF stack

/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>
#include "stack.cpp" 
using namespace std;

int main()
{
    Stack stack1;
    stack1.push(21);
    stack1.push(69);
    stack1.push(42);
    stack1.push(43);
    stack1.push(55);
    cout<< stack1.dA[4] << endl;
    // cout<< stack1.size();
    return 0;
}
