#include <iostream>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
class IWomen{
public:
    IWomen(){};
    virtual int gettype()=0;
    virtual std::string getrequest()=0;
};
class Women:public IWomen{
private:
    int type=0;
    std::string request="";

public:
    Women(int _type,std::string _request){
        this->type=_type;
        switch (this->type){
            case 1:
                this->request="daugther's request is "+_request;
                break;
            case 2:
                this->request="wife's request is "+_request;
                break;
            case 3:
                this->request="son's request is "+_request;
                break;
        }
    }
    int gettype(){
        return this->type;
    }
    std::string getrequest(){
        return this->request;
    }
};
class Handler{
public:
    static const int FATHER_LEVEL_REQUEST=1;
    static const int HUSBAND_LEVEL_REQUEST=2;
    static const int SON_LEVEL_REQUEST=3;
    void setNext(Handler* _handler){
        this->nexthandler=_handler;
    }
    Handler(int _level){
        this->level=_level;
    }

    Handler() {}

    void HandleMessage(Women women){
        if(women.gettype()==this->level){
            this->response(women);
        }
        else{
            if(this->nexthandler!= nullptr){
                this->nexthandler->HandleMessage(women);
            }
            else{
                std::cout<<"nowhere to ask"<<std::endl;
            }
        }
    }
protected:
    virtual void response(Women women)=0;
private:
    int level=0;
    Handler* nexthandler;
};
class Father:public Handler{
public:
    Father():Handler(this->FATHER_LEVEL_REQUEST){
    }
protected:
    void response(Women women){
        std::cout<<"---daughter ask father---"<<std::endl;
        std::cout<<women.getrequest()<<std::endl;
        std::cout<<"father agree"<<std::endl;
    }
};
class Husband:public  Handler{
public:
    Husband():Handler(this->HUSBAND_LEVEL_REQUEST){
    }
protected:
    void response(Women women){
        std::cout<<"---wife ask husband---"<<std::endl;
        std::cout<<women.getrequest()<<std::endl;
        std::cout<<"husband agree"<<std::endl;
    }
};
class Son:public Handler{
public:
    Son():Handler(this->SON_LEVEL_REQUEST){
    }
protected:
    void response(Women women){
        std::cout<<"---mother ask son---"<<std::endl;
        std::cout<<women.getrequest()<<std::endl;
        std::cout<<"son agree"<<std::endl;
    }
};

int main() {

    std::vector<Women> list;
    for(int i=0;i<5;i++){
        int b=rand()%3;
        Women* w=new Women(b,"I want to go shopping");
        list.push_back(*w);
    }
    Handler* father=new Father;
    Handler* son=new Son;
    Handler* husband=new Husband;
    father->setNext(husband);
    husband->setNext(son);
    std::vector<Women>::iterator iter;
    for(iter=list.begin();iter!=list.end();iter++){
        father->HandleMessage(*iter);
    }
    return 0;
}