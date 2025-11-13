.class public final Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->-$$Nest$fputmPackageInstallerSessionId(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PackageInstallerCallback: result ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], message ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], packageName ["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TopLevelRemoteSupportPreferenceController"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq v0, p2, :cond_1

    if-eqz v0, :cond_0

    const-string p2, " INSTALL failed."

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, " INSTALL STATUS_SUCCESS"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->-$$Nest$mlaunchRemoteSupportPackage(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V

    goto :goto_0

    :cond_1
    const-string p2, "STATUS_PENDING_USER_ACTION - no reaction"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, " Something wrong at unregisterReceiver"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
