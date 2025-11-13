.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final PREF_KEY:Ljava/lang/String; = "audio_sharing_stream_name"

.field private static final TAG:Ljava/lang/String; = "AudioSharingNamePreferenceController"


# instance fields
.field private final mAudioSharingNameTextValidator:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNameTextValidator;

.field private final mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field private final mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$Bd8sfJoPkRr2nSby99qUmxfpkGM(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->lambda$updateQrCodeIcon$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GMAVt653B6CXNwXGWBrDehoK2yQ(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->lambda$updateBroadcastName$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Lk7MKatH7Qxpy1fjcqLvVj-Xx-M(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->lambda$onPreferenceChange$0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kKryw65uU70PrwivW7cy2cbz4h4(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->lambda$updateBroadcastName$1(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateQrCodeIcon(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->updateQrCodeIcon(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    :cond_1
    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNameTextValidator;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mAudioSharingNameTextValidator:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNameTextValidator;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private lambda$onPreferenceChange$0(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setBroadcastName(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-virtual {v1, p1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->setProgramInfo(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    const-string v2, "LocalBluetoothLeBroadcast"

    if-nez v1, :cond_0

    const-string p1, "The BluetoothLeBroadcast is null when updating the broadcast."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mProgramInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBuilder:Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v4

    iput-object v4, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeAudioContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    new-instance v4, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    invoke-direct {v4}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v4

    new-instance v5, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;-><init>()V

    iget-object v6, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBluetoothLeAudioContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->addSubgroupSettings(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateBroadcast: broadcastName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " programInfo = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    iget p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    invoke-virtual {v1, p1, v4}, Landroid/bluetooth/BluetoothLeBroadcast;->updateBroadcast(ILandroid/bluetooth/BluetoothLeBroadcastSettings;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->updateBroadcastName()V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x797

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateBroadcastName$1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private lambda$updateBroadcastName$2()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private lambda$updateQrCodeIcon$3(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    if-eqz p0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;->mShowQrCodeIcon:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method private registerCallbacks()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v1, "AudioSharingNamePreferenceController"

    if-nez v0, :cond_0

    const-string p0, "Skip register callbacks, profile not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Register callbacks"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method private updateBroadcastName()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_0
    return-void
.end method

.method private updateQrCodeIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Z)V

    invoke-static {v0, v1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->updateBroadcastName()V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->updateQrCodeIcon(Z)V

    :cond_0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "audio_sharing_stream_name"

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

.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mAudioSharingNameTextValidator:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNameTextValidator;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mPreference:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->registerCallbacks()V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->updateBroadcastName()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->updateQrCodeIcon(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

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

    const-string v0, "AudioSharingNamePreferenceController"

    if-nez p1, :cond_0

    const-string p0, "Skip register callbacks, feature not support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Skip register callbacks, profile not ready"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->registerCallbacks()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingNamePreferenceController"

    if-nez p1, :cond_0

    const-string p0, "Skip unregister callbacks, feature not support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Unregister callbacks"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingNamePreferenceController;->mCallbacksRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    const/4 p0, 0x0

    return p0
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
