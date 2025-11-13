.class public Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

.field public mDPM:Landroid/app/admin/DevicePolicyManager;

.field public mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field public mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field public mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

.field public mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockType:I

.field public mPasswordConfirmed:Z

.field public mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

.field public final mResetCount:I

.field public mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

.field public mUserManager:Landroid/os/UserManager;

.field public mVisiblePattern:Landroidx/preference/SecSwitchPreference;

.field public mWaitingForConfirmation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$SecuredLockIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockType:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1150

    return p0
.end method

.method public final getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    div-long v2, p1, v0

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    long-to-int v2, v2

    const v3, 0x7f12001f

    invoke-virtual {v5, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-lez v4, :cond_1

    cmp-long v3, p1, v0

    if-lez v3, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    invoke-static {v2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    long-to-int p1, p1

    const p2, 0x7f120020

    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getTimeoutNewEntry : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecuredLockSettingsMenu"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f1701e7

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    const/4 v0, 0x4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    const-string/jumbo v3, "visiblepattern"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v5, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v3, "auto_factory_reset"

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_swipe_main_user"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const v3, 0x7f142702

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f142703

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mResetCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/knox/UCMUtils;->isUCMKeyguardEnabledForCurrentUser()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mAutoFactoryReset:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_8
    const-string p1, "lock_network_and_security"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "lock_function_val"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_9

    move p1, v1

    goto :goto_3

    :cond_9
    move p1, v2

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    const v3, 0x7f142700

    goto :goto_4

    :cond_a
    const v3, 0x7f1426ff

    :goto_4
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockNetworkAndSecurity:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    const-string p1, "lockdown_in_power_menu"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SecSwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_c

    move p1, v1

    goto :goto_5

    :cond_c
    move p1, v2

    :goto_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isBiometricsLockEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mShowLockDownOption:Landroidx/preference/SecSwitchPreference;

    const v3, 0x7f142713

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "lock_after_timeout"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz p1, :cond_e

    const v4, 0x7f142711

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary$1()V

    :cond_e
    const-string/jumbo p1, "power_button_instantly_locks"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v4

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFunctionKey()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    const v4, 0x7f141620

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_6

    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    const v4, 0x7f14161f

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_6
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    const v4, 0x7f142502

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_10
    const-string p1, "lock_instantly_with_folding"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getFolderInstantlyLocks(I)Z

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_11
    const-string p1, "delete_previous_pin"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, -0x26ab

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p1

    if-ne p1, v1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14270a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142709

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_12
    const/4 v1, 0x3

    if-ne p1, v1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14270d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14270c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_13
    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142707

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f142706

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_7
    iget p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockType:I

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_15

    const/high16 v0, 0x90000

    if-eq p1, v0, :cond_15

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mVisiblePattern:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_15
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_16

    sget-object p1, Lcom/samsung/android/settings/lockscreen/LockUtils;->CONFIG_LOCK_SCREEN_CLOCK_DISPLAY_POLICY:Ljava/lang/String;

    const/16 p1, 0x1a

    invoke-static {p1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPowerButtonInstantlyLocks:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_16
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_17

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportSubLockscreen()Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockInstantlyWithFolding:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_17
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    const/16 v0, 0x12c

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    const-string p1, "SecuredLockSettingsMenu"

    if-eq p2, v1, :cond_0

    const-string p2, "Lock confirm failed"

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p2, "Lock confirmed"

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded(Z)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x190

    if-ne p1, p3, :cond_2

    if-ne p2, v1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "password_already_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    const-string/jumbo v0, "waiting_for_confirmation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x12c

    iput v0, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f142819

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    sget v1, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    iput v1, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    const-string p1, "SecuredLockSettingsMenu"

    const-string v0, "Need to confirm Current Lock"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "device_policy"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockType:I

    const-string/jumbo p1, "user"

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string p0, "SecuredLockSettingsMenu"

    const-string/jumbo v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "visiblepattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget p2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "power_button_instantly_locks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget p2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_0

    :cond_1
    const-string v0, "auto_factory_reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "auto_swipe_main_user"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const-string v0, "lock_network_and_security"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "lock_function_val"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string v0, "lockdown_in_power_menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string v0, "lock_instantly_with_folding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget p2, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->MY_USER_ID:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setFolderInstantlyLocks(ZI)V

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lock_after_timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.settings.LockAfterTimeout"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "delete_previous_pin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "save_previous_credential_description_show_count"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x1150

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "LSE2042"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/samsung/android/settings/lockscreen/DeletePreviousActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x190

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onResume()V
    .locals 3

    const-string v0, "SecuredLockSettingsMenu"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f141548

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_2

    const v1, 0x7f142711

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->updateLockAfterPreferenceSummary$1()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, -0x26ab

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDeletePreviousPin:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "password_already_confirmed"

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "waiting_for_confirmation"

    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateLockAfterPreferenceSummary$1()V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v3, 0x1388

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0300ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030100

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v12

    goto :goto_0

    :cond_0
    move-wide v12, v10

    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "updateLockAfterPreferenceSummary, adminTimeout = "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v14, "SecuredLockSettingsMenu"

    invoke-static {v14, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v15, "screen_off_timeout"

    const/4 v5, 0x0

    invoke-static {v8, v15, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object v15, v6

    int-to-long v5, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateLockAfterPreferenceSummary, displayTimeout = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v5, v12, v5

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateLockAfterPreferenceSummary, maxTimeout = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "getPasswordLockDelay"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getPasswordLockDelay - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", adminTimeout - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v8, :cond_2

    const-wide/16 v9, 0x0

    cmp-long v11, v12, v9

    if-nez v11, :cond_1

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v5, v8

    goto :goto_1

    :cond_1
    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_2
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "maxTimeout after Knox is = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v10, v12, v8

    const/4 v8, 0x1

    if-lez v10, :cond_5

    const/4 v9, 0x0

    :goto_2
    array-length v10, v4

    if-ge v9, v10, :cond_4

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-gtz v10, :cond_3

    aget-object v10, v3, v9

    move-object v11, v15

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v4, v9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object v11, v15

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object v15, v11

    goto :goto_2

    :cond_4
    move-object v11, v15

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "revisedValues.size() : "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v5, v9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "last_timeout : "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    cmp-long v3, v9, v12

    if-lez v3, :cond_6

    array-length v3, v4

    sub-int/2addr v3, v8

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-gez v3, :cond_6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f141597

    invoke-virtual {v0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object v11, v15

    const/4 v9, 0x0

    :goto_4
    array-length v10, v4

    if-ge v9, v10, :cond_6

    aget-object v10, v3, v9

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v4, v9

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v1, v9

    if-ltz v9, :cond_7

    move v4, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f142377

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v9, v5

    const v9, 0x7f142710

    if-gez v7, :cond_9

    cmp-long v7, v5, v1

    if-gez v7, :cond_9

    const-string/jumbo v1, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v14, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateLockAfterPreferenceSummary, best = "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_a

    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    const v2, 0x7f14270f

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_9

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f030100

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    goto :goto_8

    :cond_b
    const/4 v10, 0x0

    :goto_7
    array-length v12, v7

    if-ge v10, v12, :cond_e

    aget-object v12, v7, v10

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v1

    if-nez v12, :cond_d

    cmp-long v1, v1, v5

    if-ltz v1, :cond_c

    const-wide/16 v12, 0x0

    cmp-long v1, v5, v12

    if-nez v1, :cond_e

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_d
    const-wide/16 v12, 0x0

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_9
    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->mLockAfter:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    return-void
.end method
