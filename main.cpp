#include <set>
#include <vector>
#include <websocketpp/config/asio_no_tls.hpp>
#include <websocketpp/server.hpp>

typedef websocketpp::server<websocketpp::config::asio> server;

using websocketpp::connection_hdl;
using websocketpp::lib::placeholders::_1;
using websocketpp::lib::placeholders::_2;
using websocketpp::lib::bind;

struct table{
    int dong_user;
    int nan_user;
    int xi_user;
    int bei_user;
    websocketpp::connection_hdl hdl;
    std::vector<int> pai,my;

};
class broadcast_server {
public:
    broadcast_server() {
        m_server.init_asio();

        m_server.set_open_handler(bind(&broadcast_server::on_open,this,::_1));
        m_server.set_close_handler(bind(&broadcast_server::on_close,this,::_1));
        m_server.set_message_handler(bind(&broadcast_server::on_message,this,::_1,::_2));
    }

    void on_open(connection_hdl hdl) {
        //m_connections.insert(hdl);
        m_connections.insert(hdl);
        table1.hdl = hdl;
        t.push_back(table1);

    }

    void on_close(connection_hdl hdl) {
//        m_connections.erase(hdl);
        m_connections.erase(hdl);
    }

    void on_message(connection_hdl hdl, server::message_ptr msg) {
        for (auto it : t) {
            m_server.send(it.hdl,msg);

        }
    }

    void run(uint16_t port) {
        m_server.listen(port);
        m_server.start_accept();
        m_server.run();
    }
private:
    typedef std::set<connection_hdl,std::owner_less<connection_hdl>> online_list;
    std::vector<table> t;
    table table1;
    server m_server;
    online_list m_connections;
};

int main() {
    broadcast_server server;
    server.run(9002);
}