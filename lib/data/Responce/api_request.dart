import 'package:mvvm/data/Responce/Status.dart';

class Api_request<T> {
  T? data;
  Status? status;
  String? message;
  Api_request(this.data, this.status, this.message);

  Api_request.loading() : status = Status.LOADING;
  Api_request.complect() : status = Status.COMPLECT;
  Api_request.error() : status = Status.ERROR;

  String toString() {
    return 'status : $status \n message: $message \n data: $data';
  }
}
