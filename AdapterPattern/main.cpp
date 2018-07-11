#include <iostream>
//class adapter
class target{
public:
    virtual void Request(){
        std::cout<<"Called Request"<<std::endl;
    };
};
class adaptee{
public:
    void SpecificRequest(){
        std::cout<<"Called SpecificRequest"<<std::endl;
    };
};
class adapter:public target,public adaptee{
public:
    void Request(){
        this->SpecificRequest();
    }
};
//object adapter
class target2{
public:
    virtual void Request(){};
};
class adaptee2{
public:
    void SpecificRequest(){
        std::cout<<"Called SpecificRequest2"<<std::endl;
    }
};
class adapter2:public target2{
private:
    adaptee2* adaptee;
public:
    adapter2(){
        adaptee=new adaptee2();
    }
    void Request(){
        adaptee->SpecificRequest();
    }
};
int main() {
    target *t=new adapter;//attention to adapter
    t->Request();
    target2 *t2=new adapter2;
    t2->Request();
    return 0;
}