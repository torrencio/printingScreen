//
//  cpptest.cpp
//  println
//
//  Created by torrencio Vigilante on 2015-07-29.
//  Copyright (c) 2015 Glint. All rights reserved.
//

#include "cpptest.h"
#include <stdio.h>
#include <iostream>
#include <vector>
#include <string.h>



using namespace std;

class helloStuff{
public:

    int numberOfTimes;
    
    char helloMessage[100];
    
    helloStuff(){
        numberOfTimes=1;
        strcpy(helloMessage, "Hello World");
        
    
    
    }
    helloStuff(int x, char y[]){
        numberOfTimes=x;
        strcpy(helloMessage, y);
    }
    
    

};

std::vector<helloStuff> myvector;
extern "C" {
void appendVector(int x, char y[]){
    //string &a = *reinterpret_cast<string*>(y);
    //cout<<a<<endl;
    
    myvector.push_back(helloStuff(x,y));

}
}

void printing(){
    for(int i =0;i<myvector.size();i++){
        
        for(int j=0;j<myvector[i].numberOfTimes;j++){
           // printf(myvector[i].helloMessage);
            printf("%s\n",myvector[i].helloMessage);
        }
        
    
    }
}

