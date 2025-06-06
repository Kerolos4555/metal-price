import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:metal_price/logic/cubit/app_cubit.dart';
import 'package:metal_price/logic/cubit/app_states.dart';
import 'package:metal_price/presentation/widgets/custom_error_widget.dart';
import 'package:metal_price/presentation/widgets/custom_indicator.dart';
import 'package:metal_price/presentation/widgets/metal_item.dart';

class MetalPriceList extends StatelessWidget {
  const MetalPriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        if (AppCubit.get(context).metalModel != null) {
          return ListView(
            children: [
              MetalItem(
                karat: '24K',
                price: AppCubit.get(context).metalModel!.priceGram24k!,
              ),
              const SizedBox(height: 8),
              MetalItem(
                karat: '22K',
                price: AppCubit.get(context).metalModel!.priceGram22k!,
              ),
              const SizedBox(height: 8),
              MetalItem(
                karat: '21K',
                price: AppCubit.get(context).metalModel!.priceGram21k!,
              ),
              const SizedBox(height: 8),
              MetalItem(
                karat: '20K',
                price: AppCubit.get(context).metalModel!.priceGram20k!,
              ),
              const SizedBox(height: 8),
              MetalItem(
                karat: '18K',
                price: AppCubit.get(context).metalModel!.priceGram18k!,
              ),
              const SizedBox(height: 8),
              MetalItem(
                karat: '16K',
                price: AppCubit.get(context).metalModel!.priceGram16k!,
              ),
              const SizedBox(height: 8),
              MetalItem(
                karat: '14K',
                price: AppCubit.get(context).metalModel!.priceGram14k!,
              ),
              const SizedBox(height: 8),
              MetalItem(
                karat: '10K',
                price: AppCubit.get(context).metalModel!.priceGram10k!,
              ),
              const SizedBox(height: 8),
            ],
          );
        } else if (state is ErrorState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomIndicator();
        }
      },
    );
  }
}
