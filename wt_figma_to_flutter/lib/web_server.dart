import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:wt_figma_to_flutter/utils/name_builder.dart';

// Configure routes.
final _router = Router()
  ..get('/', _rootHandler)
  ..put('/put', _putHandler)
  ..put('/preview', _previewHandler)
  ..get('/echo/<message>', _echoHandler);

Response _rootHandler(Request req) {
  return Response.ok('Hello, World!\n');
}

Future<Response> _putHandler(Request req) async {
  final componentListString = await req.readAsString();

  File('./data/components.json').writeAsStringSync(componentListString);

  return Response.ok(componentListString.length.toString());
}

Future<Response> _previewHandler(Request req) async {
  final componentListString = await req.readAsString();

  final previewMap = json.decode(componentListString);
  final name = previewMap['name'];
  final svg = previewMap['svg'];
  final file = NameBuilder.createPreviewFile(name);
  // print(file.path);
  // print(svg);
  file.writeAsStringSync(svg);

  return Response.ok(componentListString.length.toString());
}

Response _echoHandler(Request request) {
  final message = request.params['message'];
  return Response.ok('$message\n');
}

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': 'GET, PUT, POST, DELETE, OPTIONS',
  'Access-Control-Allow-Headers': '*',
};

Response? _options(Request request) =>
    (request.method == 'OPTIONS') ? Response.ok(null, headers: corsHeaders) : null;
Response _cors(Response response) => response.change(headers: corsHeaders);
final _fixCORS = createMiddleware(requestHandler: _options, responseHandler: _cors);

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // Configure a pipeline that logs requests.
  final handler =
      Pipeline().addMiddleware(logRequests()).addMiddleware(_fixCORS).addHandler(_router);

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  print('Server listening on port ${server.port}');
}
