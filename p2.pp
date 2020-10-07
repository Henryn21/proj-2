/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>
#include "stack.cpp"
#include "stack.h"
using namespace std;

int main()
{
    cout << "The three functions are tested: push, pop, and empty" << endl;
    cout << "First the empty function is tested and returns 1 (true)" << endl;
    cout << "3 values are pushed then printed: 13 5 13" << endl;
    cout << "Next the pop function is called and returns the element from the top of the stack (13)" << endl;
    cout << "The empty function is then tested again and returns 0 (false)" << endl;
    Stack stack1;
    cout << stack1.empty() << endl;
    stack1.push(13);
    stack1.push(5);
    stack1.push(13);
    cout<< stack1.dynamicArr[0] << endl;
    cout<< stack1.dynamicArr[1] << endl;
    cout<< stack1.dynamicArr[2] << endl;
    cout<< stack1.pop()<< endl;
    cout<< stack1.empty();
    //overload assigment
    Stack stack2;
    stack2=stack1;
    return 0;
}

class Stack{
    //takes prime integers into a stack
    public: 
        int size=2;//size of array starts at 2
        int * dynamicArr= new int[size];//array that is used as a stack
        int * storageArr= new int[size];//array used to store values during resize
        int numCount=0;//count/index of current number in dynamicArray, starts at 0
        bool isPrime=true; //boolean used to check if number pushed is a prime number
        
        //functions

        //push 
        //takes int to push as num, dynamicArr is checked to see if it needs resize,
        //num is checked to see if prime number, then added at top of stack
        void push(int num){
            //resize check
            if(numCount==size){
                int newSize= size*1.5;
                storageArr= dynamicArr;
                dynamicArr= new int [newSize];
                dynamicArr=storageArr;
            }
            //prime check
            if(num==0 || num==1){
                isPrime=false;
            }
            else {
                for (int i = 2; i <= num / 2; i++) {
                    if (num % i == 0) {
                        isPrime = false;
                        break;
                    }
                }
            }
            //insert, set element at current index
            if(isPrime){
               dynamicArr[numCount]=num;       
               numCount++; 
            }
        }
        
    //pop
    //stores top of stack in topNum
    //sets top of stack to 0, decreases numCount by 1
    //returns topNum
        int pop(){
            int topNum=dynamicArr[numCount-1];
            dynamicArr[numCount]=0;
            numCount--;
            return topNum;
        }
    
    //empty
    //returns whether the stack is empty
        bool empty(){
            return(0==numCount);
        }
    
};


namespace N
{
class Stack
    {
        public:
            void push();
            int pop();
            bool empty();
    };
}
