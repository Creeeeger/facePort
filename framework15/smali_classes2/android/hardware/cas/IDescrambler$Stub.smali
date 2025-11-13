.class public abstract Landroid/hardware/cas/IDescrambler$Stub;
.super Landroid/os/Binder;
.source "IDescrambler.java"

# interfaces
.implements Landroid/hardware/cas/IDescrambler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/IDescrambler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/IDescrambler$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_descramble:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_release:I = 0x2

.field static final blacklist TRANSACTION_requiresSecureDecoderComponent:I = 0x3

.field static final blacklist TRANSACTION_setMediaCasSession:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/cas/IDescrambler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/IDescrambler;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/cas/IDescrambler;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/cas/IDescrambler;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/cas/IDescrambler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/cas/IDescrambler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    sget-object v13, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v0, 0xffffff

    const/4 v14, 0x1

    if-lt v10, v14, :cond_0

    if-gt v10, v0, :cond_0

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v1, 0x5f4e5446

    if-ne v10, v1, :cond_1

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :cond_1
    if-ne v10, v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/IDescrambler$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :cond_2
    const v0, 0xfffffe

    if-ne v10, v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/IDescrambler$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :cond_3
    packed-switch v10, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/hardware/cas/IDescrambler$Stub;->setMediaCasSession([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0}, Landroid/hardware/cas/IDescrambler$Stub;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/IDescrambler$Stub;->release()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    sget-object v0, Landroid/hardware/cas/SubSample;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, [Landroid/hardware/cas/SubSample;

    sget-object v0, Landroid/hardware/cas/SharedBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/hardware/cas/SharedBuffer;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    sget-object v0, Landroid/hardware/cas/DestinationBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/hardware/cas/DestinationBuffer;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-wide/from16 v4, v18

    move-object/from16 v6, v20

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/cas/IDescrambler$Stub;->descramble(I[Landroid/hardware/cas/SubSample;Landroid/hardware/cas/SharedBuffer;JLandroid/hardware/cas/DestinationBuffer;J)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
