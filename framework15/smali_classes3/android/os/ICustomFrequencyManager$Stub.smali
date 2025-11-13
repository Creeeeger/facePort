.class public abstract Landroid/os/ICustomFrequencyManager$Stub;
.super Landroid/os/Binder;
.source "ICustomFrequencyManager.java"

# interfaces
.implements Landroid/os/ICustomFrequencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICustomFrequencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquire:I = 0x65

.field static final blacklist TRANSACTION_addDvfsLockAllowedUid:I = 0x54

.field static final blacklist TRANSACTION_checkHintExist:I = 0x68

.field static final blacklist TRANSACTION_checkResourceExist:I = 0x69

.field static final blacklist TRANSACTION_checkSysfsIdExist:I = 0x6c

.field static final blacklist TRANSACTION_disableGpisHint:I = 0x6e

.field static final blacklist TRANSACTION_enableInteractionHint:I = 0x70

.field static final blacklist TRANSACTION_getBatteryRemainingUsageTime:I = 0x40

.field static final blacklist TRANSACTION_getGameThrottlingLevel:I = 0x4b

.field static final blacklist TRANSACTION_getPreloadList:I = 0x71

.field static final blacklist TRANSACTION_getProcessCpuUsage:I = 0x52

.field static final blacklist TRANSACTION_getSsrmStatus:I = 0x32

.field static final blacklist TRANSACTION_getSupportedFrequency:I = 0x67

.field static final blacklist TRANSACTION_isGameByGraphic:I = 0x73

.field static final blacklist TRANSACTION_mpdUpdate:I = 0xf

.field static final blacklist TRANSACTION_readFile:I = 0x53

.field static final blacklist TRANSACTION_readSysfs:I = 0x6b

.field static final blacklist TRANSACTION_release:I = 0x66

.field static final blacklist TRANSACTION_removeDvfsLockAllowedUid:I = 0x55

.field static final blacklist TRANSACTION_requestCPUUpdate:I = 0xe

.field static final blacklist TRANSACTION_requestFreezeSlowdown:I = 0x58

.field static final blacklist TRANSACTION_requestGpis:I = 0x5c

.field static final blacklist TRANSACTION_requestMpParameterUpdate:I = 0xd

.field static final blacklist TRANSACTION_restrictApp:I = 0x6d

.field static final blacklist TRANSACTION_sendCommandToSSRM:I = 0x30

.field static final blacklist TRANSACTION_sendDrawingTid:I = 0x57

.field static final blacklist TRANSACTION_sendTid:I = 0x72

.field static final blacklist TRANSACTION_setFrozenTime:I = 0x59

.field static final blacklist TRANSACTION_setGameFps:I = 0x4a

.field static final blacklist TRANSACTION_setGamePowerSaving:I = 0x49

.field static final blacklist TRANSACTION_setGameTouchParam:I = 0x4d

.field static final blacklist TRANSACTION_setGameTurboMode:I = 0x4c

.field static final blacklist TRANSACTION_setGpisHint:I = 0x6f

.field static final blacklist TRANSACTION_supportVRTemperaturesInformation:I = 0x33

.field static final blacklist TRANSACTION_unsetGameTouchParam:I = 0x4e

