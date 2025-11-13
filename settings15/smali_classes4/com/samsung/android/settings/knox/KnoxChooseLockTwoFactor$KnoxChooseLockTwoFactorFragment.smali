.class public Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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
.field public static sCurrentLockTypeIdx:I = -0x1

.field public static sUserId:I


# instance fields
.field public bottomButtonLayout:Landroid/widget/LinearLayout;

.field public layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field public layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

.field public mDPM:Landroid/app/admin/DevicePolicyManager;

.field public mDisableStatusBarCount:I

.field public mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mGkPwHandle:J

.field public mIsEnforcedMultifactorNReset:Z

.field public mIsSecondStep:Z

.field public mIsSecured:Z

.field public mLayout:Landroid/widget/LinearLayout;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMultifactorAuthEnforced:Z

.field public mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mOnlyEnforceDevicePasswordRequirement:Z

.field public mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

.field public mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

.field public mPrefPin:Lcom/android/settingslib/RestrictedPreference;

.field public mRequestGatekeeperPasswordHandle:Z

.field public mRequestedMinComplexity:I

.field public mStatusBarManager:Landroid/app/StatusBarManager;

.field public mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

.field public mToken:[B

.field public mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field public mUserId:I

.field public mUserPassword:Lcom/android/internal/widget/LockscreenCredential;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    return-void
.end method


# virtual methods
.method public final getCurrentLockTypeToString()Ljava/lang/String;
    .locals 3

    sget v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sCurrentLockTypeIdx:I

    const v1, 0x7f14281d

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string v0, "KKG::KnoxChooseLockTwoFactor"

    const-string v2, "current locktype index is wrong"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14281e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14281f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onActivityResult : requestCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2717

    const-string v2, ""

    const v3, 0x7f142d4e

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v0, :cond_11

    const/16 v0, 0x2719

    if-eq p1, v0, :cond_10

    const/16 v0, 0x2774

    if-eq p1, v0, :cond_0

    const-string p1, "[Two Factor] else"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v6}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_5

    :cond_0
    const-string/jumbo p1, "requestCode == REQUEST_TWO_FACTOR_SET_FIRST"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v5, :cond_e

    const-string/jumbo p1, "resultCode == Activity.RESULT_FIRST_USER"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, p2, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->setTwoFactorValue(Landroid/content/Context;II)V

    const-string/jumbo p1, "two factor : REMOVE"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "hw_auth_token"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    :try_start_0
    const-string/jumbo p1, "password"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "gk_pw_handle"

    const-wide/16 v7, 0x0

    invoke-virtual {p3, p1, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mGkPwHandle:J

    :cond_2
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p1

    const/high16 p2, 0x10000

    const/4 p3, 0x3

    if-eq p1, p2, :cond_5

    const/high16 p2, 0x20000

    if-eq p1, p2, :cond_4

    const/high16 p2, 0x30000

    if-eq p1, p2, :cond_4

    const/high16 p2, 0x40000

    if-eq p1, p2, :cond_3

    const/high16 p2, 0x50000

    if-eq p1, p2, :cond_3

    const/high16 p2, 0x60000

    if-eq p1, p2, :cond_3

    move p1, v5

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    goto :goto_1

    :cond_4
    move p1, p3

    goto :goto_1

    :cond_5
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->insertStatusLogForKnox(Landroid/content/Context;II)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz p2, :cond_8

    invoke-virtual {p2, v5}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v0, 0x7f14145a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v0, 0x7f14145f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getCurrentLockTypeToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_8
    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f14304f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_c

    const-string p1, "bottomButtonLayout != null"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_c
    const p1, 0x7f143064

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_d
    iput-boolean v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    goto :goto_5

    :cond_e
    if-ne p2, v4, :cond_f

    const-string/jumbo p0, "resultCode == Activity.RESULT_OK"

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    const-string/jumbo p0, "requestCode == else"

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_10
    if-ne p2, v4, :cond_14

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v4}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_11
    const-string p1, "[Two Factor] finger by switch"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v4, :cond_12

    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p2, :cond_13

    invoke-virtual {p2, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v6}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_13
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    :cond_14
    :goto_5
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v1, 0x1

    const-string v2, "KKG::KnoxChooseLockTwoFactor"

    if-ne p1, v0, :cond_4

    const-string/jumbo p1, "onClick : Later button"

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getPasswordPolicy(Landroid/content/Context;I)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setPwdChangeRequested(I)Z

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-ne p1, v0, :cond_b

    const-string/jumbo p1, "onClick : Next button"

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_6

    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, p1, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    :cond_6
    :goto_1
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_8
    :goto_2
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    const/16 v2, 0x100

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p1

    if-ne p1, v1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    :cond_9
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    if-nez p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_b
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1700b9

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo p1, "pref_lock_password"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo p1, "pref_lock_pin"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo p1, "pref_lock_pattern"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo p1, "switch_fingerprint"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo p1, "pref_two_factor_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14147e

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fromKnoxKeyguard"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecured:Z

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "hw_auth_token"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v2, "request_gk_pw_handle"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {p1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v2, "requested_min_complexity"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestedMinComplexity:I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "device_password_requirement_only"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    new-instance p1, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    iget v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestedMinComplexity:I

    iget-boolean v4, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mOnlyEnforceDevicePasswordRequirement:Z

    iget-object v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, v2, v3, v4, v5}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;-><init>(IIZLcom/android/internal/widget/LockPatternUtils;)V

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    const v2, 0x7f141458

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mTwoFactorDescription:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const-string p1, "KKG::KnoxChooseLockTwoFactor"

    const-string v0, "bottomButtonLayout != null"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_9
    const p1, 0x7f143063

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a
    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsSecondStep:Z

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string/jumbo v0, "onCreateView"

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p2, 0x7f0d08e1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string p1, "add bottom button"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->bottomButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mNewCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "switch_fingerprint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "knox_fingerprint_entry"

    iget-object p2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mToken:[B

    const-string v0, "hw_auth_token"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.samsung.android.settings.biometrics.fingerprint.FingerprintLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "gk_pw_handle"

    iget-wide v3, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mGkPwHandle:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "fromKnoxKeyguard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_knox_two_step"

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo p1, "onlyIdentify"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2717

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    const/4 p0, 0x0

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 10

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

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string/jumbo v2, "pref_lock_password"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    sput v0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sCurrentLockTypeIdx:I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "pref_lock_pin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput v4, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sCurrentLockTypeIdx:I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "pref_lock_pattern"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sput v3, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sCurrentLockTypeIdx:I

    :cond_3
    :goto_0
    const-string p1, "launchLockType() called"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sCurrentLockTypeIdx:I

    const/high16 v2, 0x60000

    const/high16 v5, 0x20000

    const/high16 v6, 0x10000

    const/4 v7, 0x0

    const/high16 v8, 0x30000

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    move v8, v0

    goto :goto_1

    :cond_4
    move v8, v6

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p1

    if-gt p1, v5, :cond_9

    move v8, v5

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v3, 0x40000

    if-eqz p1, :cond_7

    invoke-virtual {p1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p1

    if-gt p1, v2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p1

    if-lt p1, v3, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v8

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p1

    if-gt p1, v8, :cond_8

    move v8, v3

    goto :goto_1

    :cond_8
    move v8, v2

    :cond_9
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "launchLockType() : quality = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v1, "password"

    const-string/jumbo v3, "request_gk_pw_handle"

    const-string v4, "android.intent.extra.USER_ID"

    const-string v9, "confirm_credentials"

    if-lt v8, v5, :cond_d

    if-gt v8, v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v5, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v2, v7, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/ChooseLockPassword;

    invoke-direct {v7, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "lockscreen.password_type"

    invoke-virtual {v7, p1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    iget-object v2, p1, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p1, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    iget-boolean v6, p1, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result v2

    iget p1, p1, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mRequestedMinComplexity:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    iget-object v5, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    iget-boolean v2, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v2

    const-string/jumbo v5, "min_complexity"

    invoke-virtual {v7, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "min_metrics"

    invoke-virtual {v7, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v7, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {v7, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_11

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_d
    if-ne v8, v6, :cond_11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v7, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/ChooseLockPattern;

    invoke-direct {v7, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v7, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mRequestGatekeeperPasswordHandle:Z

    invoke-virtual {v7, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_10
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserPassword:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_11

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_11
    :goto_2
    if-eqz v7, :cond_12

    const-string p1, "knox_userId"

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-virtual {v7, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "is_knox_two_step"

    const/4 v1, 0x1

    invoke-virtual {v7, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_12
    if-eqz v7, :cond_13

    const/16 p1, 0x2774

    invoke-virtual {p0, v7, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_13
    return v0
.end method

.method public final onResume()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPassword:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPin:Lcom/android/settingslib/RestrictedPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    iget-object v3, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    iget-boolean v5, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v3

    iget v3, v3, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v3

    iget-object v6, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result v4

    iget v2, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mRequestedMinComplexity:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x30000

    if-lt v4, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mPrefPattern:Lcom/android/settingslib/RestrictedPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mController:Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;

    iget-object v4, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    iget-boolean v6, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v4

    iget v4, v4, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v4

    iget-object v7, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result v5

    iget v2, v2, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mRequestedMinComplexity:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v4, 0x10000

    if-lt v4, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mDisableStatusBarCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_4
    iget p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mUserId:I

    sput p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->sUserId:I

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a087b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const-string/jumbo p2, "show_button_background"

    const/4 v0, 0x0

    const v1, 0x7f080afc

    const-string v2, "KKG::KnoxChooseLockTwoFactor"

    if-nez p1, :cond_0

    const-string/jumbo p1, "prev button cannot be null !"

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mMultifactorAuthEnforced:Z

    if-eqz p1, :cond_2

    const-string p1, "MultifactorAuthEnforced : disable later button"

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnLater:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0e23

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    if-nez p1, :cond_3

    const-string/jumbo p0, "next button cannot be null ! : return"

    invoke-static {v2, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->setEnableNextButton()V

    :goto_1
    return-void
.end method

.method public final setEnableNextButton()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    const-string v1, "KKG::KnoxChooseLockTwoFactor"

    if-nez v0, :cond_0

    const-string/jumbo p0, "next button cannot be null ! : return."

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->mSwitchPrefFingerprint:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setup button : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->layoutBtnNext:Lcom/samsung/android/settings/widget/SecBottomBarButton;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecBottomBarButton;->setEnabled(Z)V

    :goto_1
    return-void
.end method
