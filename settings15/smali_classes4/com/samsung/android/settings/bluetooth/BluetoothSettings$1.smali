.class public final Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothSettings"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onReceive: Intent.getAction() is return null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "onReceive: getAction = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_2

    const-string p1, "android.bluetooth.adapter.extra.SCAN_MODE"

    const/16 v0, 0x14

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p2, p2, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x17

    if-eq p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mIsPickerDialog:Z

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_2
    :goto_0
    return-void
.end method
