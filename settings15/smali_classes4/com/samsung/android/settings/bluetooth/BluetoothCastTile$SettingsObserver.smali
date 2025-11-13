.class public final Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

.field public final BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bluetooth_cast_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_disallowed_devices"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "BluetoothCastTile"

    const-string/jumbo v0, "onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bluetooth_cast_mode"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->updateState(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    :cond_2
    :goto_1
    return-void
.end method
