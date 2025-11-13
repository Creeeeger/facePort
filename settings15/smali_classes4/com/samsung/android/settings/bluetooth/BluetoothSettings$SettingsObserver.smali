.class public final Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

.field public final BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bluetooth_cast_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_disallowed_devices"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
