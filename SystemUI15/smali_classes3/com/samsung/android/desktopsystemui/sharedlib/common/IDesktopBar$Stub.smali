.class public abstract Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;


# static fields
.field static final TRANSACTION_closePanel:I = 0x5

.field static final TRANSACTION_notifyPrivacyItemsChanged:I = 0xd

.field static final TRANSACTION_onDismiss:I = 0xf

.field static final TRANSACTION_onKeyguardWallpaperChanged:I = 0x11

.field static final TRANSACTION_onShow:I = 0xe

.field static final TRANSACTION_onUpdate:I = 0x10

.field static final TRANSACTION_openPanel:I = 0x4

.field static final TRANSACTION_setAirplaneMode:I = 0x8

.field static final TRANSACTION_setBtTetherIcon:I = 0x9

.field static final TRANSACTION_setConnectedDeviceListForGroup:I = 0xc

.field static final TRANSACTION_setDesktopBarCallback:I = 0x1

.field static final TRANSACTION_setLockout:I = 0x12

.field static final TRANSACTION_setMPTCPIcon:I = 0xa

.field static final TRANSACTION_setMobileIcon:I = 0x7

.field static final TRANSACTION_setOccluded:I = 0x13

.field static final TRANSACTION_setSubs:I = 0xb

.field static final TRANSACTION_setWifiIcon:I = 0x6

.field static final TRANSACTION_start:I = 0x2

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBar"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBar"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.desktopsystemui.sharedlib.common.IDesktopBar"

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
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setOccluded(Z)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setLockout(ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onKeyguardWallpaperChanged()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onUpdate(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onDismiss()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onShow(I)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    invoke-interface {p0, v0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->notifyPrivacyItemsChanged(Z)V

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setConnectedDeviceListForGroup(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setSubs()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, v0, p1, p3, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMPTCPIcon(ZIII)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setBtTetherIcon(ZI)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setAirplaneMode(ZI)V

    goto :goto_0

    :pswitch_c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setMobileIcon(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, v0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setWifiIcon(ZII)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->closePanel(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->openPanel(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_10
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->stop()V

    goto :goto_0

    :pswitch_11
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->start()V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->setDesktopBarCallback(Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBarCallback;)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
