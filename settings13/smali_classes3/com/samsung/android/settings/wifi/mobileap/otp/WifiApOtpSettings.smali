.class public Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiApOtpSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static TAG:Ljava/lang/String;

.field private static final XML_PREFERENCE_SCREEN:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

.field private mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mWifiApOtpSettingsPasswordPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

.field private mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->TAG:Ljava/lang/String;

    .line 39
    sget v0, Lcom/android/settings/R$xml;->sec_wifi_ap_one_time_password_settings:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->XML_PREFERENCE_SCREEN:I

    .line 154
    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 120
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 115
    sget p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->XML_PREFERENCE_SCREEN:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 77
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;-><init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApOtpSettingsPasswordPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    .line 57
    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "otp_description_layout_preference"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget p1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 68
    sget p1, Lcom/android/settings/R$string;->wifi_ap_you_can_share_this_password_description:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 110
    :cond_0
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 91
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->update()V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->updatePreferences()V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 83
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 99
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 136
    sget-object p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eq p1, p2, :cond_0

    .line 138
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setOtpPasswordEnabled(Landroid/content/Context;Z)V

    .line 139
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->resetSoftApWithoutDelay(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public updatePreferences()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApOtpSettingsPasswordPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->update()V

    return-void
.end method
