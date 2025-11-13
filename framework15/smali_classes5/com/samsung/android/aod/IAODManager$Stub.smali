.class public abstract Lcom/samsung/android/aod/IAODManager$Stub;
.super Landroid/os/Binder;
.source "IAODManager.java"

# interfaces
.implements Lcom/samsung/android/aod/IAODManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquireDoze:I = 0xe

.field static final blacklist TRANSACTION_addLogText:I = 0x5

.field static final blacklist TRANSACTION_getActiveImageInfo:I = 0x8

.field static final blacklist TRANSACTION_getAodActiveArea:I = 0x14

.field static final blacklist TRANSACTION_isAODState:I = 0x1

.field static final blacklist TRANSACTION_isSViewCoverBrightnessHigh:I = 0x11

.field static final blacklist TRANSACTION_readyToScreenTurningOn:I = 0x9

.field static final blacklist TRANSACTION_registerAODDozeCallback:I = 0xc

.field static final blacklist TRANSACTION_registerAODListener:I = 0xa

.field static final blacklist TRANSACTION_releaseDoze:I = 0xf

.field static final blacklist TRANSACTION_requestAODToast:I = 0x10

.field static final blacklist TRANSACTION_setGripData:I = 0x15

.field static final blacklist TRANSACTION_setLiveClockCommand:I = 0x13

.field static final blacklist TRANSACTION_setLiveClockImage:I = 0x12

.field static final blacklist TRANSACTION_setLiveClockInfo:I = 0x6

.field static final blacklist TRANSACTION_setLiveClockNeedle:I = 0x7

.field static final blacklist TRANSACTION_unregisterAODDozeCallback:I = 0xd

.field static final blacklist TRANSACTION_unregisterAODListener:I = 0xb

.field static final blacklist TRANSACTION_updateAODNotiTspRect:I = 0x3

.field static final blacklist TRANSACTION_updateAODTspRect:I = 0x2

.field static final blacklist TRANSACTION_writeAODCommand:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.aod.IAODManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.aod.IAODManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/aod/IAODManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/aod/IAODManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/IAODManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setGripData"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "getAodActiveArea"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "setLiveClockCommand"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setLiveClockImage"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "isSViewCoverBrightnessHigh"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "requestAODToast"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "releaseDoze"

    return-object v0

    :pswitch_7
    const-string v0, "acquireDoze"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "unregisterAODDozeCallback"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "registerAODDozeCallback"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "unregisterAODListener"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "registerAODListener"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "readyToScreenTurningOn"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "getActiveImageInfo"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "setLiveClockNeedle"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setLiveClockInfo"

    return-object v0

    :pswitch_10
    const-string v0, "addLogText"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "writeAODCommand"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "updateAODNotiTspRect"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "updateAODTspRect"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "isAODState"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/aod/IAODManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v13, "com.samsung.android.aod.IAODManager"

    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v1, 0xffffff

    if-gt v14, v1, :cond_0

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v1, 0x5f4e5446

    if-ne v14, v1, :cond_1

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    packed-switch v14, :pswitch_data_0

    move-object v7, v0

    move-object v6, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->setGripData(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->getAodActiveArea(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockCommand(III[I)I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockImage(II[BLjava/lang/String;)I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->isSViewCoverBrightnessHigh()Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/aod/AODToast;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/aod/AODToast;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/aod/IAODManager$Stub;->requestAODToast(Ljava/lang/String;Lcom/samsung/android/aod/AODToast;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->releaseDoze(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/aod/IAODManager$Stub;->acquireDoze(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->unregisterAODDozeCallback(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->registerAODDozeCallback(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->unregisterAODListener(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->registerAODListener(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->readyToScreenTurningOn()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->getActiveImageInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockNeedle([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v1, v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    move-wide/from16 v2, v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    move-wide/from16 v4, v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    move-wide/from16 v6, v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    move-wide/from16 v8, v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v27

    move/from16 v29, v10

    move-wide/from16 v10, v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-object/from16 v32, v13

    move-wide/from16 v12, v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    move-wide/from16 v14, v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    move-wide/from16 v16, v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v17}, Lcom/samsung/android/aod/IAODManager$Stub;->setLiveClockInfo(IJJJJJJJJ)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v6, p3

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v7, p0

    goto/16 :goto_0

    :pswitch_10
    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v7, p0

    invoke-virtual {v7, v0}, Lcom/samsung/android/aod/IAODManager$Stub;->addLogText(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager$Stub;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager$Stub;->updateAODNotiTspRect(IIIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_13
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager$Stub;->updateAODTspRect(IIIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_14
    move-object v7, v0

    move/from16 v29, v10

    move-object v6, v12

    move-object/from16 v32, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/aod/IAODManager$Stub;->isAODState()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v29

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
