.class public abstract Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.oneconnect.mediaoutput.IMediaOutputService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6

    const-string v0, "com.samsung.android.oneconnect.mediaoutput.IMediaOutputService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_12

    const-string v0, "com.samsung.android.oneconnect.mediaoutput.deviceoperations.IDeviceStatusChangeCallback"

    const-string v2, "com.samsung.android.oneconnect.mediaoutput.mediadeviceoperations.IMediaContentChangeCallback"

    const-string v3, "com.samsung.android.oneconnect.mediaoutput.mediadeviceoperations.IMediaOutputSelectedCallback"

    const-string v4, "com.samsung.android.oneconnect.mediaoutput.mediadeviceoperations.IMediaDeviceControlCallback"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->stopCloudSync()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_1
    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->startCloudSync()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->isSupported(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->getCurrentMediaOutputV2(Ljava/lang/String;)Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_9

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->getMediaOutputDevicesV2(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->setPlayback(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_6
    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->isPpAgreed()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->launchRemoteControlPlugIn(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_2

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback;

    if-eqz p4, :cond_2

    check-cast p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback;

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback$Stub$Proxy;

    invoke-direct {p2, p1}, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->removeMediaDeviceControlCallback()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_4

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback;

    if-eqz p4, :cond_4

    check-cast p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback;

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback$Stub$Proxy;

    invoke-direct {p2, p1}, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaDeviceControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->addMediaDeviceControlCallback()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->isMuted()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_5

    move p2, v1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->setMute(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->updateVolume(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_7

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;

    if-eqz p4, :cond_7

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback$Stub$Proxy;

    invoke-direct {v5, p1}, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-interface {p0, v5}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->removeMediaOutputSelectedCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {p1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_9

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;

    if-eqz p4, :cond_9

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;

    goto :goto_4

    :cond_9
    new-instance v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback$Stub$Proxy;

    invoke-direct {v5, p1}, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-interface {p0, v5}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->addMediaOutputSelectedCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaOutputSelectedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->selectMediaOutput(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->getCurrentMediaOutput(Ljava/lang/String;)Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDevice;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_9

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_b

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;

    if-eqz p4, :cond_b

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;

    goto :goto_5

    :cond_b
    new-instance v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback$Stub$Proxy;

    invoke-direct {v5, p1}, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-interface {p0, v5}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->removeContentChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_d

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;

    if-eqz p4, :cond_d

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;

    goto :goto_6

    :cond_d
    new-instance v5, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback$Stub$Proxy;

    invoke-direct {v5, p1}, Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-interface {p0, v5}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->addContentChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/mediadeviceoperations/IMediaContentChangeCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->getMediaContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->isNearby()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_f

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;

    if-eqz p4, :cond_f

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;

    goto :goto_7

    :cond_f
    new-instance v5, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub$Proxy;

    invoke-direct {v5, p1}, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-interface {p0, v5}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->removeDeviceStatusChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    if-eqz p2, :cond_11

    instance-of p4, p2, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;

    if-eqz p4, :cond_11

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;

    goto :goto_8

    :cond_11
    new-instance v5, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub$Proxy;

    invoke-direct {v5, p1}, Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_8
    invoke-interface {p0, v5}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->addDeviceStatusChangeCallback(Lcom/samsung/android/oneconnect/mediaoutput/deviceoperations/IDeviceStatusChangeCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->getMediaOutputDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;)V

    goto :goto_9

    :pswitch_18
    invoke-interface {p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService;->getDevices()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/samsung/android/oneconnect/mediaoutput/IMediaOutputService$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;)V

    :goto_9
    return v1

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
