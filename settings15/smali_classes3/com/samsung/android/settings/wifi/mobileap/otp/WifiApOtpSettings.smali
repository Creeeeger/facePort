.class public Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

.field public mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mSwitchStateChangedAfterApEnabled:Z

.field public mWifiApOtpSettingsPasswordPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

.field public mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSwitchStateChangedAfterApEnabled:Z

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiApOtpSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170220

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string v0, "WifiApQrInfoBottomView() - Start"

    const-string v1, "WifiApOtpSettingsBottomView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mContext:Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->removeAlphaColor(Landroid/content/Context;)Ljava/lang/String;

    const-string v3, "initBottomBar() - Start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0a0299

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0a2b

    iget-object v6, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v5, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    const-string v3, "initBottomNavigation() - Start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a0250

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v1, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v2, 0x7f0a0c0c

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    const v2, 0x7f0a07ed

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;)V

    iput-object v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApOtpSettingsPasswordPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    new-instance p1, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string p1, "onSwitchChanged: "

    const-string v0, "WifiApOtpSettings"

    invoke-static {p1, v0, p2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "TETH_015"

    const-string v2, "8088"

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->setOtpPasswordEnabled(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "WifiApFrameworkUtils"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v0, "setOtpPassword: "

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    const-string v0, "abcdefgh"

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApGuestPassword(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSwitchStateChangedAfterApEnabled:Z

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "Resetting Hotspot  Without Delay"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->updatePreferences$1()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isOneTimePasswordSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getSecurityType(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    const-string p1, "WifiApOtpSettings"

    const-string v0, "Conditions not met to open screen."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "otp_description_layout_preference"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mHotspotDescriptionLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const p1, 0x7f0a1041

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f143464

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const p1, 0x7f143463

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

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

    const-string v0, "WifiApOtpSettings"

    const-string v1, "Navigate Up clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TETH_015"

    const-string v1, "8101"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isOtpPasswordEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isWifiApStateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->getSemWifiManager(Landroid/content/Context;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->update()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->updatePreferences$1()V

    return-void
.end method

.method public final onStart()V
    .locals 3

    const-string v0, "WifiApOtpSettings"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "WifiApOtpSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApStateChangeReceiver:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings$WifiApStateChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public final updatePreferences$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mWifiApOtpSettingsPasswordPreferenceController:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsPasswordPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettings;->mSettingsBottomView:Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/otp/WifiApOtpSettingsBottomView;->update()V

    return-void
.end method
