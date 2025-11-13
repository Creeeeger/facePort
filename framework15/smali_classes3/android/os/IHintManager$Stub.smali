.class public abstract Landroid/os/IHintManager$Stub;
.super Landroid/os/Binder;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IHintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSessionChannel:I = 0x6

.field static final blacklist TRANSACTION_createHintSessionWithConfig:I = 0x1

.field static final blacklist TRANSACTION_getHintSessionPreferredRate:I = 0x2

.field static final blacklist TRANSACTION_getHintSessionThreadIds:I = 0x4

.field static final blacklist TRANSACTION_getSessionChannel:I = 0x5

.field static final blacklist TRANSACTION_setHintSessionThreads:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IHintManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IHintManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IHintManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IHintManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IHintManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHintManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "closeSessionChannel"

    return-object v0

    :pswitch_1
    const-string v0, "getSessionChannel"

    return-object v0

    :pswitch_2
    const-string v0, "getHintSessionThreadIds"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setHintSessionThreads"

    return-object v0

    :pswitch_4
    const-string v0, "getHintSessionPreferredRate"

    return-object v0

    :pswitch_5
    const-string v0, "createHintSessionWithConfig"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/os/IHintManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v10, "android.os.IHintManager"

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
    invoke-virtual/range {p0 .. p0}, Landroid/os/IHintManager$Stub;->closeSessionChannel()V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IHintManager$Stub;->getSessionChannel(Landroid/os/IBinder;)Landroid/hardware/power/ChannelConfig;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IHintManager$Stub;->getHintSessionThreadIds(Landroid/os/IHintSession;)[I

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHintSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHintSession;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/os/IHintManager$Stub;->setHintSessionThreads(Landroid/os/IHintSession;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/IHintManager$Stub;->getHintSessionPreferredRate()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    new-instance v0, Landroid/hardware/power/SessionConfig;

    invoke-direct {v0}, Landroid/hardware/power/SessionConfig;-><init>()V

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-wide v3, v15

    move/from16 v5, v17

    move-object/from16 v18, v6

    invoke-virtual/range {v0 .. v6}, Landroid/os/IHintManager$Stub;->createHintSessionWithConfig(Landroid/os/IBinder;[IJILandroid/hardware/power/SessionConfig;)Landroid/os/IHintSession;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    move-object/from16 v1, v18

    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_1
    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
