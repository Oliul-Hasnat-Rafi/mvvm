import 'package:mvvm/data/Responce/Status.dart';

class Api_request<T> {
  T? data;
  Status? status;
  String? message;
  Api_request(this.data, this.status, this.message);

  Api_request.loading() : status = Status.LOADING;
  Api_request.complect(this.data) : status = Status.COMPLECT;
  Api_request.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return 'status : $status \n message: $message \n data: $data';
  }
}
