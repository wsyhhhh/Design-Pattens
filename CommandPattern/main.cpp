#include <iostream>
class Group{
public:
    virtual void find()=0;
    virtual void add()=0;
    virtual void del()=0;
};
class RequirementGroup:public Group{
public:
    void find(){
        std::cout<<"find requirementgroup..."<<std::endl;
    }
    void add(){
        std::cout<<"add requirementgroup..."<<std::endl;
    }
    void del(){
        std::cout<<"del requirementgroup..."<<std::endl;
    }
};
class PagegGroup:public Group{
public:
    void find(){
        std::cout<<"find PagegGroup..."<<std::endl;
    }
    void add(){
        std::cout<<"add PagegGroup..."<<std::endl;
    }
    void del(){
        std::cout<<"del PagegGroup..."<<std::endl;
    }
};
class CodeGroup:public Group{
public:
    void find(){
        std::cout<<"find CodeGroup..."<<std::endl;
    }
    void add(){
        std::cout<<"add CodeGroup..."<<std::endl;
    }
    void del(){
        std::cout<<"del CodeGroup..."<<std::endl;
    }
};

class Command{
protected:
    RequirementGroup* rg=new RequirementGroup;
    PagegGroup* pg=new PagegGroup;
    CodeGroup*cg=new CodeGroup;
public:
    virtual void execute()=0;
};
class AddRequirementCommand:public Command{
public:
    void execute(){
        rg->find();
        rg->add();
    }
};
class DelPageCommand:public Command{
public:
    void execute(){
        pg->find();
        pg->del();
    }
};
class invoker{
private:
    Command* command;
public:
    void setCommand(Command* command){
        this->command=command;
    }
    void action(){
        this->command->execute();
    }
};
int main() {
    invoker* wsy=new invoker;
    std::cout<<"ask to add a req"<<std::endl;
    Command* command=new AddRequirementCommand;
    wsy->setCommand(command);
    wsy->action();
    return 0;
}