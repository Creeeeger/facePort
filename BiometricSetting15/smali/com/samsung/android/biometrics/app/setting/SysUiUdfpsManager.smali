.class public Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;
.super Lcom/samsung/android/biometrics/app/setting/SysUiManager;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;


# instance fields
.field public final mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

.field public mFodHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

.field public mHasPrepareRequest:Z

.field public final mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

.field public final mUdfpsIconNotifier:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

.field public mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/PowerServiceProviderImpl;Lcom/samsung/android/biometrics/app/setting/TaskStackObserver;Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;)V

    .line 2
    .line 3
    .line 4
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 5
    .line 6
    iput-object p7, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 7
    .line 8
    iput-object p8, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsIconNotifier:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public createClient(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->createClient(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    move-object p2, p1

    .line 10
    check-cast p2, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->setAodStatusMonitor(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->setUdfpsIconOptionMonitor(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of p2, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    move-object p2, p1

    .line 28
    check-cast p2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 29
    .line 30
    iget-object v0, p2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->canUseFingerprint()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 39
    .line 40
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->isUCMKeyguardEnabled(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p2, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 49
    .line 50
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMUtils;->isSupportBiometricForUCM(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    :cond_1
    const-string v0, "BSS_SysUiManager"

    .line 59
    .line 60
    const-string v1, "createClient: setUdfpsForBpClient "

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->setUdfpsForBpClient(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    return-object p1
.end method

.method public final createClientFactory()Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;
    .locals 10

    .line 1
    new-instance v9, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 8
    .line 9
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V

    .line 13
    .line 14
    .line 15
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {v5, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-direct {v6, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V

    .line 25
    .line 26
    .line 27
    new-instance v7, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    invoke-direct {v7, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsIconNotifier:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

    .line 34
    .line 35
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v8, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda4;

    .line 39
    .line 40
    invoke-direct {v8, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;)V

    .line 41
    .line 42
    .line 43
    move-object v0, v9

    .line 44
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda4;)V

    .line 45
    .line 46
    .line 47
    return-object v9
.end method

.method public destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mFodHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mBroadCastReceiverForTSP:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mBroadCastReceiverForTSP:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "unregisterBroadcastReceiver: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v3, "BSS_UdfpsFodHandler"

    .line 27
    .line 28
    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnableTimeoutTouchUp:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mMainHandler:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnablePrintTouchInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mFodConsumers:Ljava/util/List;

    .line 53
    .line 54
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->stop()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->removeCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->stop()V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->removeView()V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->destroy()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final handleBiometricTheme(ILjava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 5

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    const-string v1, "BSS_InDisplayCustom"

    .line 4
    .line 5
    const-string v2, ")"

    .line 6
    .line 7
    const-string v3, "null"

    .line 8
    .line 9
    const-string v4, ", "

    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "custom Touch Effect ("

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const-string p1, "user_fingerprint_touch_effect.json"

    .line 48
    .line 49
    const-string v0, "user_fingerprint_touch_effect.png"

    .line 50
    .line 51
    invoke-static {p0, p2, p3, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsUiCustom;->applyCustomResource(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/16 v0, 0x2711

    .line 56
    .line 57
    if-ne p1, v0, :cond_3

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v0, "custom Finger Icon ("

    .line 64
    .line 65
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    if-eqz p3, :cond_2

    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    const-string p1, "user_fingerprint_icon.json"

    .line 94
    .line 95
    const-string v0, "user_fingerprint_icon.png"

    .line 96
    .line 97
    invoke-static {p0, p2, p3, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsUiCustom;->applyCustomResource(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_0
    return-void
.end method

.method public handleCaptureCompleted(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 13
    .line 14
    iget-boolean p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mFodHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-wide/16 v0, 0x3e8

    .line 23
    .line 24
    iget-object v2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mMainHandler:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnableTimeoutTouchUp:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 32
    .line 33
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;->onCaptureComplete()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final handleCaptureStarted(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    instance-of v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;->onCaptureStart()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public handleOnClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleOnClientFinished(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    .line 2
    .line 3
    .line 4
    instance-of p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "BSS_DisplayStateManager"

    .line 19
    .line 20
    const-string v2, "onScreenUnknownFromKeyguard"

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iput v0, p1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplayStateFromKeyguard:I

    .line 26
    .line 27
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mFodHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsClientRunning:Z

    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnableTimeoutTouchUp:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mMainHandler:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final handleOnClientStarted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mFodHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsClientRunning:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public handleOnFodSingleTap()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    .line 2
    .line 3
    instance-of v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->handleSingleTapEvent()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public handleOnFodTouchDown()V
    .locals 0

    .line 1
    return-void
.end method

.method public handleOnFodTouchUp()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleShow(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleShow(Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public init()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->init()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->start()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->addCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->start()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 20
    .line 21
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v4, p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v5, p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-direct {v6, p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V

    .line 41
    .line 42
    .line 43
    move-object v1, v0

    .line 44
    move-object v2, v7

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda5;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mFodHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 49
    .line 50
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mBroadCastReceiverForTSP:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mBroadCastReceiverForTSP:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;

    .line 61
    .line 62
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 68
    .line 69
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mBroadCastReceiverForTSP:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;

    .line 73
    .line 74
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 75
    .line 76
    const-string v5, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    .line 77
    .line 78
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    sget-object v6, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 86
    .line 87
    move-object v1, v7

    .line 88
    move-object v3, v8

    .line 89
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    new-instance v4, Landroid/content/IntentFilter;

    .line 93
    .line 94
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 98
    .line 99
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mBroadCastReceiverForTSP:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$1;

    .line 103
    .line 104
    const-string v5, "com.samsung.android.permission.BROADCAST_QUICKACCESS"

    .line 105
    .line 106
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    sget-object v6, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 114
    .line 115
    move-object v1, v7

    .line 116
    move-object v3, v8

    .line 117
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "registerBroadcastReceiver: "

    .line 125
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v2, "BSS_UdfpsFodHandler"

    .line 130
    .line 131
    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mFodHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 135
    .line 136
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mFodConsumers:Ljava/util/List;

    .line 142
    .line 143
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 149
    .line 150
    if-nez v0, :cond_1

    .line 151
    .line 152
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 155
    .line 156
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 157
    .line 158
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 159
    .line 160
    const/4 v4, 0x0

    .line 161
    invoke-direct {v3, v0, v4, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V

    .line 162
    .line 163
    .line 164
    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 165
    .line 166
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    const v1, 0x7f0d0047

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/widget/FrameLayout;

    .line 178
    .line 179
    invoke-virtual {v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initLayout(Landroid/widget/FrameLayout;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 183
    .line 184
    const/4 v1, 0x4

    .line 185
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->addView()V

    .line 191
    .line 192
    .line 193
    :cond_1
    return-void
.end method

.method public final onAodStart()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 4
    .line 5
    const/16 v1, 0x3e9

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateChanged(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final onAodStop()V
    .locals 0

    .line 1
    return-void
.end method

.method public setUdfpsForBpClient(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V
    .locals 10

    .line 1
    new-instance v9, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$2;

    .line 6
    .line 7
    invoke-direct {v2, p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$2;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    move-object v0, v9

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthSensorWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsPrivilegedAuthClient$$ExternalSyntheticLambda0;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 23
    .line 24
    invoke-virtual {v9, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initFromBaseWindow(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;)V

    .line 25
    .line 26
    .line 27
    iput-object v9, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mUdfpsAuthSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 30
    .line 31
    iput-object p0, p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 32
    .line 33
    return-void
.end method
