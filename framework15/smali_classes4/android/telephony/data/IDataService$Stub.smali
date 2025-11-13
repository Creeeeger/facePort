.class public abstract Landroid/telephony/data/IDataService$Stub;
.super Landroid/os/Binder;
.source "IDataService.java"

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataService"

.field static final blacklist TRANSACTION_cancelHandover:I = 0xb

.field static final greylist-max-o TRANSACTION_createDataServiceProvider:I = 0x1

.field static final greylist-max-o TRANSACTION_deactivateDataCall:I = 0x4

.field static final greylist-max-o TRANSACTION_registerForDataCallListChanged:I = 0x8

.field static final blacklist TRANSACTION_registerForUnthrottleApn:I = 0xc

.field static final greylist-max-o TRANSACTION_removeDataServiceProvider:I = 0x2

.field static final blacklist TRANSACTION_requestDataCallList:I = 0x7

.field static final blacklist TRANSACTION_requestNetworkValidation:I = 0xe

.field static final greylist-max-o TRANSACTION_setDataProfile:I = 0x6

.field static final greylist-max-o TRANSACTION_setInitialAttachApn:I = 0x5

.field static final greylist-max-o TRANSACTION_setupDataCall:I = 0x3

.field static final blacklist TRANSACTION_startHandover:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterForDataCallListChanged:I = 0x9

.field static final blacklist TRANSACTION_unregisterForUnthrottleApn:I = 0xd


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.telephony.data.IDataService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/data/IDataService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/telephony/data/IDataService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "requestNetworkValidation"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "unregisterForUnthrottleApn"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "registerForUnthrottleApn"

    return-object v0

    :pswitch_3
    const-string v0, "cancelHandover"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "startHandover"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "unregisterForDataCallListChanged"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "registerForDataCallListChanged"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "requestDataCallList"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setDataProfile"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "setInitialAttachApn"

    return-object v0

    :pswitch_a
    const-string v0, "deactivateDataCall"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "setupDataCall"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "removeDataServiceProvider"

    return-object v0

    :pswitch_d
    const-string v0, "createDataServiceProvider"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/16 v0, 0xd

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/telephony/data/IDataService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    const-string v12, "android.telephony.data.IDataService"

    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v14, v0, :cond_1

    move-object/from16 v10, p3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    move-object/from16 v10, p3

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->requestNetworkValidation(IILcom/android/internal/telephony/IIntegerConsumer;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2}, Landroid/telephony/data/IDataService$Stub;->startHandover(IILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1}, Landroid/telephony/data/IDataService$Stub;->requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/telephony/data/IDataService$Stub;->deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V

    move/from16 v28, v11

    move-object/from16 v29, v12

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    sget-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/telephony/data/DataProfile;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    sget-object v0, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/LinkProperties;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    sget-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/data/NetworkSliceInfo;

    sget-object v0, Landroid/telephony/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;

    move-result-object v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v28, v11

    move/from16 v11, v26

    move-object/from16 v29, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/telephony/data/IDataService$Stub;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V

    goto :goto_0

    :pswitch_c
    move/from16 v28, v11

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/telephony/data/IDataService$Stub;->removeDataServiceProvider(I)V

    goto :goto_0

    :pswitch_d
    move/from16 v28, v11

    move-object/from16 v29, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v13, v0}, Landroid/telephony/data/IDataService$Stub;->createDataServiceProvider(I)V

    nop

    :goto_0
    return v28

    :pswitch_data_0
    .packed-switch 0x1
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
