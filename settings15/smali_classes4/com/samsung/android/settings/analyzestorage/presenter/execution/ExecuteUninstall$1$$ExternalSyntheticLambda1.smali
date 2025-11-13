.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

.field public final synthetic f$2:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageDeleteUtils$PackageDeleteObserver;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/PackageDeleteUtils$PackageDeleteObserver;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "PackageDeleteUtils"

    const-string v1, "deletePackage ] deletePackage is fail."

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
