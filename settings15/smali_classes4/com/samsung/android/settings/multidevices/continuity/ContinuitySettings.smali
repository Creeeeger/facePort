.class public Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mPreviewPreference:Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

.field public mSamsungAccountPref:Landroidx/preference/Preference;

.field public final mSettingObserver:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field public mUriContinuity:Landroid/net/Uri;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;-><init>(Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSettingObserver:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;

    return-void
.end method

.method public static declared-synchronized getContinuitySettingValue(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "mcf_continuity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setContinuitySettingValue(Landroid/content/Context;I)V
    .locals 5

    const-class v0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mcf_continuity"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v4, :cond_1

    if-ne v2, p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mcf_continuity"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.mcfds.LOG_SAMSUNG_ANALYTICS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "type"

    const-string v4, "event"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "screenId"

    const-string v4, "101"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ne p1, v1, :cond_2

    const-string p1, "eventId"

    const-string v1, "10100"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "detail"

    const-string v1, "by user"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-string p1, "eventId"

    const-string v1, "10101"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.samsung.android.mcfds"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.mcfds.permission.USE_SAMSUNG_ANALYTICS_LOGGER"

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1118

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17016b

    return p0
.end method

.method public final getSamsungAccount()Landroid/accounts/Account;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

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

.method public final initPreference$11()V
    .locals 14

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const v0, 0x7f17016b

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const-string v2, "continuity_preview_tablet"

    const-string v3, "continuity_preview"

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a072c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    :cond_1
    const-string/jumbo v1, "samsung_account_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->updateAccountInformation$1()V

    const-string v1, "mcf_continuity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSettingObserver:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    iget-object v2, v1, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    const-string v3, "ContinueAppsOnOtherDevicesDark.json"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v3, v1, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    iget-object v2, v1, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    const-string v3, "ContinueAppsOnOtherDevices.json"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v3, v1, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_4
    :goto_1
    const-string v1, "getPackageInfo, "

    const-string v2, "com.samsung.android.app.notes"

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.mcfds.HandoffProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "getAppMinVersionCodes"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "appList"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "packageName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", minVersionCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ContinuitySettings"

    invoke-static {v11, v10}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "com.samsung.android.mcfds"

    invoke-virtual {v6, v12, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not match signature"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v12

    cmp-long v8, v8, v12

    if-lez v8, :cond_5

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " needs update"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not installed"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v2, "semclipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    iput-boolean v0, v2, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mCopyPasteSupported:Z

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 p1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move p1, v0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move p1, v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f140a99

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f140a98

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->startActivityForResult$1()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->initPreference$11()V

    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->updateSettingMenuEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->initPreference$11()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSettingObserver:Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->updateAccountInformation$1()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->updateSettingMenuEnabled(Z)V

    return-void
.end method

.method public final startActivityForResult$1()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/samsung/android/settings/multidevices/continuity/ContinuityAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "requestCode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startActivityForResult - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContinuitySettings"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateAccountInformation$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    const v2, 0x7f140a96

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateAccountInformation, account.name"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySettings"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    const v0, 0x7f140a94

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method public final updateSettingMenuEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateSettingMenuEnabled, isEnabled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContinuitySettings"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/multidevices/continuity/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    return-void
.end method
