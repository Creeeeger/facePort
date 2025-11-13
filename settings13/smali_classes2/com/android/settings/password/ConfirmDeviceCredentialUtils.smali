.class public Lcom/android/settings/password/ConfirmDeviceCredentialUtils;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ConfirmDeviceCredentialUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static checkForPendingIntent(Landroid/app/Activity;)V
    .locals 8

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TASK_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 55
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 56
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 62
    :cond_0
    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 75
    :cond_2
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->TAG:Ljava/lang/String;

    const-string v2, "Invalid taskId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :catch_1
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/IntentSender;

    if-eqz v2, :cond_4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 88
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    :cond_4
    return-void
.end method

.method public static reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 98
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p2, p3}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V

    .line 102
    :goto_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_1
    return-void
.end method
