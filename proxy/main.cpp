#include <iostream>
class IGamePlayer{
public:
    virtual void login(std::string user,std::string password)=0;
    virtual void killBoss()=0;
    virtual void upgrade()=0;
};
class GamePlayer:public IGamePlayer{
private:
    std::string name;
public:
    GamePlayer(std::string _name){
        this->name=_name;
    }
    void killBoss(){
        std::cout<<this->name<<" is killing boss"<<std::endl;
    }
    void login(std::string user,std::string name){
        std::cout<<"user : "<<user<<" name : "<<this->name<<std::endl;
    }
    void upgrade(){
        std::cout<<this->name<<" up a level "<<std::endl;
    }
};
class GamePlayerProxy:public IGamePlayer{
private:
    IGamePlayer* gamePlayer;
public:
    GamePlayerProxy(IGamePlayer* _gameplayer){
        this->gamePlayer=_gameplayer;
    }
    void killBoss(){
        this->gamePlayer->killBoss();
    }
    void login(std::string user,std::string password){
        this->gamePlayer->login(user,password);
    }
    void upgrade(){
        this->gamePlayer->upgrade();
    }
};
int main() {
    GamePlayer* player=new GamePlayer("wsy");
    GamePlayerProxy* proxy=new GamePlayerProxy(player);
    std::cout<<"begin time is 2018-7-10 10:46"<<std::endl;
    proxy->login("wsy","password");
    proxy->killBoss();
    proxy->upgrade();
    std::cout<<"end time is 2018-7-10 10:50"<<std::endl;
    return 0;
}