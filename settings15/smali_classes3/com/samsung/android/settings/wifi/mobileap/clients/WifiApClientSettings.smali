.class public Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field public dateFormat:Ljava/lang/String;

.field public final mBroadcastReceiver:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;

.field public mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

.field public mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

.field public mConnectedDurationInMillis:Ljava/lang/Long;

.field public mConnectedTime:Ljava/lang/Long;

.field public mContext:Landroid/content/Context;

.field public mDeviceName:Ljava/lang/String;

.field public mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

.field public final mErrSSID:Ljava/lang/String;

.field public mIp:Ljava/lang/String;

.field public mIsOtpClient:Z

.field public mMacAddress:Ljava/lang/String;

.field public mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field public mSSID:Ljava/lang/String;

.field public mSSIDLen:I

.field public mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

.field public final mSemWifiApClientUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

.field public mSetTimeLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

.field public mTempSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mTempSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSSID:Ljava/lang/String;

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mErrSSID:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSSIDLen:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedDurationInMillis:Ljava/lang/Long;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->dateFormat:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mBroadcastReceiver:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApClientSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xd48

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170213

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string v0, "WifiApQrInfoBottomView() - Start"

    const-string v1, "WifiApClientSettingsBottomView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mContext:Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mWifiApClientSettings:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mMacAddress:Ljava/lang/String;

    const-string v3, "initBottomBar() - Start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0a0299

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0a10

    iget-object v6, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v5, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    const-string v3, "initBottomNavigation() - Start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a0250

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v2, 0x7f0a0b36

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    const v2, 0x7f0a0ca9

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    invoke-static {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mPauseButton:Landroid/view/MenuItem;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mResumeButton:Landroid/view/MenuItem;

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "intent_key_connected_client_mac_detail"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "intent_key_connected_client_name_detail"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "WifiApClientSettings"

    const-string v0, "MAC details not found"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->setMacDetail(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->setHost(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->setMacDetail(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetTimeLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mDeviceName/mMacAddress "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideSecondHalfOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiApClientSettings"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpConnectedClient(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIsOtpClient:Z

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientRecentConnectionTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientActiveSessionDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedDurationInMillis:Ljava/lang/Long;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientIpAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getDeviceType()I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientDetails:Lcom/samsung/android/wifi/SemWifiApClientDetails;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->getClientDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "client_data_usage_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "progress_bar_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v0, 0x1

    iput v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceType:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "setTextSizeInSp() - : 16.0"

    const-string v2, "WifiApPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x41800000    # 16.0f

    iput v1, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextSizeInSp:F

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f060b6d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setTitleTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setPreferenceColor(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsNonWhiteBackgroundRequired:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    const-string/jumbo p1, "ro.build.version.oneui"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const v0, 0xeac4

    if-lt p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIsOtpClient:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080aba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryIcon4:Landroid/graphics/drawable/Drawable;

    if-eq v1, v0, :cond_1

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryIcon4:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f1433c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary4Text:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary4Text:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0xeac4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v0, v2, :cond_1

    const v0, 0x7f1409ba

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v4, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v2, 0x7f080ab9

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f1414be

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f08096c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TETH_014"

    const-string v3, "WifiApClientSettings"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "Navigate Up clicked"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "8101"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "More info Menu Button clicked"

    invoke-static {v3, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "8082"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0a1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0a117e

    const v3, 0x7f143393

    const v5, 0x7f0a117d

    const v6, 0x7f1435aa

    const v7, 0x7f0a109a

    const v8, 0x7f0a1099

    if-eqz v1, :cond_2

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u200f"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\u200e"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mIp:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedTime:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->dateFormat:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->dateFormat:Ljava/lang/String;

    const-string v5, " "

    invoke-static {v2, v3, v5, v1}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a116b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    :cond_3
    const v1, 0x7f0a1169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mConnectedDurationInMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    const-wide/16 v5, 0xe10

    div-long v7, v2, v5

    rem-long/2addr v2, v5

    const-wide/16 v5, 0x3c

    div-long v9, v2, v5

    rem-long/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f140d33

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v4

    :cond_4
    const-string p1, "Edit info Menu Button clicked"

    invoke-static {v3, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    const v5, 0x7f143320

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f141fab

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f1408bf

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mContext:Landroid/content/Context;

    iput-object v5, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mTitle:Ljava/lang/String;

    iput-object v6, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mPositiveButtonText:Ljava/lang/String;

    iput-object v7, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mNegativeButtonText:Ljava/lang/String;

    iput-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;->mDialogButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mEditDeviceNameDialog:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string p0, "8096"

    invoke-static {v2, p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setIsHotspotScreenOpened(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->unregisterClientDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setIsHotspotScreenOpened(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->refreshConnectedPreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSemWifiApClientUpdateCallback:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$1;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/wifi/SemWifiManager;->registerClientDataUsageCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApClientUpdateCallback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mBroadcastReceiver:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mBroadcastReceiver:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings$2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public final refreshConnectedPreferences()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientMobileDataConsumedDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDataLimitDetail(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v4

    double-to-float v4, v4

    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->PROGRESS_COLORS:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const-string v5, "mDeviceName"

    invoke-direct {v3, v5, v4}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInLocaleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->mUsageValueInBytes:J

    long-to-double v7, v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    const-string/jumbo v8, "unused_data_name"

    if-lez v7, :cond_0

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v9

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApDataUsageConfig;->getUsageValueInMB()D

    move-result-wide v1

    sub-double/2addr v9, v1

    double-to-float v1, v9

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    invoke-direct {v2, v8, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/16 v7, 0x21

    invoke-virtual {v1, v2, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v5, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsagePreference:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSpannableSummary(Landroid/text/SpannableString;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    const-string v3, "entry iteration start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;

    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "entry: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryValue:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    iget v4, v2, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryValue:F

    add-float/2addr v3, v4

    iput v3, v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataTotalSum:F

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackedProgressBarEntry;->mProgressEntryName:Ljava/lang/String;

    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x14

    if-ge v5, v2, :cond_2

    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    add-int/lit8 v3, v5, 0x1

    aput v4, v2, v5

    move v5, v3

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mStackedDataArray:[F

    aget v3, v2, v5

    add-float/2addr v3, v4

    aput v3, v2, v5

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->TAG:Ljava/lang/String;

    const-string v2, "entry iteration end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mMacAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApConnectedDeviceUtils;->getWifiApClientDetails(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApClientDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiApClientDetails;->isClientDataPausedByUser()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;->mIsDisabledProgressBar:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mClientDataUsageProgressBar:Lcom/samsung/android/settings/wifi/mobileap/views/WifiApStackedProgressBarPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetDataLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetDataLimitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSettings;->mSetTimeLimitPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientSetTimeLimitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
