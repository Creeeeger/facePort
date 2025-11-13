.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;
.super Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "audio_sharing_device_volume_group"

.field private static final TAG:Ljava/lang/String; = "AudioSharingDeviceVolumeGroupController"


# instance fields
.field private final mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

.field mVolumeControlCallback:Landroid/bluetooth/BluetoothVolumeControl$Callback;

.field private mVolumePreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YHu6WLpqXNJeSwNYvGaRReBSatw(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->lambda$onDeviceAdded$0(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBtManager(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmValueMap(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mValueMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVolumePreferences(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumePreferences:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetAudioVolumeIfNeeded(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->getAudioVolumeIfNeeded(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPreferenceOrderForDevice(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->getPreferenceOrderForDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio_sharing_device_volume_group"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumePreferences:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mValueMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControlCallback:Landroid/bluetooth/BluetoothVolumeControl$Callback;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :goto_1
    iput-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mVolumeControlProfile:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    :goto_2
    iput-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$SettingsObserver;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getAudioVolumeIfNeeded(I)I
    .locals 3

    if-ltz p1, :cond_0

    return p1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    sub-int/2addr v1, v2

    int-to-float v0, v1

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fail to fetch current music stream volume, error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioSharingDeviceVolumeGroupController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private getPreferenceOrderForDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 2

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "bluetooth_le_broadcast_fallback_active_group_id"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static lambda$onDeviceAdded$0(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method private registerCallbacks()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const-string v1, "AudioSharingDeviceVolumeGroupController"

    if-nez v0, :cond_0

    const-string p0, "Skip registerCallbacks(). Feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "registerCallbacks()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControlCallback:Landroid/bluetooth/BluetoothVolumeControl$Callback;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mService:Landroid/bluetooth/BluetoothVolumeControl;

    if-nez v0, :cond_2

    const-string v0, "VolumeControlProfile"

    const-string v1, "Proxy not attached to service. Cannot register callback."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothVolumeControl;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothVolumeControl$Callback;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_le_broadcast_fallback_active_group_id"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "Skip registerCallbacks(). Profile is not ready."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterCallbacks()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const-string v1, "AudioSharingDeviceVolumeGroupController"

    if-nez v0, :cond_0

    const-string p0, "Skip unregister callbacks. Feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unregisterCallbacks()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControl:Lcom/android/settingslib/bluetooth/VolumeControlProfile;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumeControlCallback:Landroid/bluetooth/BluetoothVolumeControl$Callback;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/VolumeControlProfile;->mService:Landroid/bluetooth/BluetoothVolumeControl;

    if-nez v0, :cond_2

    const-string v0, "VolumeControlProfile"

    const-string v1, "Proxy not attached to service. Cannot unregister callback."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothVolumeControl;->unregisterCallback(Landroid/bluetooth/BluetoothVolumeControl$Callback;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "Skip unregisterCallbacks(). Profile is not ready."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "audio_sharing_device_volume_group"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_1
    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "audio_sharing_device_volume_group"

    return-object p0
.end method

.method public getSettingsObserver()Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onAudioSharingProfilesConnected()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->registerCallbacks()V

    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumePreferences:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    instance-of v0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iget-object v0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->getPreferenceOrderForDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumePreferences:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p1, Lcom/android/settings/widget/SeekBarPreference;->mProgress:I

    if-lez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mValueMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->getAudioVolumeIfNeeded(I)I

    move-result v1

    const-string v2, "onDeviceAdded: set volume to "

    const-string v3, " for "

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioSharingDeviceVolumeGroupController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;II)V

    invoke-static {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onDeviceClick(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    instance-of v0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumePreferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mVolumePreferences:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDeviceRemoved: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_2

    const-string p0, "null"

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "AudioSharingDeviceVolumeGroupController"

    invoke-static {p1, p0, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->registerCallbacks()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->unregisterCallbacks()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setCallbacksRegistered(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setDeviceUpdater(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeControlUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
.end method

.method public setPreferenceGroup(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public setVolumeMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mValueMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public updateVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->updateVisibility()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