.field static final blacklist TRANSACTION_writeSysfs:I = 0x6a


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICustomFrequencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.ICustomFrequencyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/ICustomFrequencyManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/ICustomFrequencyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ICustomFrequencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "isGameByGraphic"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "sendTid"

    return-object v0

    :sswitch_2
    const-string v0, "getPreloadList"

    return-object v0

    :sswitch_3
    const-string v0, "enableInteractionHint"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "setGpisHint"

    return-object v0

    :sswitch_5
    const-string v0, "disableGpisHint"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "restrictApp"

    return-object v0

    :sswitch_7
    const-string v0, "checkSysfsIdExist"

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "readSysfs"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "writeSysfs"

    return-object v0

    :sswitch_a
    const-string v0, "checkResourceExist"

    return-object v0

    :sswitch_b
    const-string v0, "checkHintExist"

    return-object v0

    :sswitch_c
    const-string v0, "getSupportedFrequency"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "release"

    return-object v0

    :sswitch_e
    const-string v0, "acquire"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "requestGpis"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "setFrozenTime"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "requestFreezeSlowdown"

    return-object v0

    :sswitch_12
    const-string/jumbo v0, "sendDrawingTid"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "removeDvfsLockAllowedUid"

    return-object v0

    :sswitch_14
    const-string v0, "addDvfsLockAllowedUid"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "readFile"

    return-object v0

    :sswitch_16
    const-string v0, "getProcessCpuUsage"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "unsetGameTouchParam"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "setGameTouchParam"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "setGameTurboMode"

    return-object v0

    :sswitch_1a
    const-string v0, "getGameThrottlingLevel"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "setGameFps"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "setGamePowerSaving"

    return-object v0

    :sswitch_1d
    const-string v0, "getBatteryRemainingUsageTime"

    return-object v0

    :sswitch_1e
    const-string/jumbo v0, "supportVRTemperaturesInformation"

    return-object v0

    :sswitch_1f
    const-string v0, "getSsrmStatus"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "sendCommandToSSRM"

    return-object v0

    :sswitch_21
    const-string/jumbo v0, "mpdUpdate"

    return-object v0

    :sswitch_22
    const-string/jumbo v0, "requestCPUUpdate"

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "requestMpParameterUpdate"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_23
        0xe -> :sswitch_22
        0xf -> :sswitch_21
        0x30 -> :sswitch_20
        0x32 -> :sswitch_1f
        0x33 -> :sswitch_1e
        0x40 -> :sswitch_1d
        0x49 -> :sswitch_1c
        0x4a -> :sswitch_1b
        0x4b -> :sswitch_1a
        0x4c -> :sswitch_19
        0x4d -> :sswitch_18
        0x4e -> :sswitch_17
        0x52 -> :sswitch_16
        0x53 -> :sswitch_15
        0x54 -> :sswitch_14
        0x55 -> :sswitch_13
        0x57 -> :sswitch_12
        0x58 -> :sswitch_11
        0x59 -> :sswitch_10
        0x5c -> :sswitch_f
        0x65 -> :sswitch_e
        0x66 -> :sswitch_d
        0x67 -> :sswitch_c
        0x68 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6a -> :sswitch_9
        0x6b -> :sswitch_8
        0x6c -> :sswitch_7
        0x6d -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_4
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x72

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/os/ICustomFrequencyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "android.os.ICustomFrequencyManager"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v7, v0, :cond_1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    sparse-switch v7, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->isGameByGraphic(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->sendTid(III)V

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->getPreloadList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->enableInteractionHint(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGpisHint(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->disableGpisHint()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->restrictApp(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkSysfsIdExist(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->readSysfs(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->writeSysfs(ILjava/lang/String;)V

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkResourceExist(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->checkHintExist(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->getSupportedFrequency(II)[I

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->release(II)V

    goto/16 :goto_1

    :sswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/ICustomFrequencyManager$Stub;->acquire(IILjava/lang/String;I[I)V

    goto/16 :goto_1

    :sswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestGpis(III)V

    goto/16 :goto_1

    :sswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setFrozenTime(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->sendDrawingTid(III)V

    goto/16 :goto_1

    :sswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->removeDvfsLockAllowedUid(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->addDvfsLockAllowedUid(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :sswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getProcessCpuUsage([I)Landroid/os/CpuTrackerInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->unsetGameTouchParam()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTouchParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameTurboMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ICustomFrequencyManager$Stub;->getGameThrottlingLevel()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :sswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGameFps(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->setGamePowerSaving(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getBatteryRemainingUsageTime(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/ICustomFrequencyManager$Stub;->supportVRTemperaturesInformation(Ljava/lang/String;II)[F

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_1

    :sswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->getSsrmStatus(I)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->mpdUpdate(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :sswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/os/ICustomFrequencyManager$Stub;->requestCPUUpdate(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :sswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/os/ICustomFrequencyManager$Stub;->requestMpParameterUpdate(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_1
    return v10

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_23
        0xe -> :sswitch_22
        0xf -> :sswitch_21
        0x30 -> :sswitch_20
        0x32 -> :sswitch_1f
        0x33 -> :sswitch_1e
        0x40 -> :sswitch_1d
        0x49 -> :sswitch_1c
        0x4a -> :sswitch_1b
        0x4b -> :sswitch_1a
        0x4c -> :sswitch_19
        0x4d -> :sswitch_18
        0x4e -> :sswitch_17
        0x52 -> :sswitch_16
        0x53 -> :sswitch_15
        0x54 -> :sswitch_14
        0x55 -> :sswitch_13
        0x57 -> :sswitch_12
        0x58 -> :sswitch_11
        0x59 -> :sswitch_10
        0x5c -> :sswitch_f
        0x65 -> :sswitch_e
        0x66 -> :sswitch_d
        0x67 -> :sswitch_c
        0x68 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6a -> :sswitch_9
        0x6b -> :sswitch_8
        0x6c -> :sswitch_7
        0x6d -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_4
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method
