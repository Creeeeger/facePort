.class public Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

.field private mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLocktype:I

.field private mPasswordConfirmed:Z

.field private mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

.field private mResetCount:I

.field private mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;

.field private mVisiblePattern:Landroidx/preference/SecSwitchPreference;

.field private mWaitingForConfirmation:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetMY_USER_ID()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    .line 558
    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x14

    .line 95
    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    return-void
.end method

.method private InitValue()V
    .locals 6

    .line 245
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "visiblepattern"

    .line 247
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    .line 255
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    .line 254
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 256
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v3, "auto_factory_reset"

    .line 259
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    if-eqz v3, :cond_7

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_swipe_main_user"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    .line 263
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    sget v3, Lcom/android/settings/R$string;->sec_auto_swipe_summary_common:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 267
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    sget v0, Lcom/android/settings/R$string;->sec_auto_swipe_summary_subuser:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    if-lez v0, :cond_5

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 276
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 279
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    const-string v0, "lock_network_and_security"

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_a

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_function_val"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    .line 289
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 290
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_9

    .line 291
    sget v0, Lcom/android/settings/R$string;->lock_network_and_security_summary_on:I

    goto :goto_4

    :cond_9
    sget v0, Lcom/android/settings/R$string;->lock_network_and_security_summary_off:I

    .line 290
    :goto_4
    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    const-string v0, "lockdown_in_power_menu"

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    if-eqz v3, :cond_c

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    .line 299
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isBiometricsLockEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->lockdown_settings_summary_no_biometrics:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 307
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "lock_after_timeout"

    .line 310
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_d

    .line 312
    sget v3, Lcom/android/settings/R$string;->lock_after_timeout:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    :cond_d
    const-string v0, "power_button_instantly_locks"

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_f

    .line 318
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 319
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v3

    .line 318
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 322
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->lockpattern_settings_enable_power_button_instantly_locks_sidekey:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_6

    .line 325
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->lockpattern_settings_enable_power_button_instantly_locks:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 328
    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    sget v3, Lcom/android/settings/R$string;->lock_screen_disable_samsung_dex:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_f
    const-string v0, "lock_instantly_with_folding"

    .line 334
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_10

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getFolderInstantlyLocks(I)Z

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_10
    return-void
.end method

