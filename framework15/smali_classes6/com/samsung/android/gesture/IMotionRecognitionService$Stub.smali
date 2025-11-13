.class public abstract Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IMotionRecognitionService.java"

# interfaces
.implements Lcom/samsung/android/gesture/IMotionRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/IMotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_enableSARDevice:I = 0xf

.field static final blacklist TRANSACTION_getEvLuxTableInfo:I = 0xb

.field static final blacklist TRANSACTION_getEvToLux:I = 0xa

.field static final blacklist TRANSACTION_getPickUpMotionStatus:I = 0x3

.field static final blacklist TRANSACTION_getSSPstatus:I = 0x2

.field static final blacklist TRANSACTION_isAvailable:I = 0x9

.field static final blacklist TRANSACTION_registerCallback:I = 0x1

.field static final blacklist TRANSACTION_resetMotionEngine:I = 0x8

.field static final blacklist TRANSACTION_setMotionAngle:I = 0x6

.field static final blacklist TRANSACTION_setMotionTiltLevel:I = 0x7

.field static final blacklist TRANSACTION_setTestSensor:I = 0xc

.field static final blacklist TRANSACTION_startAdaptiveBrightness:I = 0xd

.field static final blacklist TRANSACTION_stopAdaptiveBrightness:I = 0xe

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x4

.field static final blacklist TRANSACTION_useMotionAlways:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.gesture.IMotionRecognitionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/gesture/IMotionRecognitionService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "enableSARDevice"

    return-object v0

    :pswitch_1
    const-string v0, "stopAdaptiveBrightness"

    return-object v0

    :pswitch_2
    const-string v0, "startAdaptiveBrightness"

    return-object v0

    :pswitch_3
    const-string v0, "setTestSensor"

    return-object v0

    :pswitch_4
    const-string v0, "getEvLuxTableInfo"

    return-object v0

    :pswitch_5
    const-string v0, "getEvToLux"

    return-object v0

    :pswitch_6
    const-string v0, "isAvailable"

    return-object v0

    :pswitch_7
    const-string v0, "resetMotionEngine"

    return-object v0

    :pswitch_8
    const-string v0, "setMotionTiltLevel"

    return-object v0

    :pswitch_9
    const-string v0, "setMotionAngle"

    return-object v0

    :pswitch_a
    const-string v0, "useMotionAlways"

    return-object v0

    :pswitch_b
    const-string v0, "unregisterCallback"

    return-object v0

    :pswitch_c
    const-string v0, "getPickUpMotionStatus"

    return-object v0

    :pswitch_d
    const-string v0, "getSSPstatus"

    return-object v0

    :pswitch_e
    const-string v0, "registerCallback"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0xe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.gesture.IMotionRecognitionService"

    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v8, v0, :cond_1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v13

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->enableSARDevice(ZJII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->stopAdaptiveBrightness()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->startAdaptiveBrightness()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setTestSensor()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getEvToLux([F)[F

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->isAvailable(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->resetMotionEngine()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setMotionTiltLevel(IIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->setMotionAngle(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->useMotionAlways(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->unregisterCallback(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getPickUpMotionStatus()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->getSSPstatus()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->registerCallback(Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    nop

    :goto_1
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
