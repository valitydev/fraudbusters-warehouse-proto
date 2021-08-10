namespace java com.rbkmoney.fraudbusters.warehouse
namespace erlang fraudbusters_warehouse


struct Query {
  1: required string statement
  2: optional map<string, string> params
}

struct RowMap {
    1: map<string, string> values
}

struct Result {
    1: list<RowMap> values
}


/**
* Интерфейс для выполнения запросов в хранилище
*/
service QueryService {

      Result execute(1: Query query);

}