.method private RemoveMenu()V
    .locals 2

    .line 221
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x90000

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportPowerKey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportSubLockscreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x3e8

    .line 500
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 501
    div-long v2, p1, v0

    .line 502
    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    .line 506
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$plurals;->lock_timeout_minutes:I

    long-to-int v2, v2

    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-lez v4, :cond_1

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->lock_timeout_seconds:I

    long-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTimeoutNewEntry : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecuredLockSettingsMenu"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 4

    .line 524
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->lock_after_timeout_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 530
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 531
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 16

    move-object/from16 v0, p0

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v3, 0x1388

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$array;->lock_after_timeout_entries:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$array;->lock_after_timeout_values:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 402
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 406
    iget-object v7, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x0

    .line 407
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateLockAfterPreferenceSummary, adminTimeout = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "SecuredLockSettingsMenu"

    invoke-static {v13, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v14, "screen_off_timeout"

    const/4 v15, 0x0

    invoke-static {v7, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v8, v7

    .line 409
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLockAfterPreferenceSummary, displayTimeout = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v7, v11, v8

    const-wide/16 v9, 0x0

    .line 410
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateLockAfterPreferenceSummary, maxTimeout = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v14, "getPasswordLockDelay"

    const/4 v15, 0x0

    invoke-static {v9, v10, v14, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 417
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPasswordLockDelay - "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", adminTimeout - "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v9, :cond_2

    const-wide/16 v14, 0x0

    cmp-long v10, v11, v14

    if-nez v10, :cond_1

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v7, v9

    .line 420
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    .line 422
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 427
    :cond_2
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "maxTimeout after Knox is = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, 0x0

    cmp-long v11, v11, v9

    const/4 v9, 0x1

    if-lez v11, :cond_5

    const/4 v10, 0x0

    .line 436
    :goto_2
    array-length v11, v4

    if-ge v10, v11, :cond_4

    .line 437
    aget-object v11, v4, v10

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-gtz v11, :cond_3

    .line 439
    aget-object v11, v3, v10

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    aget-object v11, v4, v10

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 444
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "revisedValues.size() : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v7, v10

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "last_timeout : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-lez v3, :cond_6

    .line 448
    array-length v3, v4

    sub-int/2addr v3, v9

    aget-object v3, v4, v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v7, v3

    if-gez v3, :cond_6

    .line 449
    sget v3, Lcom/android/settings/R$string;->lock_timeout_max:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v4, v11

    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    .line 453
    :goto_3
    array-length v11, v4

    if-ge v10, v11, :cond_6

    .line 454
    aget-object v11, v3, v10

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    aget-object v11, v4, v10

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 461
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 462
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v4, v1, v14

    if-ltz v4, :cond_7

    move v11, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 468
    :cond_8
    sget v3, Lcom/android/settings/R$string;->lock_after_timeout_summary:I

    .line 469
    sget v4, Lcom/android/settings/R$string;->lock_after_timeout_immedi_summary:I

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object v10

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v14, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, v12, v14}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 476
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v10, "Smart Lock"

    .line 480
    :cond_9
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v6, v14, v7

    const/4 v12, 0x2

    if-gez v6, :cond_a

    cmp-long v6, v7, v1

    if-gez v6, :cond_a

    const-string v1, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    .line 481
    invoke-static {v13, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    aput-object v10, v2, v9

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 484
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateLockAfterPreferenceSummary, best = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_b

    .line 486
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 488
    :cond_b
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->isInDefaultTimeoutList(J)Z

    move-result v4

    if-eqz v4, :cond_d

    cmp-long v1, v1, v7

    if-ltz v1, :cond_c

    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-nez v1, :cond_d

    .line 489
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    aput-object v10, v2, v9

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    .line 491
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    new-array v2, v12, [Ljava/lang/Object;

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object v10, v2, v9

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    :goto_6
    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .line 145
    sget v0, Lcom/android/settings/R$xml;->sec_secured_lock_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 146
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->InitValue()V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->RemoveMenu()V

    return-void
.end method

.method private verifyCurrentLock()V
    .locals 4

    .line 154
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x12c

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 157
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 158
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    sget v3, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    .line 159
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 160
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    const-string p0, "SecuredLockSettingsMenu"

    const-string v0, "Need to confirm Current Lock"

    .line 162
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$integer;->secure_lock_settings:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updatePreferences()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x0

    .line 170
    iput-boolean p3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    const/16 v0, 0x12c

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    const-string v0, "SecuredLockSettingsMenu"

    if-eq p2, p1, :cond_0

    const-string p1, "Lock confirm failed"

    .line 173
    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p1, "Lock confirmed"

    .line 176
    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    .line 178
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 541
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const-string v0, "password_already_confirmed"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    const-string v0, "waiting_for_confirmation"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    .line 120
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    if-nez p1, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->verifyCurrentLock()V

    :cond_1
    const-string p1, "device_policy"

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 125
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 126
    sget v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLocktype:I

    const-string p1, "user"

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string p0, "SecuredLockSettingsMenu"

    const-string v0, "onPause"

    .line 215
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 345
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "visiblepattern"

    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "4432_S"

    const/16 v2, 0x1150

    if-eqz v0, :cond_1

    .line 348
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v3, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 349
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    const/16 p1, 0x1152

    if-eqz p0, :cond_0

    .line 350
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 352
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "power_button_instantly_locks"

    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v3, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    .line 356
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    const/16 p1, 0x1154

    if-eqz p0, :cond_2

    .line 357
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 359
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "auto_factory_reset"

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "auto_swipe_main_user"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    const/16 p1, 0x1155

    if-eqz p0, :cond_4

    .line 364
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    .line 366
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "lock_network_and_security"

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "lock_function_val"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 371
    sget v0, Lcom/android/settings/R$string;->lock_network_and_security_summary_on:I

    goto :goto_0

    :cond_6
    sget v0, Lcom/android/settings/R$string;->lock_network_and_security_summary_off:I

    .line 370
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 372
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    const/16 p1, 0x1157

    if-eqz p0, :cond_7

    .line 373
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 375
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_8
    const-string v0, "lockdown_in_power_menu"

    .line 378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSubDisplay(Landroid/content/Context;)Z

    move-result p0

    const/16 p1, 0x116d

    if-eqz p0, :cond_9

    .line 381
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v1, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 383
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v2, p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_a
    const-string v0, "lock_instantly_with_folding"

    .line 387
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 388
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget p2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setFolderInstantlyLocks(ZI)V

    :cond_b
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 546
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lock_after_timeout"

    .line 547
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 548
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.LockAfterTimeout"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    const-string v0, "SecuredLockSettingsMenu"

    const-string v1, "onResume"

    .line 192
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v0, "lock_after_timeout"

    .line 204
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_2

    .line 206
    sget v1, Lcom/android/settings/R$string;->lock_after_timeout:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    const-string v1, "password_already_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    const-string v0, "waiting_for_confirmation"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
