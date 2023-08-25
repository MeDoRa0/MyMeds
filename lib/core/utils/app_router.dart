import 'package:go_router/go_router.dart';
import 'package:my_meds/features/home/views/home_view.dart';
import 'package:my_meds/features/home/views/widgets/add_medicine_view.dart';
import 'package:my_meds/features/splash/splash_view.dart';

abstract class AppRouter {
  static const kMedicineView = '/medicineView';
  static const kAddNewMedicine = '/addnewMedicine';
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
      )
    ],
  );
}
