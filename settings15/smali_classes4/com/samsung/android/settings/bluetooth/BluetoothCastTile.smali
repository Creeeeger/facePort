.class public Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;
.super Landroid/service/quicksettings/TileService;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public isBluetoothCastOn:Z

.field public mAvailableDevices:Ljava/util/List;

.field public mContext:Landroid/content/Context;

.field public mDisallowedDevices:Lorg/json/JSONObject;

.field public final mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;

.field public final mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

.field public pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "onBind()"

    const-string v1, "BluetoothCastTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "mContext is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    :cond_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onClick()V
    .locals 5

    const-string/jumbo v0, "onClick"

    const-string v1, "BluetoothCastTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const-string v2, "isBlockedEdmSettingsChange: "

    invoke-static {v2, v1, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1421da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f141cdb

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_function_val"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_cast_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v3, v4

    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    if-ne v0, v4, :cond_7

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    xor-int/lit8 v0, v3, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    return-void
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    const-string v0, "BluetoothCastTile"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_cast_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->pref:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->pref:Landroid/content/SharedPreferences;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string v4, "bluetooth_cast_available_devices"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->registerReceiver(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    const-string v0, "BluetoothCastTile"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->registerReceiver(Z)V

    return-void
.end method

.method public final onStartListening()V
    .locals 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    const-string v0, "BluetoothCastTile"

    const-string/jumbo v1, "onStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_cast_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->updateState(Z)V

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    return-void
.end method

.method public final onStopListening()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    const-string p0, "BluetoothCastTile"

    const-string/jumbo v0, "onStopListening"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTileAdded()V
    .locals 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    const-string v0, "BluetoothCastTile"

    const-string/jumbo v1, "onTileAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class v2, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onTileRemoved()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    const-string p0, "BluetoothCastTile"

    const-string/jumbo v0, "onTileRemoved"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "BluetoothCastTile"

    const-string/jumbo v1, "onUnBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public final registerReceiver(Z)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "BluetoothCastTile"

    if-ne p1, v0, :cond_1

    const-string p1, "com.samsung.android.settings.bluetooth.AVAILABLE_DEVICE"

    const-string v0, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    invoke-static {p1, v0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "unable to register receiver"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "unable to unregister receiver. Receiver was not registered or already unregistered."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "unable to unregister receiver"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1

    const-string p0, "BluetoothCastTile"

    const-string/jumbo v0, "semGetDetailView"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1421da

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    const-string p0, "BluetoothCastTile"

    const-string/jumbo v0, "semGetSettingsIntent start"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.BLUETOOTH_CAST_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final semIsToggleButtonChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_cast_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    return v2
.end method

.method public final semIsToggleButtonExists()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final semSetToggleButtonChecked(Z)V
    .locals 2

    const-string v0, "BluetoothCastTile"

    const-string/jumbo v1, "semSetToggleButtonChecked start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    const-string v0, "bluetooth_cast_mode"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final updateState(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const-string v1, "BluetoothCastTile"

    if-nez v0, :cond_0

    const-string/jumbo p0, "tile is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080a7a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "drawable is not suitable for SemPathRenderingDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "unable to generate bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0, v4}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1421da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    invoke-virtual {p0, p1, v1}, Landroid/service/quicksettings/TileService;->semFireToggleStateChanged(ZZ)V

    return-void
.end method
