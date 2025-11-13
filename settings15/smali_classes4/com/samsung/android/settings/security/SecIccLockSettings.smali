.class public Lcom/samsung/android/settings/security/SecIccLockSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;
.implements Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public final mAirplaneObserver:Lcom/samsung/android/settings/security/SecIccLockSettings$3;

.field public final mHandler:Lcom/samsung/android/settings/security/SecIccLockSettings$1;

.field public mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

.field public final mSimStateReceiver:Lcom/samsung/android/settings/security/SecIccLockSettings$2;

.field public mTabLayout:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/settings/security/SecIccLockSettings;

    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$4;

    const v1, 0x7f1701f2

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/security/SecIccLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SecIccLockSettings$1;-><init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mHandler:Lcom/samsung/android/settings/security/SecIccLockSettings$1;

    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/security/SecIccLockSettings$2;-><init>(Lcom/samsung/android/settings/security/SecIccLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mSimStateReceiver:Lcom/samsung/android/settings/security/SecIccLockSettings$2;

    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/security/SecIccLockSettings$3;-><init>(Lcom/samsung/android/settings/security/SecIccLockSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mAirplaneObserver:Lcom/samsung/android/settings/security/SecIccLockSettings$3;

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecIccLockSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x38

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701f2

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object v1

    const-string v2, "isemtelephony"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSemTelephony:Lcom/android/internal/telephony/ISemTelephony;

    check-cast v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/settings/connection/SecSimFeatureProviderImpl;->getFirstSlotIndex()I

    move-result p1

    iput p1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setSimInformation(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iput-object p0, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mMenuController:Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;

    const-class p1, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    const-class p1, Lcom/samsung/android/settings/security/SecSimPinPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecSimPinPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecSimPinPreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    const-class p1, Lcom/samsung/android/settings/security/SecPersoTogglePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecPersoTogglePreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/security/SecPersoTogglePreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    const-class p1, Lcom/samsung/android/settings/security/SecPersoPasswordChangePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/security/SecPersoPasswordChangePreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/security/SecPersoPasswordChangePreferenceController;->init(Lcom/samsung/android/settings/security/SecIccLockManager;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "SecIccLockSettings"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->setPersistent()V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "slotIdx"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->setSimInformation(I)V

    const-string v0, "iccMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const-string/jumbo v0, "pinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    const-string v0, "errorStr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    const-string v0, "iccToState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const/4 v1, 0x3

    const-string/jumbo v2, "oldPinCode"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    const-string/jumbo v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mode : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", icc to : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    const-string v0, "SecIccLockSettings.SecIccLockManager"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0e5d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string p2, "currentTab"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_0
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "SecIccLockSettings"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/security/SecSimPinDialog;->releaseDialog()V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "SecIccLockSettings"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mSimStateReceiver:Lcom/samsung/android/settings/security/SecIccLockSettings$2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mAirplaneObserver:Lcom/samsung/android/settings/security/SecIccLockSettings$3;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "SecIccLockSettings"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mSimStateReceiver:Lcom/samsung/android/settings/security/SecIccLockSettings$2;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mAirplaneObserver:Lcom/samsung/android/settings/security/SecIccLockSettings$3;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    new-instance v0, Lcom/android/settings/security/SimLockPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "sim_lock_settings"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/security/SimLockPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/security/SimLockPreferenceController;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    iget v1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "slotIdx"

    iget v2, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "iccMode"

    iget v2, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/settings/security/SecSimPinDialog;->sSimPinDialog:Lcom/samsung/android/settings/security/SecSimPinDialog;

    iget-object v1, v1, Lcom/samsung/android/settings/security/SecSimPinDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pinCode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "errorStr"

    iget-object v2, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iccToState"

    iget-boolean v2, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const/4 v2, 0x3

    const-string/jumbo v3, "oldPinCode"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "newPinCode"

    iget-object v0, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p0, :cond_4

    const-string v0, "currentTab"

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public final onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->tag:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onTabChanged slotId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecIccLockSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setSimInformation(I)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method
