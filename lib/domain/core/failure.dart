class Failure {
  const Failure();

  const Failure.cancelledByUser();
  const Failure.unexpected();
  const Failure.notFound();
  const Failure.noInternet();
  const Failure.serverError();
}
