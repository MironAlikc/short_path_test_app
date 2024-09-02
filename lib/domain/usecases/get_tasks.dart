import 'package:dartz/dartz.dart' as dartz;
import 'package:short_path_test_app/core/error/failures.dart';
import 'package:short_path_test_app/domain/entities/path_task.dart';
import 'package:short_path_test_app/domain/repositories/path_finder_repository.dart';

class GetTasksUseCase {
  final PathFinderRepository repository;

  GetTasksUseCase(this.repository);

  Future<dartz.Either<Failure, List<PathTask>>> call() {
    return repository.getTasks();
  }
}
