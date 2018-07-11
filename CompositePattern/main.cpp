#include <iostream>
#include <vector>
#include <typeinfo>
class Corp {
private:
    std::string name="";
    std::string position="";
    int salary=0;
public:
    Corp(){};
    Corp(std::string _name,std::string _position,int _salary){
        this->name=_name;
        this->position=_position;
        this->salary=_salary;
    }
    std::string getinfo(){
        std::string info="";
        info="name: "+this->name;
        info+="\t position: "+this->position;
        info+="\t salary: "+std::to_string(this->salary);
    }
};
class leaf:public Corp{
public:
    leaf(std::string _name,std::string _position,int _salary):Corp(_name,_position,_salary){
    }
};
class branch:public Corp{
private:
    std::vector<Corp> subordinatelist;
public:
    branch(std::string _name,std::string _position,int _salary):Corp(_name,_position,_salary){
    }
    // add xiashu
    void addsubordinate(Corp corp){
        this->subordinatelist.push_back(corp);
    }
    std::vector<Corp> getsubordinate(){
        return this->subordinatelist;
    }
};
class client{
public:
    static std::string getTreeInfo(branch* root){
        std::vector<Corp> subordinatelist=root->getsubordinate();
        std::string info="";
        for(Corp s:subordinatelist){
            if(typeid(s)== typeid(leaf)){
                info=info+s.getinfo()+"\n";
            }
            else{
                info=info+s.getinfo()+"\n"+getTreeInfo((branch)s);
            }
        }
    }
};

int main() {

    std::cout << "Hello, World!" << std::endl;
    return 0;
}