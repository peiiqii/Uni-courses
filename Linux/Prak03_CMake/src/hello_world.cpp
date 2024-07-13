#include <boost/thread/thread.hpp>
#include <MyLibrary.h>

int main(){
    boost::thread thrd(&hello);
    thrd.join();
    return 0;
}


