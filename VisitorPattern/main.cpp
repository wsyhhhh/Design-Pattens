#include <iostream>
#include <vector>
class Keyboard;
class Mouse;
class Monitor;
class Computer;

//abstact visitor
class ComputerPartVistor{
public:
    ComputerPartVistor(){};
    virtual void visit(Keyboard* keyboard){};
    virtual void visit(Mouse* mouse){};
    virtual void visit(Monitor* monitor){};
    virtual void visit(Computer* computer){};
};

//element
class computerpart{
public:
    virtual void accept(ComputerPartVistor* computerPartVisitor)=0;
};
//concreate element
class Keyboard:public computerpart{
public:
    void accept(ComputerPartVistor* computerPartVisitor){
            computerPartVisitor->visit(this);
    }
};
class Mouse:public computerpart{
public:
    void accept(ComputerPartVistor* computerPartVisitor){
        computerPartVisitor->visit(this);
    }
};
class Monitor:public computerpart{
public:
    void accept(ComputerPartVistor* computerPartVisitor){
        computerPartVisitor->visit(this);
    }
};

//concrete visitor
class Display:public ComputerPartVistor{
public:
    void visit(Computer* computer) {
        std::cout<<"display computer"<<std::endl;
    }
    void visit(Monitor* monitor){
        std::cout<<"display monitor"<<std::endl;
    }
    void visit(Mouse* mouse){
        std::cout<<"display mouse"<<std::endl;
    }
    void visit(Keyboard* keyboard){
        std::cout<<"display keyboard"<<std::endl;
    }
};
//object structure
class Computer:public computerpart{
public:
    std::vector<computerpart*> parts;
    Computer(){
        Mouse* ms=new Mouse;
        Keyboard* kb=new Keyboard;
        Monitor* mt=new Monitor;
        parts.push_back(static_cast<computerpart *>(ms));
        parts.push_back(static_cast<computerpart *>(kb));
        parts.push_back(static_cast<computerpart *>(mt));
    }
    void accept(ComputerPartVistor* computerPartVistor){
        for(std::vector<computerpart *>::iterator iter=parts.begin();iter!=parts.end();iter++){
            (*iter)->accept(computerPartVistor);
        }
        computerPartVistor->visit(this);
    }
};
int main() {
    computerpart* computer=new Computer;
    Display* cv=new Display;
    computer->accept(cv);
    return 0;
}