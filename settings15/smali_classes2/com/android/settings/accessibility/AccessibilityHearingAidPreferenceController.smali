.class public Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityHearingAidPreferenceController"


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mHearingAidPreference:Landroidx/preference/Preference;

.field protected final mHelper:Lcom/android/settings/accessibility/HearingAidHelper;

.field private final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$fZYhAzhel54KPxsSSki88jO-ei8(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->lambda$refreshSummary$0(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnlQyLkHssk0D9iESUiKmax4Rv8(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->lambda$refreshSummary$1(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHearingAidPreference(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$1;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    new-instance p2, Lcom/android/settings/accessibility/HearingAidHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/accessibility/HearingAidHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHelper:Lcom/android/settings/accessibility/HearingAidHelper;

    return-void
.end method

.method private getConnectedHearingAidDeviceNum()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHelper:Lcom/android/settings/accessibility/HearingAidHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/HearingAidHelper;->getConnectedHearingAidDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private static lambda$loadSummary$2(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$refreshSummary$0(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshSummary$1(Landroidx/preference/Preference;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->loadSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;-><init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private launchHearingAidPage()V
    .locals 3

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/accessibility/AccessibilityHearingAidsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private loadSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHelper:Lcom/android/settings/accessibility/HearingAidHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/HearingAidHelper;->getConnectedHearingAidDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14072f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHelper:Lcom/android/settings/accessibility/HearingAidHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/HearingAidHelper;->isHearingAidSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->launchHearingAidPage()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/android/settings/accessibility/HearingAidUtils;->launchHearingAidPairingDialog(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    :cond_1
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

.method public bridge synthetic onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHelper:Lcom/android/settings/accessibility/HearingAidHelper;

    iget-object v0, v0, Lcom/android/settings/accessibility/HearingAidHelper;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mIsProfileReady:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.HAP_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHelper:Lcom/android/settings/accessibility/HearingAidHelper;

    iget-object v0, v0, Lcom/android/settings/accessibility/HearingAidHelper;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mIsProfileReady:Z

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public setPreference(Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->mHearingAidPreference:Landroidx/preference/Preference;

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
