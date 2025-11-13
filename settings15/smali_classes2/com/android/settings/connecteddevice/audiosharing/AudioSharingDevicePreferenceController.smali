.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final KEY:Ljava/lang/String; = "audio_sharing_device_list"

.field private static final KEY_AUDIO_SHARING_SETTINGS:Ljava/lang/String; = "connected_device_audio_sharing_settings"

.field private static final TAG:Ljava/lang/String; = "AudioSharingDevicePrefController"


# instance fields
.field private final mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private mAudioSharingSettingsPreference:Landroidx/preference/Preference;

.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mIntentHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$OkFu7nfXCaVjOR4YS3BxwB_EjeY(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->lambda$isFirstConnectedProfile$1(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$etHGHpUKQJ7ppNbjNAeeAueakho(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->lambda$isMediaDevice$0(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDialogHandler(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "audio_sharing_device_list"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mIntentHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    :goto_2
    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :goto_3
    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private handleDeviceClickFromIntent()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    const-string v1, "AudioSharingDevicePrefController"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v3, "BLUETOOTH_DEVICE"

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    const-string p0, "Skip handleDeviceClickFromIntent, device is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "handleDeviceClickFromIntent: connect"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    if-eqz v0, :cond_6

    const-string v0, "handleDeviceClickFromIntent: trigger dialog handler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->handleDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p0, "Skip handleDeviceClickFromIntent, fragment intent is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleOnProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const-string v1, "AudioSharingDevicePrefController"

    if-eqz v0, :cond_0

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_0

    const-string p0, "Ignore onProfileConnectionStateChanged, not the le assistant profile for le audio device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->isFirstConnectedProfile(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z

    move-result p2

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    const-string p0, "Ignore onProfileConnectionStateChanged, not the first connected profile for non le audio device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Start handling onProfileConnectionStateChanged for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    if-eqz p0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->handleDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V

    :cond_2
    return-void
.end method

.method private isFirstConnectedProfile(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda1;-><init>(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private isMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static lambda$isFirstConnectedProfile$1(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 1

    invoke-interface {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v0

    if-eq v0, p0, :cond_0

    iget-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

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

.method private static synthetic lambda$isMediaDevice$0(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "audio_sharing_device_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "connected_device_audio_sharing_settings"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAudioSharingSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAudioSharingSettingsPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mIntentHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "AudioSharingDevicePrefController"

    const-string v0, "displayPreference: profile ready, handleDeviceClickFromIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->handleDeviceClickFromIntent()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mIntentHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
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

    const-string p0, "audio_sharing_device_list"

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

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingBluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

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

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAudioSharingSettingsPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
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

.method public bridge synthetic onDeviceClick(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAudioSharingSettingsPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    const-string v1, "AudioSharingDevicePrefController"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->isMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Ignore onProfileConnectionStateChanged, not a media device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x1d

    if-ne p3, v2, :cond_2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->closeOpeningDialogsForLeaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void

    :cond_2
    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->mHostFragment:Landroidx/fragment/app/Fragment;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->getCachedBluetoothDeviceFromDialog(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->handleOnProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void

    :cond_7
    :goto_2
    const-string p0, "Ignore onProfileConnectionStateChanged, not connected state"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_3
    const-string p0, "Ignore onProfileConnectionStateChanged, not init correctly"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mIntentHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AudioSharingDevicePrefController"

    const-string v1, "onServiceConnected: handleDeviceClickFromIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->handleDeviceClickFromIntent()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mIntentHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingDevicePrefController"

    if-nez p1, :cond_0

    const-string p0, "Skip onStart(), feature is not supported."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-static {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isAudioSharingProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    const-string p1, "Register profile service listener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "onStart() Register callbacks."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->registerCallbacks(Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3
    :goto_0
    const-string p0, "Skip onStart(), profile is not ready."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingDevicePrefController"

    if-nez p1, :cond_0

    const-string p0, "Skip onStop(), feature is not supported."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "onStop() Unregister callbacks."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->unregisterCallbacks()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Skip onStop(), profile is not ready."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
.end method

.method public setDialogHandler(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    return-void
.end method

.method public setHostFragment(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method

.method public setIntentHandled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDevicePreferenceController;->mIntentHandled:Ljava/util/concurrent/atomic/AtomicBoolean;

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
