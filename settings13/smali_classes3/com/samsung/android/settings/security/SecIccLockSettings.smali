.class public Lcom/samsung/android/settings/security/SecIccLockSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecIccLockSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;
.implements Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAirplaneObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/security/SecIccLockSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->TAG:Ljava/lang/String;

    .line 204
    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$4;

    sget v1, Lcom/android/settings/R$xml;->sec_sim_lock_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/security/SecIccLockSettings$4;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 50
    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SecIccLockSettings$1;-><init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SecIccLockSettings$2;-><init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/security/SecIccLockSettings$3;-><init>(Lcom/samsung/android/settings/security/SecIccLockSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/security/SecIccLockSettings;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/security/SecIccLockSettings;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 178
    sget p0, Lcom/android/settings/R$string;->help_url_icc_lock:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 173
    sget-object p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x38

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 168
    sget p0, Lcom/android/settings/R$xml;->sec_sim_lock_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    .line 82
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->setMenuController(Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;)V

    .line 83
    const-class p1, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    .line 84
    const-class p1, Lcom/samsung/android/settings/security/SecSimPinPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecSimPinPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecSimPinPreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    .line 85
    const-class p1, Lcom/samsung/android/settings/security/SecPersoTogglePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecPersoTogglePreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecPersoTogglePreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    .line 86
    const-class p1, Lcom/samsung/android/settings/security/SecPersoPasswordChangePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecPersoPasswordChangePreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/security/SecPersoPasswordChangePreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    if-eqz p1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 119
    sget p2, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->TAB_LAYOUT_ID:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "currentTab"

    .line 121
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 122
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 109
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPinDialog;->releaseDialog()V

    .line 111
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 155
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 156
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 133
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 135
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 141
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mAirplaneObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->getIccLockMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->resetIccLockData()V

    .line 150
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p0

    const-string v0, "currentTab"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 183
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 184
    sget-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setSimInformation(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public updateMenu()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
