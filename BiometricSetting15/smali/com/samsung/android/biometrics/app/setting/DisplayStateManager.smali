.class public final Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field static final AOD_DEFAULT_HIGH_BRIGHTNESS_NIT:I = 0x3c

.field static final AOD_DEFAULT_LOW_BRIGHTNESS_NIT:I = 0x2

.field static final RESOURCES_NAME_AOD_BRIGHTNESS_VALUES:Ljava/lang/String; = "config_aodBrightnessValues"


# instance fields
.field public final mAodBrightnessValues:[I

.field public final mBgHandler:Landroid/os/Handler;

.field final mBioSysUiDisplayStateCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

.field public final mCallbacks:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayState:I

.field public mCurrentRotation:I

.field public mCurrentStateLogical:I

.field public final mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mDisplayStateFromKeyguard:I

.field public final mDozeRequesters:Ljava/util/Set;

.field mFileObserve:Landroid/os/FileObserver;

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmListeners:Ljava/util/List;

.field public final mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

.field public final mIsLimitedDisplayInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mIsOpticalUdfps:Z

.field public final mLimitDisplayCallbacks:Ljava/util/List;

.field public mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mRunnableReleaseRefreshRate:Ljava/lang/Runnable;

.field public final mTokenForPassiveMode:Landroid/os/IBinder;

.field public final mTokenForRefreshRate:Landroid/os/IBinder;

.field public final mVirtualHbmNode:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    invoke-direct {v2, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Looper;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Looper;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplayStateFromKeyguard:I

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsLimitedDisplayInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mTokenForPassiveMode:Landroid/os/IBinder;

    .line 6
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mTokenForRefreshRate:Landroid/os/IBinder;

    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mVirtualHbmNode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$1;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBioSysUiDisplayStateCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 9
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHandler:Landroid/os/Handler;

    .line 11
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 12
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 13
    invoke-virtual {p4}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p1

    .line 14
    const-string p2, "BSS_DisplayStateManager"

    if-eqz p1, :cond_1

    .line 15
    :try_start_0
    iget-object p3, p4, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 18
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalType()Z

    move-result p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    const-string p3, "failed to get sensor prop"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move p1, v0

    .line 20
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsOpticalUdfps:Z

    .line 21
    iget-object p1, p4, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    move-result p1

    .line 22
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCallbacks:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mLimitDisplayCallbacks:Ljava/util/List;

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 26
    new-instance p1, Landroid/util/ArraySet;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDozeRequesters:Ljava/util/Set;

    .line 27
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mContext:Landroid/content/Context;

    const-class p4, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 28
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 29
    const-string p4, "config_aodBrightnessValues"

    const-string v1, "array"

    const-string v2, "android"

    invoke-virtual {p1, p4, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 30
    :try_start_1
    iget-object p4, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mAodBrightnessValues:[I

    .line 31
    array-length p1, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p4, "setAodBrightnessValues: "

    const-string v1, ","

    if-ge p1, p3, :cond_4

    .line 32
    :try_start_2
    const-string p1, "setAodBrightnessValues: not matched!"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mAodBrightnessValues:[I

    array-length v2, p3

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, p3, v0

    .line 36
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mAodBrightnessValues:[I

    goto :goto_3

    .line 39
    :cond_4
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mAodBrightnessValues:[I

    array-length p3, p0

    :goto_2
    if-ge v0, p3, :cond_5

    aget v2, p0, v0

    .line 42
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 43
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 44
    :catch_1
    const-string p0, "Fail to get service array"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x3e9

    .line 16
    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x3ea

    .line 20
    .line 21
    if-eq p0, v0, :cond_0

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string p0, "GOING_TO_ON"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    const-string p0, "GOING_TO_OFF"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    const-string p0, "DOZE_SUSPEND"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    const-string p0, "DOZE"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_4
    const-string p0, "ON"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_5
    const-string p0, "OFF"

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_6
    const-string p0, "UNKNOWN"

    .line 47
    .line 48
    return-object p0
.end method


# virtual methods
.method public handleDisplayStateChanged(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleDisplayStateChanged: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 9
    .line 10
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->stateToString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " -> "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->stateToString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "BSS_DisplayStateManager"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/16 v0, 0x3ea

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    if-ne p1, v0, :cond_0

    .line 42
    .line 43
    move p1, v1

    .line 44
    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 45
    .line 46
    if-ne v0, p1, :cond_1

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 50
    .line 51
    if-ne p1, v1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDozeRequesters:Ljava/util/Set;

    .line 54
    .line 55
    check-cast p1, Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCallbacks:Ljava/util/List;

    .line 61
    .line 62
    check-cast p1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 79
    .line 80
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->onDisplayStateChanged(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 91
    .line 92
    if-ne p1, v1, :cond_4

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    const-wide/16 v0, 0x1f4

    .line 96
    .line 97
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->setDisplayStateLimit(JZ)V

    .line 98
    .line 99
    .line 100
    :cond_4
    return-void
.end method

.method public final handleDisplayStateLimit(Z)V
    .locals 4

    .line 1
    const-string v0, "setDisplayStateLimit: -> "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    :try_start_0
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsLimitedDisplayInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_4

    .line 29
    :cond_1
    :try_start_1
    const-string v2, "BSS_DisplayStateManager"

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    const-string v3, "ON"

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string v3, "OFF"

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->requestDisplayLimitState(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mLimitDisplayCallbacks:Ljava/util/List;

    .line 51
    .line 52
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;

    .line 69
    .line 70
    invoke-interface {v2, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;->onLimitDisplayStateChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 82
    .line 83
    .line 84
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsLimitedDisplayInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 98
    .line 99
    .line 100
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsLimitedDisplayInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLogFormat(Landroid/os/Message;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "BSS_DisplayStateManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget p1, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateLimit(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->handleDisplayStateLimit(Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return v0
.end method

.method public final isEnabledHbm()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_LOCAL_HBM:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mVirtualHbmNode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 13
    .line 14
    const-string v0, "/sys/class/lcd/panel/actual_mask_brightness"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->readFile(Ljava/io/File;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    new-instance v1, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "HBM="

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "BSS_DisplayStateManager"

    .line 52
    .line 53
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x1

    .line 61
    if-gt v1, v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/16 v1, 0x30

    .line 68
    .line 69
    if-eq p0, v1, :cond_2

    .line 70
    .line 71
    :cond_1
    move v0, v2

    .line 72
    :cond_2
    return v0
.end method

.method public final isOnState()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    xor-int/2addr v0, p1

    .line 17
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCallbacks:Ljava/util/List;

    .line 23
    .line 24
    check-cast p0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->onRotationStateChanged(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final registerHbmListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "registerHbmListener: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BSS_DisplayStateManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 24
    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 34
    .line 35
    check-cast p0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final releaseRefreshRateForSeamlessMode()V
    .locals 3

    .line 1
    const-string v0, "BSS_DisplayStateManager"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isEnabledHbm()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRunnableReleaseRefreshRate:Ljava/lang/Runnable;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, "releasePassiveModeToken"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const-string v1, "releaseRefreshRateMinLimitToken"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 45
    .line 46
    invoke-interface {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    const-string p0, "Error : releaseRefreshRateForSeamlessMode"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public final setDisplayStateLimit(JZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-class v2, Landroid/os/PowerManager;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/os/PowerManager;

    .line 17
    .line 18
    const-string v2, "BSS_DisplayStateManager:P"

    .line 19
    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    .line 32
    const-wide/16 v1, 0x7d0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mIsLimitedDisplayInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-virtual {p0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {p3, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 62
    .line 63
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final turnOffDoze(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "turnOffDoze from "

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BSS_DisplayStateManager"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDozeRequesters:Ljava/util/Set;

    .line 20
    .line 21
    check-cast v0, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDozeRequesters:Ljava/util/Set;

    .line 27
    .line 28
    check-cast p1, Landroid/util/ArraySet;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x2

    .line 43
    const/4 v2, 0x0

    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final turnOnDoze(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "turnOnDoze from "

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "BSS_DisplayStateManager"

    .line 15
    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mDozeRequesters:Ljava/util/Set;

    .line 20
    .line 21
    check-cast v0, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->getIFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x2

    .line 33
    const/4 v2, 0x1

    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->semBioSysUiRequest(IIJLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public final updateDisplayState()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-class v0, Landroid/os/PowerManager;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/os/PowerManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/16 v0, 0x3e9

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 30
    .line 31
    :cond_0
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "DisplayStateManager#updateDisplayState: state="

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentDisplayState:I

    .line 43
    .line 44
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->stateToString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v0, "BSS_DisplayStateManager"

    .line 56
    .line 57
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method
