.class public abstract Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.super Landroid/os/Binder;
.source "ISystemUIAdapterCallback.java"

# interfaces
.implements Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_excludeExternalStorageForFailedPasswordsWipe:I = 0x7

.field static final blacklist TRANSACTION_setAdminLock:I = 0x1d

.field static final blacklist TRANSACTION_setAirplaneModeAllowed:I = 0xd

.field static final blacklist TRANSACTION_setApplicationNameControlEnabled:I = 0x1c

.field static final blacklist TRANSACTION_setBluetoothAllowed:I = 0x12

.field static final blacklist TRANSACTION_setCameraAllowed:I = 0x10

.field static final blacklist TRANSACTION_setCellularDataAllowed:I = 0xe

.field static final blacklist TRANSACTION_setFaceRecognitionEvenCameraBlockedAllowed:I = 0x11

.field static final blacklist TRANSACTION_setGPSStateChangeAllowed:I = 0x18

.field static final blacklist TRANSACTION_setKioskModeEnabled:I = 0x3

.field static final blacklist TRANSACTION_setLocationProviderAllowed:I = 0x17

.field static final blacklist TRANSACTION_setLockedIccIds:I = 0x19

.field static final blacklist TRANSACTION_setLockscreenInvisibleOverlay:I = 0x1a

.field static final blacklist TRANSACTION_setLockscreenWallpaper:I = 0x1b

.field static final blacklist TRANSACTION_setMaximumFailedPasswordsForDisable:I = 0x4

.field static final blacklist TRANSACTION_setMaximumFailedPasswordsForProfileDisable:I = 0x5

.field static final blacklist TRANSACTION_setMultifactorAuthEnabled:I = 0x9

.field static final blacklist TRANSACTION_setNFCStateChangeAllowed:I = 0x13

.field static final blacklist TRANSACTION_setNavigationBarHidden:I = 0x2

.field static final blacklist TRANSACTION_setPasswordLockDelay:I = 0x8

.field static final blacklist TRANSACTION_setPasswordVisibilityEnabled:I = 0xa

.field static final blacklist TRANSACTION_setPwdChangeRequested:I = 0x6

.field static final blacklist TRANSACTION_setRoamingAllowed:I = 0x14

.field static final blacklist TRANSACTION_setSettingsChangeAllowed:I = 0xb

.field static final blacklist TRANSACTION_setStatusBarExpansionAllowed:I = 0xc

.field static final blacklist TRANSACTION_setStatusBarHidden:I = 0x1

.field static final blacklist TRANSACTION_setWifiAllowed:I = 0x16

.field static final blacklist TRANSACTION_setWifiStateChangeAllowed:I = 0x15

.field static final blacklist TRANSACTION_setWifiTetheringAllowed:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-virtual {p0, p0, v0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "setAdminLock"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "setApplicationNameControlEnabled"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "setLockscreenWallpaper"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setLockscreenInvisibleOverlay"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "setLockedIccIds"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setGPSStateChangeAllowed"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "setLocationProviderAllowed"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "setWifiAllowed"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setWifiStateChangeAllowed"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "setRoamingAllowed"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "setNFCStateChangeAllowed"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "setBluetoothAllowed"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setFaceRecognitionEvenCameraBlockedAllowed"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "setCameraAllowed"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "setWifiTetheringAllowed"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setCellularDataAllowed"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "setAirplaneModeAllowed"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "setStatusBarExpansionAllowed"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "setSettingsChangeAllowed"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "setPasswordVisibilityEnabled"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "setMultifactorAuthEnabled"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "setPasswordLockDelay"

    return-object v0

    :pswitch_16
    const-string v0, "excludeExternalStorageForFailedPasswordsWipe"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "setPwdChangeRequested"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "setMaximumFailedPasswordsForProfileDisable"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "setMaximumFailedPasswordsForDisable"

    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "setKioskModeEnabled"

    return-object v0

    :pswitch_1b
    const-string/jumbo v0, "setNavigationBarHidden"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "setStatusBarHidden"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.sec.enterprise.adapterlayer.ISystemUIAdapterCallback"

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

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setAdminLock(ZZ)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setApplicationNameControlEnabled(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenWallpaper(Z)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockscreenInvisibleOverlay(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLockedIccIds([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setGPSStateChangeAllowed(Z)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setLocationProviderAllowed(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiAllowed(Z)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiStateChangeAllowed(Z)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setRoamingAllowed(Z)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNFCStateChangeAllowed(Z)V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setBluetoothAllowed(Z)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setFaceRecognitionEvenCameraBlockedAllowed(Z)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setCameraAllowed(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setWifiTetheringAllowed(Z)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setCellularDataAllowed(Z)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setAirplaneModeAllowed(Z)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarExpansionAllowed(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setSettingsChangeAllowed(Z)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordVisibilityEnabled(Z)V

    goto :goto_0

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMultifactorAuthEnabled(Z)V

    goto :goto_0

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPasswordLockDelay(I)V

    goto :goto_0

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->excludeExternalStorageForFailedPasswordsWipe(Z)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setPwdChangeRequested(I)V

    goto :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMaximumFailedPasswordsForProfileDisable(I)V

    goto :goto_0

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setMaximumFailedPasswordsForDisable(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setKioskModeEnabled(Z)V

    goto :goto_0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setNavigationBarHidden(Z)V

    goto :goto_0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->setStatusBarHidden(Z)V

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
