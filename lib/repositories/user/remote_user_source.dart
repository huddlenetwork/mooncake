import 'package:mooncake/entities/entities.dart';

/// Represents the remote source that needs to be used when wanting to
/// deal with account data.
abstract class RemoteUserSource {
  /// Returns the object containing the data
  /// of the current application user.
  Future<User> getUser(String address);

  /// Allows to sends funds from the faucet to the specified [user].
  Future<void> fundUser(User user);
}
