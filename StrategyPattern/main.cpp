#include <iostream>
class IStrategy{
public:
    virtual void operate()=0;
};
class Backdoor:public IStrategy{
public:
    void operate(){
        std::cout<<"ask A backdoor"<<std::endl;
    }
};
class GivenGreenLight: public IStrategy{
public:
    void operate(){
        std::cout<<"ask B give green ligth"<<std::endl;
    }
};
class BlockEnemy:public  IStrategy{
public:
    void operate(){
            std::cout<<"ask C block enemy"<<std::endl;
    }
};
class Context{
private:
    IStrategy* strategy;
public:
    Context(){};
    Context(IStrategy* strategy1){
        this->strategy=strategy1;
    }
    void operate(){
        this->strategy->operate();
    }
};
int main() {
    Context* context;
    std::cout<<"---open first---"<<std::endl;
    IStrategy* bd=new Backdoor;
    context=new Context(bd);
    context->operate();
    std::cout << "---open second---" << std::endl;
    context=new Context(new GivenGreenLight);
    context->operate();
    std::cout << "---open third---" << std::endl;
    context=new Context(new BlockEnemy);
    context->operate();
    return 0;
}