.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "audio_sharing_main_switch"

.field private static final TAG:Ljava/lang/String; = "AudioSharingSwitchBarCtl"


# instance fields
.field private final mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field private final mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field final mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDeviceItemsForSharing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mGroupedConnectedDevices:Ljava/util/Map;
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

.field mIntentFilter:Landroid/content/IntentFilter;

.field private final mListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTargetActiveSinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Lx-yReG5pC5M6h4nCTxeADYJ_9o(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->lambda$updateSwitch$1(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aDJvDuTvoIqDSJlC3grM4IGt2Os(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->lambda$onCheckedChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$cfzhkEKG2gNiXVjaVh3B60k4c3U(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$4;[Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->lambda$showDialog$3(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$DialogEventListener;[Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oZzrB9cLuDTbMM-tbINE5f57-qs(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->lambda$updateSwitch$2()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleOnBroadcastReady(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->handleOnBroadcastReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSwitch(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->updateSwitch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;)V
    .locals 2

    const-string v0, "audio_sharing_main_switch"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mGroupedConnectedDevices:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mTargetActiveSinks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mDeviceItemsForSharing:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$3;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object p2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p1, :cond_1

    move-object p3, p2

    goto :goto_1

    :cond_1
    iget-object p3, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    :goto_1
    iput-object p3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :goto_2
    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private handleOnBroadcastReady()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mTargetActiveSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mDeviceItemsForSharing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x800

    const/16 v3, 0x826

    const/4 v4, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildAudioSharingDialogEventData(ZIIII)[Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mTargetActiveSinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "AudioSharingSwitchBarCtl"

    if-nez v1, :cond_0

    const-string v1, "handleOnBroadcastReady: automatically add source to active sinks."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mTargetActiveSinks:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v1, v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->addSourceToTargetSinks(Ljava/util/List;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v5, 0x792

    new-array v4, v4, [Landroid/util/Pair;

    invoke-virtual {v1, v3, v5, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mTargetActiveSinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_1

    const-string v0, "handleOnBroadcastReady: dialog fail to show due to null fragment."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mGroupedConnectedDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mDeviceItemsForSharing:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->showDialog([Landroid/util/Pair;)V

    return-void
.end method

.method private isBluetoothOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lambda$onCheckedChanged$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    return-void
.end method

.method private lambda$showDialog$3(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment$DialogEventListener;[Landroid/util/Pair;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogFragment;->sEventData:[Landroid/util/Pair;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    :cond_0
    return-void
.end method

.method private lambda$updateSwitch$1(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_1
    const-string p0, "updateSwitch, checked = "

    const-string v0, ", enabled = "

    const-string v1, "AudioSharingSwitchBarCtl"

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSwitch$2()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;ZZ)V

    invoke-static {v2, v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerCallbacks()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const-string v1, "AudioSharingSwitchBarCtl"

    if-nez v0, :cond_0

    const-string p0, "Skip registerCallbacks(). Feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "registerCallbacks()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Skip registerCallbacks(). Profile not support on this device."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showDialog([Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$4;[Landroid/util/Pair;)V

    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private startAudioSharing()V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->fetchConnectedDevicesByGroupId(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mGroupedConnectedDevices:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->buildOrderedConnectedLeadAudioSharingDeviceItem(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mDeviceItemsForSharing:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mTargetActiveSinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget-boolean v1, v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mIsActive:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mGroupedConnectedDevices:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;

    iget v0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceItem;->mGroupId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mTargetActiveSinks:Ljava/util/List;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mDeviceItemsForSharing:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p0, :cond_7

    const-string v0, "Sharing audio"

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mNewAppSourceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    const-string v1, "LocalBluetoothLeBroadcast"

    if-nez v0, :cond_2

    const-string p0, "The BluetoothLeBroadcast is null when starting the private broadcast."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeBroadcast;->getMaximumNumberOfBroadcasts()I

    move-result v2

    if-lt v0, v2, :cond_3

    const-string p0, "Skip starting the broadcast due to number limit."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mImproveCompatibility:Z

    const-string v4, "startBroadcast: language = null , programInfo = "

    const-string v5, ", broadcastName = "

    const-string v6, ", improveCompatibility = "

    invoke-static {v4, v2, v5, v0, v6}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setLanguage(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeAudioContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    new-instance v1, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;-><init>()V

    const/4 v2, 0x1

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setPreferredQuality(I)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeAudioContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v4

    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    if-eqz v3, :cond_5

    array-length v5, v3

    if-lez v5, :cond_5

    move-object v4, v3

    :cond_5
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v3, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/ImmutableList$Itr;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Itr;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->addSubgroupSettings(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothLeBroadcast;->startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private stopAudioSharing()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AudioSharingSwitchBarCtl"

    const-string v1, "Skip stopAudioSharing, already not broadcasting or broadcast not support."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p0, :cond_1

    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->stopBroadcast(I)V

    :cond_1
    return-void
.end method

.method private unregisterCallbacks()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const-string v1, "AudioSharingSwitchBarCtl"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unregisterCallbacks()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p0, "Skip unregisterCallbacks(). Profile not support on this device."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string p0, "Skip unregisterCallbacks(). Feature is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSwitch()V
    .locals 2

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

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

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "settings_need_connected_ble_device_for_broadcast"

    invoke-static {p1, p2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    const/4 p2, 0x2

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;I)V

    invoke-static {p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->startAudioSharing()V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "AudioSharingSwitchBarCtl"

    const-string v1, "Skip startAudioSharing, already broadcasting or not support."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->stopAudioSharing()V

    :goto_1
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

.method public onServiceConnected()V
    .locals 2

    const-string v0, "AudioSharingSwitchBarCtl"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->registerCallbacks()V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->updateSwitch()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->mAudioSharingDeviceVolumeGroupController:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDeviceVolumeGroupController;->onAudioSharingProfilesConnected()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mListener:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController$OnAudioSharingStateChangedListener;

    check-cast v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDashboardFragment;->onAudioSharingStateChanged()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const-string p0, "AudioSharingSwitchBarCtl"

    const-string v0, "onServiceDisconnected()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingSwitchBarCtl"

    if-nez p1, :cond_0

    const-string p0, "Skip register callbacks. Feature is not available."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->updateSwitch()V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    const-string p0, "Skip register callbacks. Profile is not ready."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->registerCallbacks()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "AudioSharingSwitchBarCtl"

    const-string p1, "Skip unregister callbacks. Feature is not available."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->unregisterCallbacks()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCallbacksRegistered(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingSwitchBarController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
