.class public abstract Landroid/hardware/usb/gadget/IUsbGadget$Stub;
.super Landroid/os/Binder;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/IUsbGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getCurrentUsbFunctions:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getUsbSpeed:I = 0x3

.field static final blacklist TRANSACTION_reset:I = 0x4

.field static final blacklist TRANSACTION_setCurrentUsbFunctions:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->markVintfStability()V

    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadget;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/usb/gadget/IUsbGadget;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/gadget/IUsbGadget;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    sget-object v11, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v0, 0xffffff

    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    if-gt v9, v0, :cond_0

    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v13, p2

    :goto_0
    const v1, 0x5f4e5446

    if-ne v9, v1, :cond_1

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :cond_1
    if-ne v9, v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :cond_2
    const v0, 0xfffffe

    if-ne v9, v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :cond_3
    packed-switch v9, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->reset(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getUsbSpeed(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/IUsbGadgetCallback;J)V

    goto :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/IUsbGadgetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/gadget/IUsbGadgetCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/gadget/IUsbGadget$Stub;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/IUsbGadgetCallback;JJ)V

    nop

    :goto_1
    return v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
