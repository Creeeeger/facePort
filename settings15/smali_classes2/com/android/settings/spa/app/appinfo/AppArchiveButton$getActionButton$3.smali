.class final Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$3;
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

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppArchiveButton;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppArchiveButton;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$3;->this$0:Lcom/android/settings/spa/app/appinfo/AppArchiveButton;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$3;->$app:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$3;->this$0:Lcom/android/settings/spa/app/appinfo/AppArchiveButton;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton$getActionButton$3;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.archive.action"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->context:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->userHandle:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v2, v4, v1, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->packageInstaller:Landroid/content/pm/PackageInstaller;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageInstaller;->requestArchive(Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "AppArchiveButton"

    const-string v2, "Request archive failed"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lcom/android/settings/spa/app/appinfo/AppArchiveButton;->context:Landroid/content/Context;

    const v0, 0x7f1403dc

    invoke-static {p0, v0, p0, v4}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
