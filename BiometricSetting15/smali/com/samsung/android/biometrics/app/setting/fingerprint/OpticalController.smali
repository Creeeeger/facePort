.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Callback;
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;


# static fields
.field static final MAX_HBM_TIME_IN_SCREEN_OFF:I = 0x2710

.field static final MSG_DELIVERY_HBM_OFF_EVENT:I = 0x3

.field static final MSG_DELIVERY_TOUCH_DOWN_EVENT:I = 0x2

.field static final MSG_TURN_OFF_HBM:I = 0x1

.field static final TIME_DELAY_HBM_OFF:I = 0x12c

.field static final TOUCH_DELAY_TIME_DEFAULT:I = 0x22


# instance fields
.field public final mActionHandleTouchDown:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;

.field public final mActionTurnOnCalibrationLs:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

.field public final mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

.field public final mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field public final mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

.field protected final mH:Landroid/os/Handler;

.field public final mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

.field public final mHbmLockStateMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

.field public final mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

.field public final mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

.field public mIsDispatchedTouchDownEvent:Z

.field public mIsTouchDown:Z

.field protected mMaskClients:Landroid/util/SparseArray;

.field public mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

.field public final mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

.field public final mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionHandleTouchDown:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionTurnOnCalibrationLs:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance v0, Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 45
    .line 46
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 49
    .line 50
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 51
    .line 52
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 53
    .line 54
    iput-object p7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 55
    .line 56
    invoke-virtual {p0, p4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->createHbmProvider(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;)Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->createHbmLockStateMonitor()Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmLockStateMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->createHbmController()Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->createDisplayConstraintHandler()Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->createPowerServiceProvider()Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final addMaskClient(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mSessionId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mIsMaskSA:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmLockStateMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->setHbmLockState(ZI)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne p1, v1, :cond_6

    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_LOCAL_HBM:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iput-boolean v1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsStarted:Z

    .line 41
    .line 42
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 48
    .line 49
    invoke-direct {v2, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState$1;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;

    .line 59
    .line 60
    iput-object v2, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 61
    .line 62
    sget-object v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState$1;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;

    .line 69
    .line 70
    iput-object v2, v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 71
    .line 72
    sget-object v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState$1;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;

    .line 79
    .line 80
    iput-object v2, v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 81
    .line 82
    iget-object v2, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    invoke-virtual {v3}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    check-cast v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;

    .line 95
    .line 96
    iput-object v3, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v4}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;

    .line 104
    .line 105
    iput-object v3, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 106
    .line 107
    :goto_1
    iget-object v3, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->getTag()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const-string v4, "initState: "

    .line 114
    .line 115
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string v4, "BSS_HbmController"

    .line 120
    .line 121
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->registerHbmListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mBgHandler:Landroid/os/Handler;

    .line 128
    .line 129
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;

    .line 130
    .line 131
    const/4 v5, 0x0

    .line 132
    invoke-direct {v4, v2, p1, v5}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    .line 137
    .line 138
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DISPLAY_SEAMLESS_MODE:Z

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    const-string p1, "BSS_DisplayStateManager"

    .line 143
    .line 144
    const-string v3, "acquireRefreshRateMinLimitToken : "

    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    iput-object v4, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRunnableReleaseRefreshRate:Ljava/lang/Runnable;

    .line 148
    .line 149
    iget-object v4, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 150
    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string v4, "display"

    .line 155
    .line 156
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v4}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    if-eqz v4, :cond_5

    .line 165
    .line 166
    :try_start_0
    iget-object v5, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mInjector:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;

    .line 167
    .line 168
    iget-object v5, v5, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$Injector;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    const-string v6, "refresh_rate_mode"

    .line 171
    .line 172
    invoke-static {v5, v6, v1, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_4

    .line 177
    .line 178
    iget-object v0, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 179
    .line 180
    if-nez v0, :cond_3

    .line 181
    .line 182
    const-string v0, "acquirePassiveModeToken"

    .line 183
    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object v0, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mTokenForPassiveMode:Landroid/os/IBinder;

    .line 188
    .line 189
    invoke-interface {v4, v0, p1}, Landroid/hardware/display/IDisplayManager;->acquirePassiveModeToken(Landroid/os/IBinder;Ljava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iput-object v0, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mPassiveModeToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 194
    .line 195
    :cond_3
    const/16 v0, 0x3c

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    const/16 v0, 0x78

    .line 199
    .line 200
    :goto_2
    iget-object v1, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 201
    .line 202
    if-nez v1, :cond_5

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    iget-object v1, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mTokenForRefreshRate:Landroid/os/IBinder;

    .line 220
    .line 221
    invoke-interface {v4, v1, v0, p1}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, v2, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .line 227
    goto :goto_3

    .line 228
    :catch_0
    const-string v0, "Error : acquireRefreshRateForSeamlessMode"

    .line 229
    .line 230
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 234
    .line 235
    invoke-virtual {p1, p0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->registerHbmListener(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;)V

    .line 236
    .line 237
    .line 238
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_9

    .line 245
    .line 246
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_LOCAL_HBM:Z

    .line 247
    .line 248
    if-eqz p1, :cond_7

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOnHbm$1()V

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmLockStateMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 255
    .line 256
    if-eqz p1, :cond_9

    .line 257
    .line 258
    iget p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mHbmLockState:I

    .line 259
    .line 260
    if-eqz p1, :cond_8

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->disableAllFunctions()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOnHbm$1()V

    .line 269
    .line 270
    .line 271
    :cond_9
    :goto_4
    return-void
.end method

.method public createDisplayConstraintHandler()Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 6
    .line 7
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public createHbmController()Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public createHbmLockStateMonitor()Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;
    .locals 8

    .line 1
    new-instance v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v5, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v5, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;

    .line 25
    .line 26
    invoke-direct {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;-><init>()V

    .line 27
    .line 28
    .line 29
    move-object v0, v7

    .line 30
    move-object v3, p0

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Callback;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;)V

    .line 32
    .line 33
    .line 34
    return-object v7
.end method

.method public createHbmProvider(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;)Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsMaskWindow;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public createPowerServiceProvider()Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final deliverTouchEvent(I)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsDispatchedTouchDownEvent:Z

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ne p1, v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsDispatchedTouchDownEvent:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsDispatchedTouchDownEvent:Z

    .line 17
    .line 18
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 27
    .line 28
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->getCurrentAlpha()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    move-object v3, v0

    .line 33
    check-cast v3, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    if-ne p1, v1, :cond_3

    .line 39
    .line 40
    int-to-long v0, v2

    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    shl-long/2addr v0, v2

    .line 44
    int-to-long v4, p0

    .line 45
    or-long/2addr v0, v4

    .line 46
    :goto_1
    move-wide v6, v0

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    const-wide/16 v0, 0x0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :goto_2
    const/16 v4, 0x9

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    move v5, p1

    .line 55
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public handleDisplayStateChanged(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->handleDisplayStateChanged(I)V

    .line 29
    .line 30
    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 42
    .line 43
    const-wide/16 v3, 0x12c

    .line 44
    .line 45
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsStarted:Z

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/16 v0, 0x3e9

    .line 55
    .line 56
    if-eq p1, v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->disableAllFunctions()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
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
    const-string v1, "BSS_OpticalController"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget p1, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isEnabledHbm()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->isEnabledHbm()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->onHbmChanged(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsTouchDown:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->deliverTouchEvent(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOffHbm$1()V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return v0
.end method

.method public handleOnTaskStackChanged()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->hasAuthMaskClient()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmLockStateMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 9
    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mIsScreenOn:Ljava/util/function/BooleanSupplier;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 27
    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;->mPackageListWithNoMask:[Ljava/lang/String;

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    array-length v3, v1

    .line 37
    const/4 v4, 0x0

    .line 38
    move v5, v4

    .line 39
    :goto_0
    if-ge v5, v3, :cond_1

    .line 40
    .line 41
    aget-object v6, v1, v5

    .line 42
    .line 43
    new-instance v7, Landroid/util/Pair;

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    invoke-direct {v7, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    add-int/2addr v5, v0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->isForegroundTask(Ljava/util/List;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x4

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->mIsAlphaMaskSaMode:Ljava/util/function/BooleanSupplier;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->setHbmLockState(ZI)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->setHbmLockState(ZI)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    return-void
.end method

.method public final handleSingleTapEvent()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->hasAuthMaskClient()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsTouchDown:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->isPowerSaveMode()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 31
    .line 32
    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsDisabledInPsm:Z

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOnHbm$1()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final hasAuthMaskClient()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;

    .line 18
    .line 19
    iget-boolean v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mIsMaskSA:Z

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v0
.end method

.method public final hasMaskClient()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public isTablet()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onAodStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAodStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIconOptionMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 11
    .line 12
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->isEnabledOnAod()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOffHbm$1()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onHbmChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 10
    .line 11
    check-cast p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 34
    .line 35
    check-cast p0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final onHbmLockState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOffHbm$1()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->disableAllFunctions()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->turnOnHbm$1()V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final onTouchUp()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsTouchDown:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->deliverTouchEvent(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 23
    .line 24
    const/4 v2, 0x5

    .line 25
    const/4 v3, 0x0

    .line 26
    const-wide/16 v4, 0x0

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOffLightSource()V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mActionHandleTouchDown:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$$ExternalSyntheticLambda2;

    .line 41
    .line 42
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mIsTouchDown:Z

    .line 55
    .line 56
    return-void
.end method

.method public removeKeyguardMaskClientIfExist()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;

    .line 18
    .line 19
    iget-boolean v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mIsKeyguard:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget v0, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mSessionId:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeMaskClient(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final removeMaskClient(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->hasAuthMaskClient()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mFpProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 25
    .line 26
    const/4 v1, 0x5

    .line 27
    const/4 v2, 0x0

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOffLightSource()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mMaskClients:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    const-string p1, "BSS_OpticalController"

    .line 53
    .line 54
    const-string v0, "No client using mask"

    .line 55
    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->stop()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mHbmListeners:Ljava/util/List;

    .line 67
    .line 68
    check-cast p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->stop()V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->initHbmProvider()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmLockStateMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->observe(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->addCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->destroyHbmProvider()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmLockStateMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor;->observe(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->stop()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayConstraintHandler:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->stop()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPendingActionsWhenTurnedOnHbm:Ljava/util/List;

    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mAodStatusMonitor:Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->removeCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final turnOffHbm$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 10
    .line 11
    const-wide/16 v1, 0x2710

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->acquireWakeLock(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->getTag()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "turnOffHbm: current state is "

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "BSS_HbmController"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHasHbmRequest:Z

    .line 37
    .line 38
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->turnOffHbm()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 53
    .line 54
    const-wide/16 v2, 0x12c

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final turnOnHbm$1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 10
    .line 11
    const-wide/16 v1, 0x2af8

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;->acquireWakeLock(J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mHbmController:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->getTag()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "turnOnHbm: current state is "

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "BSS_HbmController"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHasHbmRequest:Z

    .line 37
    .line 38
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mState:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->turnOnHbm()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mH:Landroid/os/Handler;

    .line 63
    .line 64
    const-wide/16 v2, 0x2710

    .line 65
    .line 66
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
