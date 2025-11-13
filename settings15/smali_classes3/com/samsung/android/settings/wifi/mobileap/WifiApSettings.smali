.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mBandController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;

.field public mContext:Landroid/content/Context;

.field public mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field public mDataUsageAllowed:Z

.field public mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

.field public mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mIsHotspotResetRequired:Z

.field public mLastConfigureButtonClickTime:J

.field public mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mNetworkNameController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

.field public mPasswordController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public final mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field public mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

.field public mWifiApAutoHotspotController:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

.field public mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

.field public mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

.field public mWifiApMobileDataSharedTodayPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

.field public mWifiApOtpSwitchController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

.field public mWifiApSettingQrInfoBottomView:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

.field public mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

.field public switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

    return-void
.end method


# virtual methods
.method public final getAppContext()Lcom/samsung/android/settings/bixby/AppContext;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/bixby/AppContext$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/AppContext$Builder;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string v4, "mobileHotspotEnabled"

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
    const-string v6, "MobileHotspot"

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

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const-string p0, "WifiApSettings"

    const-string p1, "getFragmentTitleResId()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f141821

    return p0

    :cond_0
    const p0, 0x7f14181f

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170222

    return p0
.end method

.method public final getWifiApConfiguration()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateWifiApConfiguration()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    return-object p0
.end method

