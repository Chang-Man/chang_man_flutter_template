// Backend API Response에 맞게 수정
// 예시 { statusCode: string, message: string, data: T }
class ApiResponse<T> {
  final String statusCode;
  final String message;
  final T data;

  ApiResponse({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return ApiResponse(
      statusCode: json['statusCode'] ?? "",
      message: json['message'] ?? "",
      data: fromJsonT(json['data']),
    );
  }

  bool isSuccess() {
    return statusCode == "OK";
  }
}
