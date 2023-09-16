import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_meds/features/home/presentation/manager/medicine_cubit/medicine_cubit.dart';
import 'package:my_meds/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:my_meds/features/home/presentation/views/widgets/custom_bottom_bar.dart';
import 'medicine_list_view.dart';

class MedicineViewBody extends StatefulWidget {
  const MedicineViewBody({super.key});

  @override
  State<MedicineViewBody> createState() => _MedicineViewBodyState();
}

class _MedicineViewBodyState extends State<MedicineViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MedicineCubit>(context).fetchAllMedicine();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Your Medicines',
        ),
        Expanded(
          child: MedicineListView(),
        ),
        CustomBottomBar(),
      ],
    );
  }
}
