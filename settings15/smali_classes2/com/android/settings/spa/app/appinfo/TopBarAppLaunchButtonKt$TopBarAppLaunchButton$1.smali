.class final Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;
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

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic $packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;->$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;->$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/TopBarAppLaunchButtonKt$TopBarAppLaunchButton$1;->$packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    :try_start_0
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
