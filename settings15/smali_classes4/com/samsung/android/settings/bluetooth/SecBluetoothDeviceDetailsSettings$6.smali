.class public final Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$6;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$6;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setDelayEnabled()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$6;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setIconEnabled(Z)V

    :cond_2
    :goto_0
    return v0
.end method
