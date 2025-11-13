.class public final Lcom/samsung/android/settings/bluetooth/BluetoothSettings;
.super Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final mAdvancedDeltaTargets:Ljava/util/List;

.field public static mIsDeviceProfileShown:Z

.field public static mIsForegroundBtSettings:Z

.field public static mLocalAdapterName:Ljava/lang/String;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAppBarView:Landroid/view/View;

.field public final mBluetoothCastAdapterCallback:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;

.field public mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field public final mDeviceProfilesListener:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;

.field public final mHandler:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;

.field public mInitiateDiscoverable:Z

.field public mInitiateScan:Z

.field public mIsBtScanDialog:Z

.field public mIsEmergencyMode:Z

.field public mIsRegistered:Z

.field public mIsSupportTips:Z

.field public mPolicyEnabled:Z

.field public final mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;

.field public mResumeTime:J

.field public mScan:Landroid/view/MenuItem;

.field public mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

.field public mScanTipsMark:Landroid/view/MenuItem;

.field public mScreenId:Ljava/lang/String;

.field public final mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mTipHandler:Landroid/os/Handler;

.field public mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final tipTimerRunnable:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "XAS"

    const-string v2, "VZW"

    const-string v3, "SPR"

    const-string v4, "VMU"

    const-string v5, "BST"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$5;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothCastAdapterCallback:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mHandler:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;

    return-void
.end method


