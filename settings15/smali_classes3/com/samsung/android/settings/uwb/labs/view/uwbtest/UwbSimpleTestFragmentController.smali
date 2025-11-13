.class public Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CLOSE:I = -0x1

.field public static final INIT:I = 0x1

.field public static final START:I = 0x2

.field public static final STOP:I = 0x3

.field public static final STOPFAIL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UwbSimpleTestController"

.field static mState:I

.field private static mUwbDataReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

.field static mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;


# instance fields
.field private mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

.field private mContext:Landroid/content/Context;

.field private mUwbRanging:Landroid/uwb/RangingSession;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmUwbDataReceiver()Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbDataReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbRanging:Landroid/uwb/RangingSession;

    const-string v0, "CREATE: UwbSimpleTestFragmentController "

    const-string v1, "UwbSimpleTestController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Key = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mContext:Landroid/content/Context;

    const/4 p2, -0x1

    sput p2, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mState:I

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    new-instance p1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    iget-object p0, p2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$Callback;

    return-void
.end method

.method public static setOnUwbReceiver(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbDataReceiver:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbDataReceiver;

    return-void
.end method

.method public static start(Z)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "START button is clicked, myAddress: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    xor-int/lit8 v4, p0, 0x1

    const-string v5, "UwbSimpleTestController"

    invoke-static {v3, v4, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    sget v3, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    sget-object p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->startRanging()V

    goto/16 :goto_2

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    new-array p0, v1, [B

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object p0

    new-array v4, v1, [B

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v0

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_1
    new-array p0, v1, [B

    fill-array-data p0, :array_2

    invoke-static {p0}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object p0

    new-array v4, v1, [B

    fill-array-data v4, :array_3

    invoke-static {v4}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    goto :goto_0

    :goto_1
    new-instance v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    invoke-direct {v6}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v7, v4}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v5, v4}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v5, v4}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iput-object p0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    iput-object v3, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    iput v2, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    new-array p0, v1, [B

    fill-array-data p0, :array_4

    iput-object p0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    const/4 p0, 0x6

    new-array p0, p0, [B

    fill-array-data p0, :array_5

    iput-object p0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    const/16 p0, 0x9

    iput p0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mChannelNumber:I

    iput p0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mPreambleCodeIndex:I

    iput-boolean v0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mIsTxAdaptivePayloadPowerEnabled:Z

    const/16 p0, 0x19

    iput p0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSlotsPerRangingRound:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v1, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, p0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    const/16 p0, 0x64

    iput p0, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mRangingIntervalMs:I

    sget-object p0, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    iget-object v1, v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v1, p0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object v2, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mConfiguration:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

    iput v0, v2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mSessionId:I

    iput-object p0, v2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iget-object v0, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mConfiguration:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    invoke-virtual {v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget-object v2, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object v1, v1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;

    invoke-virtual {v2, v0, p0, v1}, Landroid/uwb/UwbManager;->openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;)Landroid/os/CancellationSignal;

    :goto_2
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static stop()V
    .locals 2

    const-string v0, "UwbSimpleTestController"

    const-string v1, "STOP button is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragmentController;->mUwbTestController:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget-object v0, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/uwb/RangingSession;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const-string p0, "UwbSimpleTestController"

    const-string v0, "getAvailabilityStatus"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
