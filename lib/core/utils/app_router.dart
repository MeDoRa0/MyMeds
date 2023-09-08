import 'package:go_router/go_router.dart';
import 'package:my_meds/features/home/presentation/views/home_view.dart';
import 'package:my_meds/features/home/presentation/views/widgets/add_medicine_view.dart';
import 'package:my_meds/features/home/presentation/views/widgets/user_profile.dart';
import 'package:my_meds/features/splash/splash_view.dart';

abstract class AppRouter {
  static const kMedicineView = '/medicineView';
  static const kAddNewMedicine = '/addnewMedicine';
  static const kUserProfile = '/userProfile';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kMedicineView,
        builder: (context, state) => const MedicineView(),
      ),
      GoRoute(
        path: kAddNewMedicine,
        builder: (context, state) => const AddMedicineView(),
      ),
       GoRoute(
        path:kUserProfile,
        builder: (context, state) => const UserProfile(),
      )
    ],
  );
}
