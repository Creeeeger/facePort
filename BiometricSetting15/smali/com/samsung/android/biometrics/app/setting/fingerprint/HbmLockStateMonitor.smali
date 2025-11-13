.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field static final ACTION_FINGERPRINT_TUI:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_TUI"


# instance fields
.field final INVISIBLE_LOCK_TOP_TASK_CAMERA:I

.field final INVISIBLE_LOCK_TUI:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mH:Landroid/os/Handler;

.field public mHbmLockState:I

.field public final mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;

.field public final mIsAlphaMaskSaMode:Ljava/util/function/BooleanSupplier;

.field public final mIsScreenOn:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Callback;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->INVISIBLE_LOCK_TUI:I

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->INVISIBLE_LOCK_TOP_TASK_CAMERA:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mH:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Callback;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 20
    .line 21
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mIsAlphaMaskSaMode:Ljava/util/function/BooleanSupplier;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mIsScreenOn:Ljava/util/function/BooleanSupplier;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getHbmLockStateForTest()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 2
    .line 3
    return p0
.end method

.method public final observe(Z)V
    .locals 9

    .line 1
    const-string v0, "observe: "

    .line 2
    .line 3
    const-string v1, "BSS_HbmLockStateMonitor"

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$1;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string p1, "com.samsung.android.intent.action.FINGERPRINT_TUI"

    .line 25
    .line 26
    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 34
    .line 35
    const-string v6, "android.permission.MANAGE_FINGERPRINT"

    .line 36
    .line 37
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mH:Landroid/os/Handler;

    .line 38
    .line 39
    const/4 v8, 0x2

    .line 40
    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_1
    move-exception p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method public setHbmLockState(ZI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setHbmLockState: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "BSS_HbmLockStateMonitor"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Callback;

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->onHbmLockState(Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 51
    .line 52
    or-int/2addr p1, p2

    .line 53
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    not-int p2, p2

    .line 61
    and-int/2addr p1, p2

    .line 62
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 63
    .line 64
    if-nez p1, :cond_2

    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->onHbmLockState(Z)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    return-void
.end method
