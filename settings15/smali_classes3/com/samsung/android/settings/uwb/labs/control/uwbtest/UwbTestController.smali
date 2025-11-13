.class public final Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mConfiguration:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

.field public final mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v2, Landroid/uwb/UwbManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/uwb/UwbManager;

    new-instance v2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x1

    new-array v5, v0, [B

    fill-array-data v5, :array_1

    const/16 v6, 0x457

    iput v6, v2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mSessionId:I

    const-string v6, "UwbTestConfiguration"

    const-string v7, "UwbTest_Configuration created by default initiator config"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v3

    new-instance v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    invoke-direct {v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceType:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v9, v8}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceRole:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v9, v8}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v8, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mMultiNodeMode:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v8, v4}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iput-object v3, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDeviceAddress:Landroid/uwb/UwbAddress;

    iput-object v7, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mDestAddressList:Ljava/util/List;

    iput v1, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStsConfig:I

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mVendorId:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    iput-object v0, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mStaticStsIV:[B

    iget v0, v2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mSessionId:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v3, v0}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    iget-object v0, v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->mProtocolVersion:Lcom/google/uwb/support/base/RequiredParam;

    invoke-virtual {v0, v6}, Lcom/google/uwb/support/base/RequiredParam;->set(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;->mFiraOpenSessionParams:Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    iput-object v2, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mConfiguration:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Configurations;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mUwbManager:Landroid/uwb/UwbManager;

    new-instance p1, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;-><init>(Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;)V

    iput-object p1, v0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingCallback:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging$1;

    iput-object v0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    return-void

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
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final startRanging()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/UwbTestController;->mRanging:Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;

    iget v0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/control/uwbtest/Ranging;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/uwb/RangingSession;->start(Landroid/os/PersistableBundle;)V

    :cond_1
    return-void
.end method
