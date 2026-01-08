.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static mIsKeyguard:Z


# instance fields
.field mBroadCastReceiver:Landroid/content/BroadcastReceiver;


# virtual methods
.method public final addView()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->addView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 22
    .line 23
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "com.samsung.systemui.statusbar.EXPANDED"

    .line 27
    .line 28
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "com.sec.android.intent.action.AIR_BUTTON"

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    .line 47
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 50
    .line 51
    const/4 v7, 0x2

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v1, "registerBroadcastReceiver: "

    .line 60
    .line 61
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "BSS_UdfpsAuthSensorWindow"

    .line 65
    .line 66
    invoke-static {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-void
.end method

.method public removeView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->removeView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "unregisterBroadcastReceiver: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "BSS_UdfpsAuthSensorWindow"

    .line 26
    .line 27
    invoke-static {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method