.method public final launchWifiApEditSettingsActivity(ILjava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launching WifiApEditSettings activity with title: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mLastConfigureButtonClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const-string p0, "Avoiding Launching WifiApEditSettings activity within 500ms"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mLastConfigureButtonClickTime:J

    const-string v0, "intent_key_focus_item"

    invoke-static {v0, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xd48

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const-class v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "WifiApSettings"

    const-string v0, "onActivityCreated "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const-string v1, "TMO"

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f080ac6

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    :cond_2
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    const-string v3, "WifiApQrInfoBottomView"

    const-string v4, "WifiApQrInfoBottomView() - Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->removeAlphaColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomBar()V

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomNavigation()V

    const-string/jumbo v3, "sem_wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const-string v0, "VZW"

    const-string v3, "MTR"

    const-string v4, "ATT"

    invoke-static {v2, v1, v0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SPRINT"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettingQrInfoBottomView:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "onActivityResult() hit - requestCode: "

    const-string v1, ", resultCode: "

    const-string v2, "WifiApSettings"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "is_hotspot_rest_happened"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult() hit - is reset required after resuming activity : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApAutoHotspotController:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x262

    if-ne p1, v0, :cond_2

    const-string v0, "Cannot create Family sharing group from here."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;->setHost(Lcom/android/settings/SettingsPreferenceFragment;)V

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApAutoHotspotController:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/lite/WifiApLiteFamilySharingPreferenceController;

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApOtpSwitchController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApMobileDataSharedTodayPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBandController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNetworkNameController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WifiApSettings"

    const-string v0, "onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->initMHSFeature(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f14181f

    invoke-static {v1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "hotspot_help_description_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "hotspot_description_layout_preference"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpTextDescription()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f143323

    invoke-static {v0, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setHotspotHelpDescriptionLayoutPreferenceText: wifiApEnableHelpTextLength"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/text/SpannableString;

    const-string v3, " "

    invoke-static {v0, v3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f1414bf

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setMovementMethodForTitle() - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WifiApPreference"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mMovementMethodForTitle:Landroid/text/method/MovementMethod;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setPreferenceColor(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setPaddingInDp(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "connected_clients_preference_category"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "mobile_data_shared_preference_category"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "dummy_end_preference_category"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    const-string v0, "com.samsung.android.mdx"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "getActivityName: retrieved landing page = "

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "LinkToWindowsRelativeLinkActivity"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v3, "getActivityName: Landing activity is null or empty."

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getActivityName: Exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "ltw_instant_hotspot_tip_enabled"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    if-nez p1, :cond_2

    new-instance p1, Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0a02

    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    const v2, 0x7f0a1037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mTipContainer:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mTipContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string/jumbo v1, "top_level_wifi_settings"

    iput-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const v2, 0x7f14333c

    iput v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/widget/SecTipLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    new-instance p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "flowId"

    const-string v3, "9030"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-object v2, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iput-object v1, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    const v0, 0x7f1414da

    iput v0, p1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecTipLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getFooterView()Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mTipLinkView:Lcom/samsung/android/settings/widget/SecTipLinkView;

    iget-object v0, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mTipContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_3

    const-string p0, "The current screen doesn\'t have link data."

    const-string p1, "SecTipLinkView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecTipLinkView;->mParentView:Landroid/view/View;

    invoke-virtual {p0, p1, v4}, Lcom/android/settings/SettingsPreferenceFragment;->setFooterView(Landroid/view/View;Z)V

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkTargetAppInstalled: Exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreateDialog() - dialogId"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f15037c

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "WifiApSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    const-string v0, "WifiApSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v0, "WifiApSettings"

    const-string v1, "Navigate Up clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TETH_010"

    const-string v1, "8101"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "WifiApSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setIsHotspotScreenOpened(Landroid/content/Context;Z)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    const-string v0, "WifiApSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSemWifiApDataUsageUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$2;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/samsung/android/wifi/SemWifiManager;->registerClientListDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientListUpdateCallback;Ljava/util/concurrent/Executor;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates$1()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mIsHotspotResetRequired:Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftAp(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApOtpSwitchController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSwitchController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setIsHotspotScreenOpened(Landroid/content/Context;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 5

    const-string v0, "WifiApSettings"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string v3, "addSwitchChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->WIFIAP_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, v1, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v2, v1}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->isDataAllowed(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDataAllowed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataUsageAllowed:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const-string v2, "no_config_tethering"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const-string v1, "onStart: DISALLOW_CONFIG_TETHERING > this activity is finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f140fdd

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "onStart: isWifiTetheringEnabled false EDM, this activity is finished."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_8
    return-void
.end method

.method public final onStop()V
    .locals 3

    const-string v0, "WifiApSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSwitchEnabler:Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeSwitchChangeListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApDataSaver:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApDataSaver;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public final refreshConnectedPreferenceCategory(Ljava/util/List;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApMobileDataSharedTodayPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApMobileDataSharedTodayPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApMobileDataSharedTodayPreferenceController;->updateState(Ljava/util/List;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mMobileDataUsagePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHelpDescriptionLayoutPreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDescriptionPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApStaListDetail()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    const-string v0, "mConnectedDevices.size():"

    const-string v3, "WifiApSettings"

    invoke-static {p2, v0, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    new-instance p1, Landroidx/preference/Preference;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const p2, 0x7f1433ad

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_3

    :cond_3
    move v0, v2

    :goto_2
    if-ge v0, p2, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "(null)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1432f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    aget-object v7, v3, v2

    aget-object v8, v3, v1

    const/4 v9, 0x3

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mContext:Landroid/content/Context;

    iput-object v4, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mDeviceName:Ljava/lang/String;

    iput-object v7, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mMac:Ljava/lang/String;

    iput-object v8, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mIp:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V

    iput-object v3, v5, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MMM dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;->dateFormat:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x7f1409b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$2;

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedClient;)V

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConnectedClientsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final refreshPreferenceStates$1()V
    .locals 3

    const-string v0, "WifiApSettings"

    const-string/jumbo v1, "refreshPreferenceStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->setHelpTextDescription()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->updateWifiApConfiguration()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mNetworkNameController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardNetworkNameController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mPasswordController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashboardPasswordController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mBandController:Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDashBoardBandController;->updateState(Landroidx/preference/Preference;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshConnectedPreferenceCategory(Ljava/util/List;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettingQrInfoBottomView:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomBar()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomNavigation()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    const-string/jumbo v1, "refresh() - wifiApState: "

    const-string v2, "WifiApQrInfoBottomView"

    invoke-static {v0, v1, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final setHelpTextDescription()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a1041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f143323

    invoke-static {p0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getWifiApMaxClientFromFramework(Landroid/content/Context;)I

    move-result v1

    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_WIFISHARING:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120066

    goto :goto_0

    :cond_1
    const v2, 0x7f120065

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f120067

    goto :goto_1

    :cond_3
    const v2, 0x7f120064

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public final updateWifiApConfiguration()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updated WifiApConfiguration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mWifiApConfiguration:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiApSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
