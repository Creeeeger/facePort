.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $it:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$1$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$1$1;->$it:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$1$1;->$context:Landroid/content/Context;

    const-string v1, "$context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$1$1;->$it:Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getPackageName(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.archive.action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x2000000

    invoke-static {v0, v4, v2, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageInstaller;->requestArchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requestArchiveApp() ] NameNotFoundException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ArchiveManager"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