# virtual methods
.method public final addDeviceCategory(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mFilter:[Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->addCachedDevices$1()V

    :cond_0
    return-void
.end method

.method public final addPreferencesForActivity()V
    .locals 0

    return-void
.end method

.method public final getAppContext()Lcom/samsung/android/settings/bixby/AppContext;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v4, "bluetoothEnabled"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p0, v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;->mLLMContext:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v6, "BluetoothSettings"

    if-eqz v4, :cond_2

    const-string v4, "[]"

    invoke-static {v6, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-le v4, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;->build()Lcom/samsung/android/settings/bixby/AppContext;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-class p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170068

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "top_level_bluetooth_upsm"

    return-object p0

    :cond_0
    const-string/jumbo p0, "top_level_connections"

    return-object p0
.end method

.method public final initDevicePreference(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init pref:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final moveToBluetoothOptionMenu(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    new-instance p3, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    iget-object v0, p3, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object p2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {p3, p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothSettings"

    const-string/jumbo p2, "moveToBtOptionMenu() :: Launching with intent"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityCreated :: mInitiateScan : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    const-string v3, "BluetoothSettings"

    invoke-static {p1, v2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v2, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v3, p1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object p1, v3, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-object v2, p1, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-boolean v2, v2, Lcom/android/settings/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setChecked(Z)V

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->setEnabled(Z)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->getSwitch()Landroidx/appcompat/widget/SeslToggleSwitch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->requestFocus()Z

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onAttach, mIsBtScanDialog : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne p1, v2, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->showSemTipPopup(Z)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    if-ne p1, v2, :cond_2

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    return-void
.end method

.method public final onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    return-void
.end method

.method public final onCastDiscoveryStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;->update()V

    :cond_0
    return-void
.end method

.method public final onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;I)V
    .locals 0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isBusy()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mErrorMsg:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->showSemTipPopup(Z)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setLayoutParams()V

    :cond_1
    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "BluetoothSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f141fbd

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f141fbe

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    if-nez v0, :cond_2

    move p1, v1

    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->SCANNING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {p1, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->showSemTipPopup(Z)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->resetCachedDevices()V

    :cond_4
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f080891

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const-string v6, ""

    invoke-interface {p1, v1, v5, v1, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f14223e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x6

    invoke-interface {p1, v1, v3, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    if-eqz v2, :cond_4

    const v2, 0x7f142ab3

    goto :goto_1

    :cond_4
    const v2, 0x7f1407c4

    :goto_1
    invoke-interface {p1, v1, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    :goto_2
    move v0, v5

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "persist.bluetooth.enableinbandringing"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110285

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v2, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->isSupportSoftPhone()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    move v0, v1

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    const-wide/32 v3, 0xdcc6cc8

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result v2

    const v3, 0x7f142196

    const/4 v4, 0x5

    if-eqz v2, :cond_b

    const v2, 0x7f140a79

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz v0, :cond_a

    invoke-interface {p1, v1, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {p1, v1, v7, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    :cond_a
    invoke-interface {p1, v1, v7, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    :cond_b
    if-eqz v0, :cond_c

    invoke-interface {p1, v1, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_c
    :goto_4
    invoke-static {}, Landroid/sysprop/BluetoothProperties;->isProfileBapBroadcastSourceEnabled()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x7

    const v2, 0x7f142234

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mRestoredRetryDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchType:Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothEnabler$BluetoothSwitchType;->mSwitchObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iget-object v0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    iget-object v1, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p0, "Cannot cancelDiscovery"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "cancelDiscovery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCastAdapter:Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->cancelDiscovery()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 5

    const-string/jumbo v0, "onDeviceBondStateChanged :: bondState = "

    const-string v1, "BluetoothSettings"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_6

    const/16 v0, 0xa

    if-eq p2, v2, :cond_0

    if-ne p2, v0, :cond_6

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-direct {v1, v3, p1, v4}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothListController;)V

    if-eq p2, v2, :cond_2

    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    iget v3, v3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mMaxCount:I

    if-lt v4, v3, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->initDevicePreference(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V

    :cond_3
    :goto_0
    iget-boolean p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-nez p1, :cond_7

    if-ne p2, v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->add(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->delete(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_4
    if-ne p2, v0, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->delete(Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_5
    const-string p0, "Activity is null, cannot create SecBluetoothDevicePreference"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedUpdatePreference()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x1f00

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    :goto_0
    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForSAlogging()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Personal Device"

    :goto_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    const v3, 0x7f141fba

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f140e89

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f140e8a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v2, :cond_6

    monitor-enter v2

    :try_start_0
    iget-object v4, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mSppProfile:Lcom/samsung/android/settingslib/bluetooth/SppProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "CachedBluetoothDevice"

    const-string v3, "isSppOnlyDevice :: true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140e8b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140c3b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    const/16 v3, 0xc

    if-eqz v2, :cond_9

    iget v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140e9e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140e9d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    iget v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-ne v0, v3, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140ea7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140ea6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V

    goto :goto_6

    :cond_b
    const-string p0, "BluetoothSettings"

    const-string/jumbo p1, "onDevicePreferenceClick() - cachedDevice is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "BluetoothSettings"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140eb7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140eb1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f142234

    const-string v1, "com.samsung.settings.BLUETOOTH_BROADCAST_SOURCE"

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const-string v3, "disableReason"

    const-string v4, "MORE_TIPS"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mTipsIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140eb6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz p1, :cond_5

    const-string p0, "It is not user action!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140eaa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f142196

    const-string v1, "com.samsung.settings.BLUETOOTH_ADVANCED_SETTINGS"

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140eae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    sget-boolean p1, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    :try_start_0
    const-string p1, "com.android.bluetooth"

    const-string v0, "Bluetooth"

    const-string v1, "22o85f4b60"

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->getContactUsIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "faqUrl"

    const-string/jumbo v1, "voc://view/categories"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_1
    return v2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string/jumbo p1, "onOptionsItemSelected :: Stop scanning"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140c4a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    :cond_8
    const-string v0, "Button"

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string/jumbo p1, "onOptionsItemSelected :: Start scanning"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140c49

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140ebd

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v2

    :cond_b
    const-string/jumbo p1, "onOptionItemSelected() called for tips"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->fireTips(Landroid/content/Context;)V

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140ebe

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final onPause()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "BluetoothSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mResumeTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141fba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140e91

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    iget v0, v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mMaxCount:I

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_le_broadcast_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setBadgeText(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public final onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onProfileStateChanged :: cachedDevice - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-ne p4, v0, :cond_4

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedMembers()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p3, :cond_1

    iget p4, p3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    add-int/2addr p4, v0

    iput p4, p3, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PAN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f1407e1

    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 p0, 0x2

    if-ne p3, p0, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mErrorMsg:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final onResume()V
    .locals 10

    const-string v0, "CursorWindowAllocationException"

    const-string v1, "CursorIndexOutOfBoundsException"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mResumeTime:J

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    const-string v2, "BluetoothSettings"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "isDiscoverableEnabled"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "isDiscoverableEnabled"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_2
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_0
    :goto_4
    move v0, v4

    :goto_5
    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    :cond_1
    const-string v1, "isDiscoverableEnabled = "

    const-string v3, " mPolicyEnabled = "

    invoke-static {v1, v3, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->removeAllGroupDevices(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->updateEmptyView(Z)V

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mGuideView:Landroid/widget/TextView;

    const v1, 0x7f140711

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->updateEmptyView(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDataSetChanged()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-virtual {p0, v0, v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSwitchBar;->setProgressBarVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->BLUETOOTH_CAST_DISALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onScanningStateChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onScanningStateChanged :: is start scanning "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f142220

    goto :goto_0

    :cond_0
    const v0, 0x7f142223

    :goto_0
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalStateException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setProgressBarVisible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    const v1, 0x7f142ab3

    goto :goto_2

    :cond_3
    const v1, 0x7f1407c4

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_4
    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->removeSelectedGroupDevices()V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_7
    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onStart()V

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothCastAdapterCallback:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;

    iget-object v3, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->TAG:Ljava/lang/String;

    const-string v4, "callback added"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    if-nez v0, :cond_5

    const-string v0, "com.android.settings.DEVICE_NAME_CHANGED"

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-static {v0, v2}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    :cond_5
    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onStop()V

    const-string v0, "BluetoothSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    const/16 v2, 0x1b

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/Utils;->insertMDMEventLog(Landroid/content/Context;I)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_1

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslSwitchBar;->setProgressBarVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    const v2, 0x7f1407c4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mReceiver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothCastAdapterCallback:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;

    iget-object v0, v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final showSemTipPopup(Z)V
    .locals 5

    const-string/jumbo v0, "showTipPopup_"

    const-string v1, "BluetoothSettings"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_bubble_tips_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;ZI)V

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x258

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    const-wide/16 v0, 0x1b58

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final startScanning()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p0, :cond_2

    iget v2, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    :cond_2
    return v0
.end method

.method public final updateContent(IZZ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateContent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startScan = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f140711

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v3

    goto/16 :goto_5

    :pswitch_0
    const v0, 0x7f140815

    goto/16 :goto_5

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "BluetoothListController"

    const-string/jumbo v5, "removeAll() - Triggered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    iget-object v4, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->removeAll()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->updateEmptyView(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_name"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    const-string/jumbo v4, "updateDeviceName :: change device name to "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const-string/jumbo v4, "\u200e"

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    :cond_2
    sget-object p1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readRestoredDevices()V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    instance-of p3, p3, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1406c0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1407e3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    if-eqz p3, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f140749

    invoke-virtual {p3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f140748

    invoke-virtual {p3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f14074a

    invoke-virtual {p3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f140747

    invoke-virtual {p3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "getGuideMessage :: my device name set to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p3, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mGuideView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "addCachedCastDevices "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DeviceListPreferenceFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p3, p3, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p3, v3}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedVi(Z)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-super {p0, p3}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->setNeedVi(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;->update()V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;->mPreferenceList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mCastListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothCastListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    sget-object p3, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-virtual {p0, p1, p3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mPairedListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothPairedListAdapter;

    sget-object p3, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-virtual {p0, p1, p3, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    sget-object p3, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$AllFilter;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    if-eqz p2, :cond_d

    const-string/jumbo p1, "updateContent :: startScanning()"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->removeSelectedGroupDevices()V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v3, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mHandler:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p2, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->addCachedDevices$1()V

    :cond_c
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    :cond_d
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    const/16 p2, 0x17

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mIsPickerDialog:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz p1, :cond_f

    const-string/jumbo p1, "updateContent :: set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    const/16 p2, 0x1a

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/Utils;->insertMDMEventLog(Landroid/content/Context;I)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    const/16 p3, 0x46

    invoke-static {p1, p3}, Lcom/android/settings/bluetooth/Utils;->insertMDMEventLog(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p1

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_f
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivityQP()Z

    move-result p1

    if-nez p1, :cond_10

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    :cond_10
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    const v0, 0x7f1407c5

    goto :goto_5

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_11

    const p1, 0x7f1421f4

    goto :goto_4

    :cond_11
    const p1, 0x7f1421f3

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_5

    :cond_12
    move v0, p1

    :goto_5
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->removeAllGroupDevices(Z)V

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mGuideView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->updateEmptyView(Z)V

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_14
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_15

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p0, :cond_15

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SeslSwitchBar;->setProgressBarVisible(Z)V

    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
