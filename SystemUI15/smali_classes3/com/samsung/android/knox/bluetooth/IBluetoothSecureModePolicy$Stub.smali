.class public abstract Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;


# static fields
.field public static final TRANSACTION_addBluetoothDevicesToWhiteList:I = 0x8

.field public static final TRANSACTION_disableSecureMode:I = 0x2

.field public static final TRANSACTION_enableDeviceWhiteList:I = 0x5

.field public static final TRANSACTION_enableSecureMode:I = 0x1

.field public static final TRANSACTION_getBluetoothDevicesFromWhiteList:I = 0x7

.field public static final TRANSACTION_getSecureModeConfiguration:I = 0x3

.field public static final TRANSACTION_isDeviceWhiteListEnabled:I = 0x6

.field public static final TRANSACTION_isSecureModeEnabled:I = 0x4

.field public static final TRANSACTION_removeBluetoothDevicesFromWhiteList:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.bluetooth.IBluetoothSecureModePolicy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.bluetooth.IBluetoothSecureModePolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "removeBluetoothDevicesFromWhiteList"

    return-object p0

    :pswitch_1
    const-string p0, "addBluetoothDevicesToWhiteList"

    return-object p0

    :pswitch_2
    const-string p0, "getBluetoothDevicesFromWhiteList"

    return-object p0

    :pswitch_3
    const-string p0, "isDeviceWhiteListEnabled"

    return-object p0

    :pswitch_4
    const-string p0, "enableDeviceWhiteList"

    return-object p0

    :pswitch_5
    const-string p0, "isSecureModeEnabled"

    return-object p0

    :pswitch_6
    const-string p0, "getSecureModeConfiguration"

    return-object p0

    :pswitch_7
    const-string p0, "disableSecureMode"

    return-object p0

    :pswitch_8
    const-string p0, "enableSecureMode"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.bluetooth.IBluetoothSecureModePolicy"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    sget-object p4, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->removeBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    sget-object p4, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->addBluetoothDevicesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getBluetoothDevicesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isDeviceWhiteListEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableDeviceWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->isSecureModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_6
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->getSecureModeConfiguration(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_7
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->disableSecureMode(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_8
    sget-object p1, Lcom/samsung/android/knox/ContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/ContextInfo;

    sget-object p4, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;

    sget-object v0, Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeWhitelistConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/android/knox/bluetooth/IBluetoothSecureModePolicy;->enableSecureMode(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/bluetooth/BluetoothSecureModeConfig;Ljava/util/List;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
