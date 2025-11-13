.class public Lcom/android/settings/Settings$SoftwareUpdateSettingLaunchActivity;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SoftwareUpdateSettingLaunchActivity"

    const-string v1, "failed to launch"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
