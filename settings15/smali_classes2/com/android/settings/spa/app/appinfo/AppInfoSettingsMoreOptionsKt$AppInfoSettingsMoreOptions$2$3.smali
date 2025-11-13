.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

.field final synthetic $restrictedSettingsAllowed$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;->$restrictedSettingsAllowed$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v1, v1, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3$1;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3;->$restrictedSettingsAllowed$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v2, p0}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$AppInfoSettingsMoreOptions$2$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    new-instance p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$allowRestrictedSettings$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
