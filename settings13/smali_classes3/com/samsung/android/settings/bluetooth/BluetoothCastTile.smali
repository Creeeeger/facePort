.class public Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;
.super Landroid/service/quicksettings/TileService;
.source "BluetoothCastTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;
    }
.end annotation


# instance fields
.field private isBluetoothCastOn:Z

.field private mAvailableDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisallowedDevices:Lorg/json/JSONObject;

.field private final mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$1BXvId3s7EGfOB71lUijmeUK9UE(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->lambda$setDeviceView$0(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8aJP1Lp9iFHg_ScadSONW6o7mLs(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->lambda$setDeviceView$1(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aCmPCpJ5vj2-ih5t74v6vh57tc4(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->lambda$setDeviceView$2(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBluetoothCastOn(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBluetoothCastOn(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->updateState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    .line 112
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private doInit()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "BluetoothCastTile"

    const-string v1, "mContext is null"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "bluetooth_cast_pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->pref:Landroid/content/SharedPreferences;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->pref:Landroid/content/SharedPreferences;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, "bluetooth_cast_available_devices"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getIcon(I)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 308
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 310
    instance-of p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    const-string v0, "BluetoothCastTile"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 311
    check-cast p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "drawable is not suitable for SemPathRenderingDrawable"

    .line 313
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 317
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "unable to generate bitmap"

    .line 319
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private isBlockedEdmSettingsChange()Z
    .locals 3

    const-string v0, "false"

    .line 600
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 602
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v2, "isSettingsChangesAllowed"

    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 611
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBlockedEdmSettingsChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCastTile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static synthetic lambda$setDeviceView$0(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 487
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setDeviceView$1(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 506
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setDeviceView$2(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 507
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerReceiver(Z)V
    .locals 2

    const-string v0, "BluetoothCastTile"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 160
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.settings.bluetooth.AVAILABLE_DEVICE"

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 162
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 164
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "unable to register receiver"

    .line 166
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 171
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "unable to unregister receiver. Receiver was not registered or already unregistered."

    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "unable to unregister receiver"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setDeviceView(Landroid/widget/RemoteViews;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 467
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 473
    :cond_0
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v3

    .line 474
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 475
    iget-object v5, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    if-eqz v3, :cond_3

    .line 478
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 479
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 480
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 482
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 487
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda2;-><init>()V

    .line 488
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 489
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_1

    .line 492
    :cond_3
    iget-object v4, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    .line 493
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    .line 492
    invoke-static {v4, v5, v6}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getA2dpBondDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Ljava/util/List;

    move-result-object v4

    .line 496
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 497
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 498
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePreferences - Available : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "BluetoothCastTile"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "count"

    const-string v11, "com.samsung.android.settings.bluetooth.AVAILABLE_DEVICE"

    const-string v12, "qs_detail_content_primary_text_color"

    const-string v13, "isAllowed : "

    const-string v14, "setChecked"

    if-eqz v3, :cond_7

    const/4 v15, 0x2

    .line 501
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    if-ne v15, v5, :cond_7

    if-eqz v3, :cond_4

    .line 504
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 505
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda1;-><init>()V

    .line 506
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 507
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v8, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 508
    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 509
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_3

    .line 511
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 514
    :goto_3
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v15, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v2

    sget v2, Lcom/android/settings/R$layout;->bluetoothcast_tile_detail_item_connected:I

    invoke-direct {v8, v15, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 516
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    .line 517
    :goto_4
    sget v2, Lcom/android/settings/R$id;->device_switch:I

    invoke-virtual {v8, v2, v14, v15}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 518
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    sget v13, Lcom/android/settings/R$id;->device_icon:I

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-static {v14, v7}, Lcom/android/settings/bluetooth/Utils;->getHostOverlayIconBitmap(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 521
    sget v13, Lcom/android/settings/R$id;->device_title:I

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 522
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 523
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    move/from16 v18, v3

    const/high16 v3, -0x1000000

    .line 522
    invoke-static {v14, v12, v3, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 521
    invoke-virtual {v8, v13, v12}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 524
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 526
    sget v12, Lcom/android/settings/R$id;->device_summary:I

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 527
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 528
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    const-string v15, "qs_detail_content_secondary_text_color"

    .line 527
    invoke-static {v13, v15, v3, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 526
    invoke-virtual {v8, v12, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 529
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is connected for Music Share"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v12, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 533
    :cond_6
    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->bluetooth_a2dp_profile_summary_connected:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v12, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 536
    :goto_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v3, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    invoke-virtual/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v9, 0xc000000

    invoke-static {v5, v6, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 540
    invoke-virtual {v8, v2, v3}, Landroid/widget/RemoteViews;->semSetOnCheckedChangedPendingIntent(ILandroid/app/PendingIntent;)V

    .line 542
    sget v2, Lcom/android/settings/R$id;->bluetooth_cast_device_container:I

    invoke-virtual {v1, v2, v8}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_7

    :cond_7
    move-object/from16 v17, v2

    move/from16 v18, v3

    .line 544
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/android/settings/R$layout;->bluetoothcast_tile_detail_item:I

    invoke-direct {v2, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 546
    iget-object v3, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    if-eqz v3, :cond_8

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v15, 0x1

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    .line 547
    :goto_6
    sget v3, Lcom/android/settings/R$id;->device_switch:I

    invoke-virtual {v2, v3, v14, v15}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sget v5, Lcom/android/settings/R$id;->device_icon:I

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/bluetooth/Utils;->getHostOverlayIconBitmap(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 551
    sget v5, Lcom/android/settings/R$id;->device_title:I

    iget-object v8, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 552
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 553
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const/high16 v13, -0x1000000

    .line 552
    invoke-static {v8, v12, v13, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 551
    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 554
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 556
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v5, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0xc000000

    invoke-static {v8, v6, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 560
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->semSetOnCheckedChangedPendingIntent(ILandroid/app/PendingIntent;)V

    .line 562
    sget v3, Lcom/android/settings/R$id;->bluetooth_cast_device_container:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 567
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 568
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_2

    .line 573
    :cond_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 574
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mAvailableDevices:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 575
    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "bluetooth_cast_available_devices"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setTextView(Landroid/widget/RemoteViews;)V
    .locals 6

    .line 456
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_cast_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 457
    sget v1, Lcom/android/settings/R$id;->bluetoothcast_tile_description:I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 459
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "qs_detail_content_secondary_text_color"

    const/high16 v5, -0x1000000

    .line 458
    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 457
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 460
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 463
    sget v0, Lcom/android/settings/R$id;->bluetooth_cast_list:I

    sget v1, Lcom/android/settings/R$string;->bluetooth_preference_found_devices:I

    invoke-virtual {p0, v1}, Landroid/service/quicksettings/TileService;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private showItPolicyToast()V
    .locals 4

    .line 616
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->prevent_to_change_by_device_policy:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_cast_title:I

    .line 618
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 617
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 622
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateOffDetailView()Landroid/widget/RemoteViews;
    .locals 6

    const-string v0, "BluetoothCastTile"

    const-string v1, "updateOffDetailView start"

    .line 391
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->bluetoothcast_tile_detail:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 397
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_cast_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    sget v2, Lcom/android/settings/R$id;->bluetoothcast_tile_description:I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 400
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "qs_detail_content_secondary_text_color"

    const/high16 v5, -0x1000000

    .line 399
    invoke-static {p0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 398
    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 401
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method private updateOnDetailView()Landroid/widget/RemoteViews;
    .locals 8

    const-string v0, "bluetooth_cast_disallowed_devices"

    const-string v1, "BluetoothCastTile"

    const-string v2, "updateOnDetailView start"

    .line 407
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/settings/R$layout;->bluetoothcast_tile_detail_on:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 415
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    goto :goto_0

    .line 417
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 420
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 423
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 426
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 428
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda0;-><init>()V

    .line 429
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 430
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 431
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 433
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 434
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 435
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_2
    const-string v4, "a disallowed device is removed in bonded list"

    .line 436
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 443
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    .line 448
    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->setTextView(Landroid/widget/RemoteViews;)V

    .line 449
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->setDeviceView(Landroid/widget/RemoteViews;)V

    return-object v2
.end method

.method private updateState(Z)V
    .locals 3

    .line 289
    sget v0, Lcom/android/settings/R$drawable;->sec_st_ic_bluetoothcasttile:I

    .line 290
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_cast_title:I

    .line 292
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "BluetoothCastTile"

    const-string p1, "tile is null"

    .line 294
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->getIcon(I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 300
    :goto_0
    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 301
    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 302
    invoke-virtual {p0, p1, v0}, Landroid/service/quicksettings/TileService;->semFireToggleStateChanged(ZZ)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "BluetoothCastTile"

    const-string v1, "onBind()"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext is null"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    .line 264
    :cond_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onClick()V
    .locals 5

    const-string v0, "BluetoothCastTile"

    const-string v1, "onClick"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBlockedEdmSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->showItPolicyToast()V

    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_function_val"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_cast_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    if-ne v0, v1, :cond_5

    .line 208
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 218
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    invoke-static {v0, v4, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    xor-int/lit8 v0, v2, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    invoke-static {v0, v4, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 229
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    const-string v0, "BluetoothCastTile"

    const-string v1, "onCreate"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->doInit()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->setListening(Z)V

    .line 233
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->registerReceiver(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 238
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    const-string v0, "BluetoothCastTile"

    const-string v1, "onDestroy"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$SettingsObserver;->setListening(Z)V

    .line 241
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->registerReceiver(Z)V

    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 275
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    const-string v0, "BluetoothCastTile"

    const-string v1, "onStartListening"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
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

    .line 278
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->updateState(Z)V

    .line 279
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->semUpdateDetailView()V

    return-void
.end method

.method public onStopListening()V
    .locals 1

    .line 284
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    const-string p0, "BluetoothCastTile"

    const-string v0, "onStopListening"

    .line 285
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTileAdded()V
    .locals 3

    .line 246
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    const-string v0, "BluetoothCastTile"

    const-string v1, "onTileAdded"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
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

.method public onTileRemoved()V
    .locals 1

    .line 253
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    const-string p0, "BluetoothCastTile"

    const-string v0, "onTileRemoved"

    .line 254
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "BluetoothCastTile"

    const-string v1, "onUnBind()"

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 1

    .line 378
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 382
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->updateOnDetailView()Landroid/widget/RemoteViews;

    move-result-object p0

    goto :goto_0

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->updateOffDetailView()Landroid/widget/RemoteViews;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 360
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_cast_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    const-string p0, "BluetoothCastTile"

    const-string v0, "semGetSettingsIntent start"

    .line 580
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 587
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.BLUETOOTH_CAST_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 3

    .line 370
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

.method public semIsToggleButtonExists()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 2

    const-string v0, "BluetoothCastTile"

    const-string v1, "semSetToggleButtonChecked start"

    .line 593
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    .line 595
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->isBluetoothCastOn:Z

    const-string v0, "bluetooth_cast_mode"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
