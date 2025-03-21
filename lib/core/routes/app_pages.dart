import 'package:get/get.dart';
import 'package:mydaymate/core/routes/app_routes.dart';
import 'package:mydaymate/features/add_expences_or_incomes/view/add_expences_page.dart';
import 'package:mydaymate/features/add_expences_or_incomes/view/add_incomes_page.dart';
import 'package:mydaymate/features/financial_planner/binding/financial_planner_binding.dart';
import 'package:mydaymate/features/financial_planner/view/financial_planner_page.dart';
import 'package:mydaymate/features/grocery/binding/grocery_binding.dart';
import 'package:mydaymate/features/grocery/binding/grocery_items_binding.dart';
import 'package:mydaymate/features/grocery/view/grocery_items_page.dart';
import 'package:mydaymate/features/grocery/view/grocery_list_page.dart';
import 'package:mydaymate/features/home/binding/home_binding.dart';
import 'package:mydaymate/features/home/view/home_page.dart';
import 'package:mydaymate/features/onboard/binding/onboard_binding.dart';
import 'package:mydaymate/features/onboard/view/onboard_page.dart';
import 'package:mydaymate/features/auth/view/register_page.dart';
import 'package:mydaymate/features/auth/view/login_page.dart';
import 'package:mydaymate/features/auth/binding/auth_binding.dart';
import 'package:mydaymate/features/profile/binding/profile_binding.dart';
import 'package:mydaymate/features/profile/view/profile_page.dart';
import 'package:mydaymate/features/task/binding/task_binding.dart';
import 'package:mydaymate/features/task/binding/task_list_binding.dart';
import 'package:mydaymate/features/task/view/task_create_page.dart';
import 'package:mydaymate/features/task/view/task_list_page.dart';

import '../../features/add_expences_or_incomes/binding/expense_binding.dart';
import '../../features/add_expences_or_incomes/binding/income_binding.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const OnboardPage(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: AppRoutes.onboard,
      page: () => const OnboardPage(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => const RegisterPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.financial,
      page: () => const FinancialPlannerPage(),
      binding: FinancialPlannerBinding(),
    ),
    GetPage(
      name: AppRoutes.addIncome,
      page: () => const AddIncomesPage(),
      binding: IncomeBinding(),
    ),
    GetPage(
      name: AppRoutes.addExpense,
      page: () => const AddExpencesPage(),
      binding: ExpenseBinding(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.addTask,
      page: () => const TaskCreatePage(),
      binding: TaskBinding(),
    ),
    GetPage(
      name: AppRoutes.taskList,
      page: () => const TaskListPage(),
      binding: TaskListBinding(),
    ),
    GetPage(
      name: AppRoutes.todoList,
      page: () => const TaskListPage(),
      binding: TaskListBinding(),
    ),
    GetPage(
      name: AppRoutes.grocery,
      page: () => const GroceryListPage(),
      binding: GroceryBinding(),
    ),
    GetPage(
      name: AppRoutes.groceryItems,
      page: () => const GroceryItemsPage(),
      binding: GroceryItemsBinding(),
    ),
  ];
}
