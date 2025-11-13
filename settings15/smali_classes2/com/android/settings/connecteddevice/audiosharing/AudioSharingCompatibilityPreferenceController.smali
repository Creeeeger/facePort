.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "audio_sharing_stream_compatibility"

.field private static final TAG:Ljava/lang/String; = "AudioSharingCompatibilityPrefController"


# instance fields
.field private final mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field final mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Landroidx/preference/TwoStatePreference;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$TXf86WKiMAD4VYQfBvI4vSsCEDA(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->lambda$onServiceConnected$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$U9b0S6szjiiZsUkNF66IANIvFgw(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->lambda$updateEnabled$1(ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqm9DbAv6LhIazc2hqfktD2SFhA(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;)V
    .locals 2

    const v0, 0x7f1404a6

    const v1, 0x7f1404a5

    invoke-direct {p0, v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->lambda$updateEnabled$2(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnabled(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->updateEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    sget-object p2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    :goto_1
    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$onServiceConnected$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->updateEnabled()V

    return-void
.end method

.method private synthetic lambda$updateEnabled$1(ZII)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateEnabled$2(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;ZII)V

    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerCallbacks()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v1, "AudioSharingCompatibilityPrefController"

    if-nez v0, :cond_0

    const-string p0, "Skip register callbacks, profile not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Register callbacks"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method private updateEnabled()V
    .locals 2

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->updateEnabled()V

    return-void
.end method

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

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "audio_sharing_stream_compatibility"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mImproveCompatibility:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
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
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->registerCallbacks()V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;I)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingCompatibilityPrefController"

    if-nez p1, :cond_0

    const-string p0, "Skip register callbacks, feature not support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Skip register callbacks, profile not ready"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->registerCallbacks()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingCompatibilityPrefController"

    if-nez p1, :cond_0

    const-string p0, "Skip unregister callbacks, feature not support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Unregister callbacks"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p0, "Skip unregister callbacks, profile not ready"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setCallbacksRegistered(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mImproveCompatibility:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setImproveCompatibility(ZZ)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingCompatibilityPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x789

    invoke-virtual {v0, p0, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string p0, "AudioSharingCompatibilityPrefController"

    const-string p1, "Skip setting improveCompatibility, unchanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
