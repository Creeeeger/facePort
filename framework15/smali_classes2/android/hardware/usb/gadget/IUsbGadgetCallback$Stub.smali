.class public abstract Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;
.super Landroid/os/Binder;
.source "IUsbGadgetCallback.java"

# interfaces
.implements Landroid/hardware/usb/gadget/IUsbGadgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/IUsbGadgetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCurrentUsbFunctionsCb:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getUsbSpeedCb:I = 0x3

.field static final blacklist TRANSACTION_resetCb:I = 0x4

.field static final blacklist TRANSACTION_setCurrentUsbFunctionsCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
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

    sget-object v9, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v0, 0xffffff

    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    if-gt v7, v0, :cond_0

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    const v1, 0x5f4e5446

    if-ne v7, v1, :cond_1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    if-ne v7, v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :cond_2
    const v0, 0xfffffe

    if-ne v7, v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_3
    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->resetCb(IJ)V

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getUsbSpeedCb(IJ)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->getCurrentUsbFunctionsCb(JIJ)V

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v12

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->setCurrentUsbFunctionsCb(JIJ)V

    nop

    :goto_1
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
