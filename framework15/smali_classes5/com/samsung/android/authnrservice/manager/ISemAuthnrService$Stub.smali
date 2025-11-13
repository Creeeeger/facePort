.class public abstract Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;
.super Landroid/os/Binder;
.source "ISemAuthnrService.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_deleteFile:I = 0xb

.field static final blacklist TRANSACTION_getDrkKeyHandle:I = 0x9

.field static final blacklist TRANSACTION_getFiles:I = 0xc

.field static final blacklist TRANSACTION_getMatchedFilePaths:I = 0x11

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_getWrappedObject:I = 0x6

.field static final blacklist TRANSACTION_initialize:I = 0x2

.field static final blacklist TRANSACTION_initializeDrk:I = 0x7

.field static final blacklist TRANSACTION_initializePreloadedTa:I = 0x12

.field static final blacklist TRANSACTION_initializeWithPreloadedTa:I = 0xd

.field static final blacklist TRANSACTION_process:I = 0x4

.field static final blacklist TRANSACTION_processPreloadedTa:I = 0x14

.field static final blacklist TRANSACTION_processWithPreloadedTa:I = 0xf

.field static final blacklist TRANSACTION_readFile:I = 0x10

.field static final blacklist TRANSACTION_setChallenge:I = 0x5

.field static final blacklist TRANSACTION_terminate:I = 0x3

.field static final blacklist TRANSACTION_terminateDrk:I = 0x8

.field static final blacklist TRANSACTION_terminatePreloadedTa:I = 0x13

.field static final blacklist TRANSACTION_terminateWithPreloadedTa:I = 0xe

.field static final blacklist TRANSACTION_writeFile:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "processPreloadedTa"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "terminatePreloadedTa"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "initializePreloadedTa"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "getMatchedFilePaths"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "readFile"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "processWithPreloadedTa"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "terminateWithPreloadedTa"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "initializeWithPreloadedTa"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "getFiles"

    return-object v0

    :pswitch_9
    const-string v0, "deleteFile"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "writeFile"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "getDrkKeyHandle"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "terminateDrk"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "initializeDrk"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "getWrappedObject"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setChallenge"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "process"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "terminate"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "initialize"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "getVersion"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.authnrservice.manager.ISemAuthnrService"

    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v7, v0, :cond_1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->processPreloadedTa(I[B)[B

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminatePreloadedTa(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializePreloadedTa(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->processWithPreloadedTa([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminateWithPreloadedTa()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializeWithPreloadedTa()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->writeFile([BLjava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getDrkKeyHandle()[B

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminateDrk()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initializeDrk()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getWrappedObject([B)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->setChallenge([B)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->process([B)[B

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->terminate()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_12
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->initialize(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;->getVersion()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x1
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
