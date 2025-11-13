.class final Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

.field private final BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1556
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bluetooth_cast_mode"

    .line 1553
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_disallowed_devices"

    .line 1554
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1560
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1561
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1562
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1563
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 1568
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->access$1200(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1570
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1571
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 1573
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
