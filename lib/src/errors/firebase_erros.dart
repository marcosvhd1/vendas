class TFirebaseError {
  final String message;

  const TFirebaseError([this.message = 'Ocorreu um erro desconhecido.']);

  factory TFirebaseError.code(String code) {
    switch (code) {
      case 'user-not-found':
        return const TFirebaseError('Usuário não encontrado.');
      case 'weak-password':
        return const TFirebaseError('A senha informada é muito fraca.');
      case 'invalid-email':
        return const TFirebaseError('O email informado está inválido.');
      case 'email-already-in-use':
        return const TFirebaseError('O email informado já se encontra em uso.');
      case 'wrong-password':
        return const TFirebaseError('A senha informada está incorreta.');
      case 'invalid-password':
        return const TFirebaseError('A senha informada está inválida.');
      case 'operation-not-allowed':
        return const TFirebaseError('Operação não concluída. Por favor, contate o suporte');
      case 'user-disabled':
        return const TFirebaseError('Este usuário foi desativado. Por favor, contate o suporte.');
      default:
        return const TFirebaseError();
    }
  }
}
