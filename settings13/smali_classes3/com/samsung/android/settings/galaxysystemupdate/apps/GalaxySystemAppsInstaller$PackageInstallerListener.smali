.class Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "GalaxySystemAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallerListener"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 383
    iput-object p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    .line 389
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "intent is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.content.pm.action.SESSION_UPDATED"

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p1, "android.content.pm.extra.SESSION"

    .line 395
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 396
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " package : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " session id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " install success"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$mnotifyResult(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Z)V

    .line 398
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    invoke-static {p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$fgetcontext(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    const-string p0, "android.content.pm.extra.LEGACY_STATUS"

    .line 400
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 401
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    .line 402
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 404
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : result ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], message ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "], packageName ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
