.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/layout/RowScope;",
        "invoke",
        "(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

.field final synthetic $packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

.field final synthetic $packageInfoState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;->$packageInfoState:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;->$featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "$this$RegularScaffold"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;->$packageInfoState:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;->$featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsKt$AppInfoSettings$1;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    move-object v3, p2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const p0, -0x10c3edd2

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const-string p0, "featureFlags"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->archiving()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x48

    invoke-static {v0, v1, v3, p0}, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt;->TopBarAppLaunchButton(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V

    :cond_4
    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v2, 0x0

    const/16 v4, 0x48

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt;->AppInfoSettingsMoreOptions(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
