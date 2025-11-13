.class public abstract Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;
.super Landroid/os/Binder;
.source "IEpicRequest.java"

# interfaces
.implements Lvendor/samsung_slsi/hardware/epic/IEpicRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung_slsi/hardware/epic/IEpicRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquire_lock:I = 0x1

.field static final blacklist TRANSACTION_acquire_lock_conditional:I = 0x2

.field static final blacklist TRANSACTION_acquire_lock_multi_option:I = 0x3

.field static final blacklist TRANSACTION_acquire_lock_option:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_hint_release:I = 0x5

.field static final blacklist TRANSACTION_init:I = 0x6

.field static final blacklist TRANSACTION_init_multi:I = 0x7

.field static final blacklist TRANSACTION_perf_hint:I = 0x8

.field static final blacklist TRANSACTION_release_lock:I = 0x9

.field static final blacklist TRANSACTION_release_lock_conditional:I = 0xa

.field static final blacklist TRANSACTION_update_handle_id:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->markVintfStability()V

    sget-object v0, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicRequest;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung_slsi/hardware/epic/IEpicRequest;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lvendor/samsung_slsi/hardware/epic/IEpicRequest;

    return-object v1

    :cond_1
    new-instance v1, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p0}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->update_handle_id(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->release_lock_conditional(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->release_lock(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->perf_hint(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->init_multi([I)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->init(I)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->hint_release(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->acquire_lock_option(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;II)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->acquire_lock_multi_option(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;[I[I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1, v3}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->acquire_lock_conditional(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung_slsi/hardware/epic/IEpicHandle$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung_slsi/hardware/epic/IEpicHandle;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v1}, Lvendor/samsung_slsi/hardware/epic/IEpicRequest$Stub;->acquire_lock(Lvendor/samsung_slsi/hardware/epic/IEpicHandle;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
