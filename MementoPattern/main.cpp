#include <iostream>
class Memento{
private:
    std::string state="";
public:
    Memento(std::string _state){
        this->state=_state;
    }
    std::string getstate(){
        return this->state;
    }
    void setstate(std::string _state){
        this->state=_state;
    }
};
class Boy{
private:
    std::string state="";
public:
    void changestate(){
        this->state="bad mind";
    }
    std::string getstate(){
        return  this->state;
    }
    void setstate(std::string st){
        this->state=st;
    }
    Memento * creatememento(){
        return new Memento(this->state);
    }
    void restorememento(Memento* _memento){
        this->setstate(_memento->getstate());
    }
};
class caretaker{
private:
    Memento* memento;
public:
    caretaker(){};
    Memento* getmenento(){
        return memento;
    }
    void setmemento(Memento* _memento){
        this->memento=_memento;
    }
};
int main() {
    Boy* boy=new Boy;
    caretaker* ct=new caretaker;
    boy->setstate("good mind");
    std::cout << "---boy state now---" << std::endl;
    std::cout << boy->getstate()<<std::endl;
    ct->setmemento(boy->creatememento());
    boy->changestate();
    std::cout<< "---boy state after---" <<std::endl;
    std::cout << boy->getstate()<<std::endl;
    //reset
    boy->restorememento(ct->getmenento());
    std::cout<< "---boy state reset---"<<std::endl;
    std::cout<<boy->getstate()<<std::endl;
    return 0;
}