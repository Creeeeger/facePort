.class public Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final handler:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;

.field public mAvailableDevices:Ljava/util/List;

.field public final mBluetoothReceiver:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;

.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mDescListPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mPrefCategory:Landroidx/preference/SecPreferenceCategory;

.field public mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

.field public mSamsungAccountPref:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;-><init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->handler:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$1;

    new-instance v0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;-><init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mBluetoothReceiver:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;

    return-void
.end method

.method public static getStringId(I)I
    .locals 1

    const v0, 0x7f140534

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f140535

    goto :goto_0

    :cond_0
    const v0, 0x7f140536

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f140537

    goto :goto_0

    :cond_1
    const v0, 0x7f14053a

    if-ne p0, v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f14053b

    goto :goto_0

    :cond_2
    const v0, 0x7f140538

    if-ne p0, v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f140539

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x200a

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170151

    return p0
.end method

.method public final getSamsungAccount()Landroid/accounts/Account;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.osp.app.signin"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final initPreference$10()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const v0, 0x7f170151

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "samsung_account_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    const-string v0, "auto_switch_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v0, "auto_switch_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    const v1, 0x7f140538

    invoke-static {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const v1, 0x7f14053a

    invoke-static {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setDescText(Ljava/lang/String;)V

    const-string v0, "auto_switch_dot_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mDescListPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a072f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f140534

    invoke-static {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mDescListPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0730

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f140536

    invoke-static {v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getStringId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v1, "Auto_Switch_Buds_Dark.json"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPreviewPreference:Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;

    const-string v1, "Auto_Switch_Buds_Light.json"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f140a96

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateAccountInformation, account.name"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoSwitchSettings"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updateSettingEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v3, 0x7f140a94

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updateSettingEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->initPreference$10()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updatePreferences$1()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mBluetoothReceiver:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->initPreference$10()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mBluetoothReceiver:Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$2;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-boolean v2, Lcom/samsung/android/settings/account/AccountUtils;->SupportTwoPhone:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-static {v0, p0, v3, v4, v2}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;III)V

    if-eqz p2, :cond_0

    iget-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v4}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    :cond_1
    :goto_0
    return v1
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->updatePreferences$1()V

    return-void
.end method

.method public final updatePreferences$1()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    const-string v3, "auto_switch_empty_device"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v4, "auto_switch_inset"

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    iget-object v5, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iget-object v7, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v7, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v6, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v6, v7}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object v5, v6, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchPreference;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v7, v3, 0x1

    add-int/lit16 v3, v3, 0x2710

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v8, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v8}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_6

    const v3, 0x7f140533

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    const v3, 0x7f14053e

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-boolean v8, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    invoke-static {v3, v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v3

    if-ne v3, v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_4

    :cond_7
    move v3, v0

    :goto_4
    invoke-virtual {v6, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v3, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v3, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v3, v7

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d080b

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mPrefCategory:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_a
    new-instance v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final updateSettingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/autoswitch/AutoSwitchSettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void
.end method
