.class public abstract Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;
.super Landroid/os/Binder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;


# static fields
.field public static final TRANSACTION_setBatteryLevelColourItem:I = 0xa

.field public static final TRANSACTION_setChargerConnectionSoundEnabledState:I = 0xf

.field public static final TRANSACTION_setHardKeyIntentState:I = 0x13

.field public static final TRANSACTION_setHideNotificationMessages:I = 0xb

.field public static final TRANSACTION_setLockScreenHiddenItems:I = 0x1

.field public static final TRANSACTION_setLockScreenOverrideMode:I = 0x2

.field public static final TRANSACTION_setQuickPanelButtonUsers:I = 0x12

.field public static final TRANSACTION_setQuickPanelButtons:I = 0x3

.field public static final TRANSACTION_setQuickPanelEditMode:I = 0x4

.field public static final TRANSACTION_setQuickPanelItems:I = 0x5

.field public static final TRANSACTION_setQuickPanelUnavailableButtons:I = 0x6

.field public static final TRANSACTION_setScreenOffOnStatusBarDoubleTapState:I = 0x7

.field public static final TRANSACTION_setStatusBarHidden:I = 0x11

.field public static final TRANSACTION_setStatusBarIconsState:I = 0x9

.field public static final TRANSACTION_setStatusBarNotificationsState:I = 0xc

.field public static final TRANSACTION_setStatusBarTextInfo:I = 0x8

.field public static final TRANSACTION_setUnlockSimOnBootState:I = 0xd

.field public static final TRANSACTION_setUnlockSimPin:I = 0xe

.field public static final TRANSACTION_setVolumePanelEnabledState:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "setHardKeyIntentState"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "setQuickPanelButtonUsers"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "setStatusBarHidden"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "setVolumePanelEnabledState"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "setChargerConnectionSoundEnabledState"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "setUnlockSimPin"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "setUnlockSimOnBootState"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setStatusBarNotificationsState"

    return-object p0

    :pswitch_8
    const-string/jumbo p0, "setHideNotificationMessages"

    return-object p0

    :pswitch_9
    const-string/jumbo p0, "setBatteryLevelColourItem"

    return-object p0

    :pswitch_a
    const-string/jumbo p0, "setStatusBarIconsState"

    return-object p0

    :pswitch_b
    const-string/jumbo p0, "setStatusBarTextInfo"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "setScreenOffOnStatusBarDoubleTapState"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "setQuickPanelUnavailableButtons"

    return-object p0

    :pswitch_e
    const-string/jumbo p0, "setQuickPanelItems"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "setQuickPanelEditMode"

    return-object p0

    :pswitch_10
    const-string/jumbo p0, "setQuickPanelButtons"

    return-object p0

    :pswitch_11
    const-string/jumbo p0, "setLockScreenOverrideMode"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "setLockScreenHiddenItems"

    return-object p0

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


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    const/16 p0, 0x12

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.samsung.android.knox.custom.IKnoxCustomManagerSystemUiCallback"

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
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHardKeyIntentState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtonUsers(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarHidden(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setVolumePanelEnabledState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setChargerConnectionSoundEnabledState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimPin(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setUnlockSimOnBootState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarNotificationsState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setHideNotificationMessages(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/custom/StatusbarIconItem;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setBatteryLevelColourItem(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarIconsState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setStatusBarTextInfo(Ljava/lang/String;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setScreenOffOnStatusBarDoubleTapState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelUnavailableButtons(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelItems(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelEditMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setQuickPanelButtons(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenOverrideMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;->setLockScreenHiddenItems(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
