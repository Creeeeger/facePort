.class public final synthetic Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->updateSwitch$1()V

    return-void

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsTetheringRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->showState(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->updateSwitch$1()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsTetheringRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->showState(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->updateSwitch$1()V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    :cond_0
    return-void

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mIsEnabledForTethering:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setScanMode()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->updateSwitch$1()V

    :goto_0
    return-void

    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setSwitchChecked(Z)V

    return-void

    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->mDataSaverBackend:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/settings/connection/tether/SecTetherUtils;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringUtils;->startProvisioning(Landroid/app/Activity;Landroid/content/Context;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/tethering/BluetoothTetheringSwitchEnabler;->setTethering(Z)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
