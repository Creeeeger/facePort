.class public Lcom/android/settings/Settings$SoftwareUpdateSettingLaunchActivity;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftwareUpdateSettingLaunchActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 857
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 863
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 865
    :try_start_0
    new-instance p1, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->launch()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SoftwareUpdateSettingLaunchActivity"

    const-string v1, "failed to launch"

    .line 867
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
