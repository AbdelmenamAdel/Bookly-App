import 'package:bookly/Features/Home/data/repos/home_repo_implementation.dart';
import 'package:bookly/Features/Home/peresentation/views/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/peresentation/views/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/sevices/service_locator.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await initServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBooksCubit>(
          create: (context) => FeaturedBooksCubit(
            sl.get<HomeRepoImplementation>(),
          ),
        ),
        BlocProvider<NewestBooksCubit>(
          create: (context) => NewestBooksCubit(
            sl.get<HomeRepoImplementation>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: AppRouter.route,
      ),
    );
  }
}
