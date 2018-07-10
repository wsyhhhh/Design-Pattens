#include <iostream>
class Mediator;

class Person{
protected:
    Mediator* _mediator;
public:
    virtual void SetMediator(Mediator* mediator)=0;
    virtual void SendMessage(std::string message)=0;
    virtual void GetMessage(std::string message)=0;
};

class Mediator{
public:
    virtual void Send(std::string message,Person* person)=0;
    virtual void SetA(Person* A)=0;
    virtual void SetB(Person* B)=0;
};

class tenant:public Person{
public:
    void SetMediator(Mediator* mediator){
        _mediator= mediator;
    };
    void SendMessage(std::string message){
        _mediator->Send(message,this);
    }
    void GetMessage(std::string message){
        std::cout<<"tenant got message "<<message<<std::endl;
    }
};

class landlord:public Person{
public:
    void SetMediator(Mediator* mediator){
        _mediator= mediator;
    };
    void SendMessage(std::string message){
        _mediator->Send(message,this);
    }
    void GetMessage(std::string message){
        std::cout<<"landlord got message "<<message<<std::endl;
    }
};
class HouseMediator:public Mediator{
private:
    Person* m_tenant;
    Person* m_lanlord;
public:
    void SetA(Person *A){
        m_tenant=A;
    }
    void SetB(Person *B){
        m_lanlord=B;
    }
    void Send(std::string message,Person *person){
        if(person==m_tenant){
            m_lanlord->GetMessage(message);
        }
        else{
            m_tenant->GetMessage(message);
        }
    }
};
int main() {
    HouseMediator* mediator=new HouseMediator;
    tenant* person1=new tenant;
    landlord* person2=new landlord;
    mediator->SetA(person1);
    mediator->SetB(person2);
    person1->SetMediator(mediator);
    person2->SetMediator(mediator);
    person1->SendMessage("i want to renting a house\n");
    person2->SendMessage("70m2 , 1000 one month\n");
    delete person1;
    delete person2;
    delete mediator;
    return 0;
}