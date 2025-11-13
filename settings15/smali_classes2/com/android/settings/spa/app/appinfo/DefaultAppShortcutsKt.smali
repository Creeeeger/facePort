.class public abstract Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutsKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SHORT_CUTS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;

    const-string v1, "android.app.role.HOME"

    const v2, 0x7f1411c6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;

    const-string v2, "android.app.role.BROWSER"

    const v3, 0x7f140c02

    invoke-direct {v1, v2, v3}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;

    const-string v3, "android.app.role.DIALER"

    const v4, 0x7f140c13

    invoke-direct {v2, v3, v4}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;

    const-string v4, "android.app.role.EMERGENCY"

    const v5, 0x7f140c09

    invoke-direct {v3, v4, v5}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;

    const-string v5, "android.app.role.SMS"

    const v6, 0x7f142cd1

    invoke-direct {v4, v5, v6}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutsKt;->SHORT_CUTS:Ljava/util/List;

    return-void
.end method

.method public static final DefaultAppShortcuts(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x320b6023

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutsKt;->SHORT_CUTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;

    const/16 v2, 0x40

    invoke-static {v1, p0, p1, v2}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutPreferenceKt;->DefaultAppShortcutPreference(Lcom/android/settings/spa/app/appinfo/DefaultAppShortcut;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutsKt$DefaultAppShortcuts$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/DefaultAppShortcutsKt$DefaultAppShortcuts$1;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method
