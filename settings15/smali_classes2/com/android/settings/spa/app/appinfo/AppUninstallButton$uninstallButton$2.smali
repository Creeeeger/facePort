.class final Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$2;
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

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppUninstallButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppUninstallButton;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppUninstallButton;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$2;->$app:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppUninstallButton;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton$uninstallButton$2;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->appButtonRepository:Lcom/android/settings/spa/app/appinfo/AppButtonRepository;

    invoke-virtual {v1, p0}, Lcom/android/settings/spa/app/appinfo/AppButtonRepository;->isUninstallBlockedByAdmin(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v1

    iget-object v2, v0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->packageInfoPresenter:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->context:Landroid/content/Context;

    const-class v4, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x369

    invoke-virtual {v2, v3}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->logAction(I)V

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppUninstallButton;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x368

    invoke-virtual {v2, p0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->logAction(I)V

    new-instance p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$startUninstallActivity$1;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$startUninstallActivity$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Z)V

    invoke-virtual {v2, p0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->requireAuthAndExecute(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
