.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;
.super Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;
    }
.end annotation


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "calls_and_alarms"

.field private static final TAG:Ljava/lang/String; = "CallsAndAlarmsPreferenceController"


# instance fields
.field private final mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field final mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mCacheManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDeviceItemsInSharingSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field mGroupedConnectedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$1BN17LjYKrbgViT7jhlH5yXELdY(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->lambda$updateSummary$2(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4eSo0EUfkNXGQt8pFu8Ze61cq3g(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->lambda$updateSummary$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$daAsxkCGCiW_Bl4JTQOLFy1NbQI(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->lambda$displayPreference$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lnXZrbWYU_WCNJGsisBf74-cehE(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->lambda$logCallAudioDeviceChange$4(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSummary(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->updateSummary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "calls_and_alarms"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mGroupedConnectedDevices:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mDeviceItemsInSharingSession:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_0
    if-nez v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    :goto_1
    iput-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :goto_2
    iput-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    :goto_3
    iput-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCacheManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$FallbackDeviceGroupIdSettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$FallbackDeviceGroupIdSettingsObserver;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private lambda$displayPreference$0(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_le_broadcast_fallback_active_group_id"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget p1, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mGroupId:I

    const-string v1, "CallsAndAlarmsPreferenceController"

    if-ne p1, v0, :cond_0

    const-string p0, "Skip set fallback active device: unchanged"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mGroupedConnectedDevices:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getLeadDevice(Ljava/util/List;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set fallback active device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()V

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->logCallAudioDeviceChange(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_1
    const-string p0, "Fail to set fallback active device: no lead device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private lambda$displayPreference$1(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p0, "CallsAndAlarmsPreferenceController"

    const-string p1, "Dialog fail to show due to null host."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->updateDeviceItemsInSharingSession()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mDeviceItemsInSharingSession:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    :cond_1
    return v0
.end method

.method private synthetic lambda$logCallAudioDeviceChange$4(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 8

    sget-object v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->UNKNOWN:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCacheManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz v1, :cond_6

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getMostRecentlyConnectedDevices()Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCacheManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v7, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->getGroupId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    if-eq v6, v2, :cond_2

    if-ne v6, p1, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    if-ne v6, p2, :cond_2

    move v5, v3

    :cond_2
    :goto_2
    if-eq v4, v2, :cond_3

    if-eq v5, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    if-eq v4, v2, :cond_6

    if-eq v5, v2, :cond_6

    if-ge v4, v5, :cond_5

    sget-object p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->CONNECTED_LATER:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    :goto_4
    move-object v0, p1

    goto :goto_5

    :cond_5
    sget-object p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;->CONNECTED_EARLIER:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$ChangeCallAudioType;

    goto :goto_4

    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 p2, 0x78a

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method private lambda$updateSummary$2(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mName:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140480

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateSummary$3()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private registerCallbacks()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const-string v1, "CallsAndAlarmsPreferenceController"

    if-nez v0, :cond_0

    const-string p0, "Skip registerCallbacks(). Feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "registerCallbacks()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_le_broadcast_fallback_active_group_id"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Skip registerCallbacks(). Init is not ready: eventManager = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", contentResolver"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private unregisterCallbacks()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const-string v1, "CallsAndAlarmsPreferenceController"

    if-nez v0, :cond_0

    const-string p0, "Skip unregisterCallbacks(). Feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unregisterCallbacks()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Skip unregisterCallbacks(). Init is not ready."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDeviceItemsInSharingSession()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->fetchConnectedDevicesByGroupId(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mGroupedConnectedDevices:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildOrderedConnectedLeadAudioSharingDeviceItem(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mDeviceItemsInSharingSession:Ljava/util/List;

    return-void
.end method

.method private updateSummary()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->updateDeviceItemsInSharingSession()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_le_broadcast_fallback_active_group_id"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "CallsAndAlarmsPreferenceController"

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mDeviceItemsInSharingSession:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget v4, v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mGroupId:I

    if-ne v4, v0, :cond_0

    const-string v2, "updatePreference: set summary to fallback group "

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string v0, "updatePreference: set empty summary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;I)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->updateSummary()V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
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

    const-string p0, "calls_and_alarms"

    return-object p0
.end method

.method public getSettingsObserver()Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

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

.method public init(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

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

.method public logCallAudioDeviceChange(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAutoOnStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p1, 0x1d

    if-ne p3, p1, :cond_0

    const-string p1, "CallsAndAlarmsPreferenceController"

    const-string p2, "updatePreference, LE_AUDIO_BROADCAST_ASSISTANT is disconnected."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->updateSummary()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->registerCallbacks()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->unregisterCallbacks()V

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

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCallAudioPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
