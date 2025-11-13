.class public abstract Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final TopBarAppLaunchButton(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "packageInfoPresenter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x30ba233f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->getUserPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$intent$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$intent$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;-><init>(Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    sget-object v6, Lcom/android/settings/spa/app/appinfo/ComposableSingletons$TopBarAppLaunchButtonKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v8, 0x30000

    const/16 v9, 0x1e

    move-object v7, p2

    invoke-static/range {v1 .. v9}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$2;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method
