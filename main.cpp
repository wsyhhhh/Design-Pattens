#include <iostream>
#include <pthread.h>
class Singleton{
private:
    Singleton(){
        pthread_mutex_init(&mutex, nullptr);
    };
    static Singleton* instance;
public:
    static pthread_mutex_t mutex;
    static Singleton* getinstance(){
        if(instance== nullptr)
            pthread_mutex_lock(&mutex);
            if(instance== nullptr)
                instance=new Singleton();
            pthread_mutex_unlock(&mutex);
        return instance;
    }
};
class Singleton1{
private:
    Singleton1(){};
    static Singleton1* instance;
public:
    static Singleton1* getinstance(){
        return instance;
    }
    static void say(){
        std::cout<<"hello"<<std::endl;
    }
};
Singleton1* Singleton1::instance=new Singleton1;
int main() {
    for(int day=0;day<10;day++){
        Singleton1* a=Singleton1::getinstance();
        a->say();
    }
    return 0;
}