.class public Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ContinuitySettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentVisible:Z

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

.field private mSamsungAccountPref:Landroidx/preference/Preference;

.field private mSamsungInternet:I

.field private mSamsungNotes:I

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mUriContinuity:Landroid/net/Uri;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$UbmsbE9b-WZ96ngG3_rY7-rfhuA(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->lambda$initPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUriContinuity(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSettingMenuEnabled(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->updateSettingMenuEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mFragmentVisible:Z

    const/4 v0, 0x2

    .line 109
    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungInternet:I

    .line 110
    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungNotes:I

    .line 291
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSettingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static declared-synchronized getContinuitySettingValue(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;

    monitor-enter v0

    .line 505
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

.method private getPackageInfo()V
    .locals 13

    const-string v0, "getPackageInfo, "

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "com.sec.android.app.sbrowser"

    const/4 v3, 0x2

    .line 347
    iput v3, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungInternet:I

    .line 348
    iput v3, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungNotes:I

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://com.samsung.android.mcfds.HandoffProvider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getAppMinVersionCodes"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v4, "appList"

    .line 352
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 354
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 355
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 356
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 357
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", minVersionCode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ContinuitySettings"

    invoke-static {v10, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .line 360
    :try_start_0
    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "com.samsung.android.mcfds"

    .line 372
    invoke-virtual {v5, v12, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_3

    .line 373
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    iput v9, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungInternet:I

    goto :goto_1

    .line 375
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 376
    iput v9, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungNotes:I

    .line 379
    :cond_2
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not match signature"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {v11}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v11

    cmp-long v7, v7, v11

    if-lez v7, :cond_0

    .line 384
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    .line 385
    iput v8, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungInternet:I

    goto :goto_2

    .line 386
    :cond_4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 387
    iput v8, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungNotes:I

    .line 390
    :cond_5
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " needs update"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    :catch_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 363
    iput v9, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungInternet:I

    goto :goto_3

    .line 364
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 365
    iput v9, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungNotes:I

    .line 368
    :cond_7
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not installed"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private initPreference()V
    .locals 4

    .line 219
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 220
    sget v0, Lcom/android/settings/R$xml;->sec_continuity_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    .line 224
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    const-string v2, "continuity_preview"

    const-string v3, "continuity_preview_tablet"

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 226
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    sget v2, Lcom/android/settings/R$id;->help_animation_container:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    :cond_1
    const-string v1, "samsung_account_preference"

    .line 236
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->updateAccountInformation()V

    const-string v1, "mcf_continuity"

    .line 240
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setImage()V

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setDescription()V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private synthetic lambda$initPreference$0(Landroidx/preference/Preference;)Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x24000000

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized setContinuitySettingValue(Landroid/content/Context;I)V
    .locals 5

    const-class v0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 510
    monitor-exit v0

    return-void

    .line 512
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

    .line 514
    monitor-exit v0

    return-void

    .line 516
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mcf_continuity"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 518
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.mcfds.LOG_SAMSUNG_ANALYTICS"

    .line 519
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    const-string v4, "event"

    .line 521
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "screenId"

    const-string v4, "101"

    .line 522
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ne p1, v1, :cond_2

    const-string p1, "eventId"

    const-string v1, "10100"

    .line 524
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "detail"

    const-string v1, "by user"

    .line 525
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "eventId"

    const-string v1, "10101"

    .line 527
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "com.samsung.android.mcfds"

    .line 529
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.mcfds.permission.USE_SAMSUNG_ANALYTICS_LOGGER"

    .line 530
    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setDescription()V
    .locals 5

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->continuity_description_1_jpn:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->continuity_description_1:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_description_2:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->setDescText1(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_supported_apps:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->setDescText2(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getPackageInfo()V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_samsung_internet_jpn:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 431
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_samsung_internet:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungInternet:I

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 434
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->continuity_not_installed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    if-ne v2, v3, :cond_3

    .line 436
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->continuity_update_needed:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->setDescAppText1(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->continuity_samsung_notes_jpn:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 442
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->continuity_samsung_notes:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 443
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungNotes:I

    if-nez v2, :cond_5

    .line 445
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_not_installed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    if-ne v2, v3, :cond_6

    .line 447
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_update_needed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->setDescAppText2(Ljava/lang/String;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    const-string v3, "semclipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    if-eqz v2, :cond_8

    .line 455
    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 458
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 459
    sget v2, Lcom/android/settings/R$string;->continuity_description_4_tablet:I

    goto :goto_5

    .line 461
    :cond_7
    sget v2, Lcom/android/settings/R$string;->continuity_description_4_phone:I

    .line 464
    :goto_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_description_5:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->continuity_description_6:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->setDescText3(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 0

    monitor-enter p0

    .line 279
    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setImage()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    const-string v0, "ContinueAppsOnOtherDevicesDark.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mPreviewPreference:Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;

    const-string v0, "ContinueAppsOnOtherDevices.json"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->setAnimationResource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setWifiBtEnabled()Z
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private startActivityForResult(I)V
    .locals 3

    .line 535
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/settings/usefulfeature/ContinuityAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "requestCode"

    .line 536
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private updateAccountInformation()V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_samsung_account_jpn:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 405
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->continuity_samsung_account:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAccountInformation, account.name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_2

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->continuity_not_signed_in_to_samsung_account_jpn:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 412
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->continuity_not_signed_in_to_samsung_account:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 411
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private updateSettingMenuEnabled(Z)V
    .locals 2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSettingMenuEnabled, isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContinuitySettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 484
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 486
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSamsungAccountPref:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1118

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 215
    sget p0, Lcom/android/settings/R$xml;->sec_continuity_settings:I

    return p0
.end method

.method public getSamsungAccount()Landroid/accounts/Account;
    .locals 2

    .line 492
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.osp.app.signin"

    .line 497
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 498
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 499
    aget-object p0, p0, v0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 176
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 177
    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 178
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 273
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->initPreference()V

    .line 275
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->updateSettingMenuEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->initPreference()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 159
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mUriContinuity:Landroid/net/Uri;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 168
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setFragmentVisibleState(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->updateAccountInformation()V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->updateSettingMenuEnabled(Z)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setWifiBtEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 187
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->continuity_set_enable_description:I

    new-array v2, v0, [Ljava/lang/Object;

    sget v3, Lcom/android/settings/R$string;->continuity_title:I

    .line 188
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 187
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->startActivityForResult(I)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->setContinuitySettingValue(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
