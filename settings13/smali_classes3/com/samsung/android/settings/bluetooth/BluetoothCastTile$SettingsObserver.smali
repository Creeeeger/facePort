.class final Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothCastTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

.field private final BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Landroid/os/Handler;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "bluetooth_cast_mode"

    .line 327
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const-string p1, "bluetooth_cast_disallowed_devices"

    .line 328
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "BluetoothCastTile"

    const-string v0, "onChange"

    .line 334
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 336
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "bluetooth_cast_mode"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 337
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fputisBluetoothCastOn(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Z)V

    .line 338
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$fgetisBluetoothCastOn(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->-$$Nest$mupdateState(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Z)V

    .line 339
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    goto :goto_1

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 341
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {v0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 349
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
