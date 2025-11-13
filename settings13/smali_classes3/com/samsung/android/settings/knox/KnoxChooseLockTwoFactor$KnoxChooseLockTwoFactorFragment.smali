.class public Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KnoxChooseLockTwoFactor.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KnoxChooseLockTwoFactorFragment"
.end annotation


# static fields
.field private static sChooseLockRequestCode:I = -0x1

.field private static sCurrentLockTypeIdx:I = -0x1

.field private static sUserId:I


# instance fields
.field private bottomButtonLayout:Landroid/widget/LinearLayout;

.field private layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableStatusBarCount:I

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGkPwHandle:J

.field private mIsEnforcedMultifactorNReset:Z

.field private mIsSecondStep:Z

.field private mIsSecured:Z

.field protected mLayout:Landroid/widget/LinearLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMultifactorAuthEnforced:Z

.field private mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mOnlyEnforceDevicePasswordRequirement:Z

.field private mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

.field private mPrefPin:Lcom/android/settingslib/RestrictedPreference;

.field private mRequestGatekeeperPasswordHandle:Z

.field private mRequestedMinComplexity:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

.field private mToken:[B

.field private mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mUserId:I

.field private mUserPassword:Lcom/android/internal/widget/LockscreenCredential;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsSecondStep(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsUserId()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    .line 147
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    .line 148
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    .line 150
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    .line 151
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    .line 154
    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    .line 156
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 160
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    .line 161
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    .line 162
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    .line 163
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    .line 164
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    .line 165
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    .line 169
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    .line 170
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    .line 171
    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    return-void
.end method

.method private checkCredentialForSDPUnlock()V
    .locals 4

    .line 794
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-nez v0, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;-><init>(Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method private composeFirstStep()V
    .locals 3

    .line 486
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 488
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 489
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 490
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 491
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    sget v2, Lcom/android/settings/R$string;->knox_guide_enroll_twostep_step1:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 492
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    .line 496
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 497
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    .line 501
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 502
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 505
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    .line 506
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 507
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    return-void
.end method

.method private composeSecondStep()V
    .locals 8

    .line 530
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 532
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 533
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 534
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    sget v4, Lcom/android/settings/R$string;->knox_guide_enroll_twostep_step2_do:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    sget v4, Lcom/android/settings/R$string;->knox_guide_enroll_twostep_step2_fingeronly_ppp:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v6, v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 542
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 545
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 546
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 547
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 548
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 549
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 550
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_disabled_summary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 553
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->status_registered:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 556
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private disableStatusBar()V
    .locals 2

    .line 806
    monitor-enter p0

    .line 807
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 810
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enableStatusBar()V
    .locals 2

    .line 814
    monitor-enter p0

    .line 815
    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 816
    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 820
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCurrentLockTypeIdx()I
    .locals 0

    .line 237
    sget p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sCurrentLockTypeIdx:I

    return p0
.end method

.method private getCurrentLockTypeToString()Ljava/lang/String;
    .locals 2

    .line 565
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeIdx()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "KKG::KnoxChooseLockTwoFactor"

    const-string v1, "current locktype index is wrong"

    .line 576
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getGkPwHandle(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "hw_auth_token"

    .line 703
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    :try_start_0
    const-string v0, "password"

    .line 705
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mGkPwHandle:J

    return-void
.end method

.method private getIntentForUnlockMethod(I)Landroid/content/Intent;
    .locals 4

    .line 242
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x20000

    if-lt p1, v2, :cond_0

    const/high16 v2, 0x60000

    if-gt p1, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v2, v1, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    .line 248
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getLockPasswordIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 253
    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const-string p1, "knox_userId"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string p1, "is_knox_two_step"

    .line 254
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const/16 p0, 0x2774

    .line 256
    sput p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sChooseLockRequestCode:I

    return-object v1
.end method

.method private getShowButtonBackground()Z
    .locals 2

    .line 588
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_button_background"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private hasEnrolledFingerprint(I)Z
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initEnableNextButton()V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->setup_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez v0, :cond_0

    const-string p0, "KKG::KnoxChooseLockTwoFactor"

    const-string v0, "next button cannot be null ! : return"

    .line 612
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->sec_wifi_setupwizard_next_show_btn_shape_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    return-void
.end method

.method private initEnablePrevButton()V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->later_button:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    if-nez v0, :cond_0

    const-string p0, "prev button cannot be null !"

    .line 594
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getShowButtonBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->sec_wifi_setupwizard_next_show_btn_shape_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-eqz v0, :cond_2

    const-string v0, "MultifactorAuthEnforced : disable later button"

    .line 602
    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    goto :goto_0

    .line 605
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private insertLockTypeStatusToKA()V
    .locals 3

    .line 716
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 717
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 733
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const-string v2, "CHANGE_LOCK_TYPE"

    invoke-static {v1, p0, v2, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->insertStatusLogForKnox(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method private isSwitchedBioLocktype()Z
    .locals 0

    .line 643
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private launchLockType()I
    .locals 7

    const-string v0, "KKG::KnoxChooseLockTwoFactor"

    const-string v1, "launchLockType() called"

    .line 738
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeIdx()I

    move-result v1

    const/high16 v2, 0x40000

    const/high16 v3, 0x20000

    const/high16 v4, 0x30000

    const/high16 v5, 0x60000

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p0, 0x3

    if-eq v1, p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x10000

    goto :goto_0

    .line 753
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p0

    if-gt p0, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .line 743
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-gt v1, v5, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 744
    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-lt v1, v2, :cond_4

    .line 745
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    goto :goto_0

    .line 746
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p0

    if-gt p0, v4, :cond_5

    goto :goto_0

    :cond_5
    move v2, v5

    .line 765
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchLockType() : quality = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private setBiometricsLock()V
    .locals 5

    .line 406
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_0

    .line 411
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1, v3, v2, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 417
    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1, v3, p0}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_2
    return-void
.end method

.method private setCurrentLockTypeIdx(I)V
    .locals 0

    .line 233
    sput p1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sCurrentLockTypeIdx:I

    return-void
.end method

.method private setEnableNextButton()V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    if-nez v0, :cond_0

    const-string p0, "next button cannot be null ! : return."

    .line 624
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->isSwitchedBioLocktype()Z

    move-result v0

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup button : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 630
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private setPasswordEnabledByPolicy()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    const/high16 v2, 0x30000

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->isLockTypeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 639
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    const/high16 v1, 0x10000

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->isLockTypeEnabled(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method private showFirstStep()V
    .locals 2

    .line 459
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->composeFirstStep()V

    .line 461
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const-string v0, "KKG::KnoxChooseLockTwoFactor"

    const-string v1, "bottomButtonLayout != null"

    .line 462
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    .line 470
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_3

    .line 473
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 476
    :cond_3
    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_two_factor_title_step1:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 477
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 479
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    const/4 v0, 0x0

    .line 482
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return-void
.end method

.method private showSecondStep()V
    .locals 2

    .line 513
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->composeSecondStep()V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const-string v0, "KKG::KnoxChooseLockTwoFactor"

    const-string v1, "bottomButtonLayout != null"

    .line 516
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    :cond_0
    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_two_factor_title_step2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    return-void
.end method

.method private startFingerprintLockSettings(Ljava/lang/String;[B)V
    .locals 5

    const-string v0, "hw_auth_token"

    .line 771
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.biometrics.fingerprint.FingerprintLockSettings"

    .line 772
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "password"

    .line 773
    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "gk_pw_handle"

    .line 776
    iget-wide v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mGkPwHandle:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "previousStage"

    .line 779
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "fromKnoxKeyguard"

    .line 781
    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.extra.USER_ID"

    .line 782
    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_knox_two_step"

    const/4 v2, 0x1

    .line 783
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 784
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "onlyIdentify"

    .line 785
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2717

    .line 786
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 789
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startRedactionInterstitial()V
    .locals 2

    .line 399
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLockPasswordIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 1

    .line 261
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v0, p2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordType(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    .line 265
    invoke-virtual {p2}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->getAggregatedPasswordComplexity()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    .line 266
    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->getAggregatedPasswordMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 264
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordRequirement(ILandroid/app/admin/PasswordMetrics;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    .line 267
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    .line 269
    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p2, :cond_2

    .line 270
    invoke-virtual {p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 271
    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 274
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_3

    .line 275
    invoke-virtual {p1, p0}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPassword(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 277
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 2

    .line 281
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    .line 283
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 290
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_3

    .line 291
    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPattern(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 293
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 650
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult : requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2717

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2719

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2774

    if-eq p1, v0, :cond_0

    const-string p1, "[Two Factor] else"

    .line 695
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 697
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_0
    const-string p1, "requestCode == REQUEST_TWO_FACTOR_SET_FIRST"

    .line 655
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_3

    const-string p1, "resultCode == Activity.RESULT_FIRST_USER"

    .line 657
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-nez p1, :cond_1

    .line 659
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, p2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    const-string p1, "two factor : REMOVE"

    .line 660
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    .line 663
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getGkPwHandle(Landroid/content/Intent;)V

    .line 665
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->insertLockTypeStatusToKA()V

    .line 666
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showSecondStep()V

    goto :goto_1

    :cond_3
    if-ne p2, v4, :cond_4

    const-string p0, "resultCode == Activity.RESULT_OK"

    .line 668
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "requestCode == else"

    .line 670
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-ne p2, v4, :cond_9

    .line 690
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v4}, Landroid/app/Activity;->setResult(I)V

    .line 691
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_6
    const-string p1, "[Two Factor] finger by switch"

    .line 674
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v4, :cond_7

    .line 676
    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 677
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 678
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$string;->status_registered:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 681
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 682
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 683
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 685
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    if-ne p1, v0, :cond_1

    const-string p1, "onClick : Later button"

    .line 376
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->setPwdChangeRequested(Landroid/content/Context;II)V

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkCredentialForSDPUnlock()V

    .line 381
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-ne p1, v0, :cond_4

    const-string p1, "onClick : Next button"

    .line 385
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_2

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->checkCredentialForSDPUnlock()V

    .line 389
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setBiometricsLock()V

    .line 390
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    if-nez p1, :cond_3

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startRedactionInterstitial()V

    .line 393
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 394
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 298
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 300
    sget p1, Lcom/android/settings/R$xml;->knox_choose_lock_two_factor:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    .line 304
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    .line 305
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 309
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string p1, "pref_lock_password"

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const-string p1, "pref_lock_pin"

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const-string p1, "pref_lock_pattern"

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const-string p1, "switch_fingerprint"

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    .line 317
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string p1, "pref_two_factor_description"

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    .line 322
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->knox_twofactor_description_fingerprint:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fromKnoxKeyguard"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    .line 326
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    .line 328
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    .line 329
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "request_gk_pw_handle"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    .line 331
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    .line 332
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "requested_min_complexity"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestedMinComplexity:I

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_password_requirement_only"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    .line 337
    new-instance p1, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    .line 338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestedMinComplexity:I

    iget-boolean v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;-><init>(Landroid/content/Context;IIZLcom/android/internal/widget/LockPatternUtils;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->showFirstStep()V

    .line 343
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 344
    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "KKG::KnoxChooseLockTwoFactor"

    const-string v1, "onCreateView"

    .line 349
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    .line 351
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 352
    sget p2, Lcom/android/settings/R$layout;->sec_knox_two_factor_bottom_button:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 354
    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "add bottom button"

    .line 355
    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 362
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 443
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    .line 446
    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 447
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 454
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->enableStatusBar()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 192
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 193
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "switch_fingerprint"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_1

    .line 197
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->hasEnrolledFingerprint(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    const-string p2, "knox_fingerprint_entry"

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->startFingerprintLockSettings(Ljava/lang/String;[B)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 206
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : clicked : onPreferenceClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "pref_lock_password"

    .line 216
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setCurrentLockTypeIdx(I)V

    goto :goto_0

    :cond_1
    const-string v1, "pref_lock_pin"

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x2

    .line 219
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setCurrentLockTypeIdx(I)V

    goto :goto_0

    :cond_2
    const-string v1, "pref_lock_pattern"

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    .line 221
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setCurrentLockTypeIdx(I)V

    .line 223
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->launchLockType()I

    move-result p1

    const/4 v1, -0x1

    .line 224
    sput v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sChooseLockRequestCode:I

    .line 225
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 227
    sget v1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sChooseLockRequestCode:I

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    return v0
.end method

.method public onResume()V
    .locals 2

    .line 427
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setPasswordEnabledByPolicy()V

    .line 433
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->disableStatusBar()V

    .line 438
    :cond_1
    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 368
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->initEnablePrevButton()V

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->initEnableNextButton()V

    return-void
.end method
