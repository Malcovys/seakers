// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter/widgets.dart' as _i10;
import 'package:sneakers/presentation/pages/app/app.dart' as _i1;
import 'package:sneakers/presentation/pages/app/browse.dart' as _i2;
import 'package:sneakers/presentation/pages/app/cart.dart' as _i3;
import 'package:sneakers/presentation/pages/app/home.dart' as _i4;
import 'package:sneakers/presentation/pages/app/item_detail.dart' as _i5;
import 'package:sneakers/presentation/pages/app/profile.dart' as _i7;
import 'package:sneakers/presentation/pages/app/purchase_items.dart' as _i8;
import 'package:sneakers/presentation/pages/login.dart' as _i6;

/// generated route for
/// [_i1.AppPage]
class AppRoute extends _i9.PageRouteInfo<void> {
  const AppRoute({List<_i9.PageRouteInfo>? children})
    : super(AppRoute.name, initialChildren: children);

  static const String name = 'AppRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.AppPage();
    },
  );
}

/// generated route for
/// [_i2.BrowsePage]
class BrowseRoute extends _i9.PageRouteInfo<void> {
  const BrowseRoute({List<_i9.PageRouteInfo>? children})
    : super(BrowseRoute.name, initialChildren: children);

  static const String name = 'BrowseRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.BrowsePage();
    },
  );
}

/// generated route for
/// [_i3.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute({List<_i9.PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.CartPage();
    },
  );
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomePage();
    },
  );
}

/// generated route for
/// [_i5.ItemDetailPage]
class ItemDetailRoute extends _i9.PageRouteInfo<ItemDetailRouteArgs> {
  ItemDetailRoute({
    _i10.Key? key,
    required int itemId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         ItemDetailRoute.name,
         args: ItemDetailRouteArgs(key: key, itemId: itemId),
         initialChildren: children,
       );

  static const String name = 'ItemDetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItemDetailRouteArgs>();
      return _i5.ItemDetailPage(key: args.key, itemId: args.itemId);
    },
  );
}

class ItemDetailRouteArgs {
  const ItemDetailRouteArgs({this.key, required this.itemId});

  final _i10.Key? key;

  final int itemId;

  @override
  String toString() {
    return 'ItemDetailRouteArgs{key: $key, itemId: $itemId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ItemDetailRouteArgs) return false;
    return key == other.key && itemId == other.itemId;
  }

  @override
  int get hashCode => key.hashCode ^ itemId.hashCode;
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.LoginPage();
    },
  );
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.ProfilePage();
    },
  );
}

/// generated route for
/// [_i8.PurchaseItemsPage]
class PurchaseItemsRoute extends _i9.PageRouteInfo<PurchaseItemsRouteArgs> {
  PurchaseItemsRoute({
    _i11.Key? key,
    required int purchaseId,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PurchaseItemsRoute.name,
         args: PurchaseItemsRouteArgs(key: key, purchaseId: purchaseId),
         initialChildren: children,
       );

  static const String name = 'PurchaseItemsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PurchaseItemsRouteArgs>();
      return _i8.PurchaseItemsPage(key: args.key, purchaseId: args.purchaseId);
    },
  );
}

class PurchaseItemsRouteArgs {
  const PurchaseItemsRouteArgs({this.key, required this.purchaseId});

  final _i11.Key? key;

  final int purchaseId;

  @override
  String toString() {
    return 'PurchaseItemsRouteArgs{key: $key, purchaseId: $purchaseId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PurchaseItemsRouteArgs) return false;
    return key == other.key && purchaseId == other.purchaseId;
  }

  @override
  int get hashCode => key.hashCode ^ purchaseId.hashCode;
}
