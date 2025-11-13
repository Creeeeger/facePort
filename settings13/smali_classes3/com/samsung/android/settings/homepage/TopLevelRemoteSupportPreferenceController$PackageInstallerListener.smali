.class Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "TopLevelRemoteSupportPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;-><init>(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->-$$Nest$fputmPackageInstallerSessionId(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;I)V

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v2, 0x1

    .line 197
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    .line 198
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.pm.extra.PACKAGE_NAME"

    .line 199
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageInstallerCallback: result ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], message ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], packageName ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "TopLevelRemoteSupportPreferenceController"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string p2, " INSTALL failed."

    .line 217
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, " INSTALL STATUS_SUCCESS"

    .line 212
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p2, p0, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController$PackageInstallerListener;->this$0:Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;->-$$Nest$mlaunchRemoteSupportPackage(Lcom/samsung/android/settings/homepage/TopLevelRemoteSupportPreferenceController;)V

    goto :goto_0

    :cond_1
    const-string p2, "STATUS_PENDING_USER_ACTION - no reaction"

    .line 206
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, " Something wrong at unregisterReceiver"

    .line 223
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
