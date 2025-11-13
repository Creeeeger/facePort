.class public Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;
.implements Lcom/android/settings/password/SaveAndFinishWorker$Listener;
.implements Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settings/password/CredentialCheckResultTracker$Listener;",
        "Lcom/android/settings/password/SaveAndFinishWorker$Listener;",
        "Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBackUpPinButton:Landroid/widget/Button;

.field public final mBackupPinButtonClickListner:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

.field public mCheckBoxLabel:Ljava/lang/CharSequence;

.field public final mClearPatternRunnable:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

.field public final mConfirmExistingLockPatternListener:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field public mDetailsText:Ljava/lang/CharSequence;

.field public mDisappearing:Z

.field public mExternal:Z

.field public mHeaderText:Ljava/lang/CharSequence;

.field public mIsManagedProfile:Z

.field public mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field public mPattern:Lcom/android/internal/widget/LockscreenCredential;

.field public mPendingLockCheck:Landroid/os/AsyncTask;

.field public mSudContent:Landroid/view/View;

.field public mTopLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

.field public mTwoFactorBiometricConfirmed:Z

.field public mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

.field public mWaitingForTwoFactorConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    new-instance v1, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    return-void
.end method


# virtual methods
.method public final authenticationSucceeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->interceptAuthenticationSucceededIfNeeded(ZZ)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const-string p0, "ConfirmLockPatternFragment"

    const-string v0, "interceptAuthenticationSucceededIfNeeded"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public final disableConfirmCredentialCallback()V
    .locals 1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public final enableConfirmCredentialCallback()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    :cond_0
    return-void
.end method

.method public final getDefaultDetails$1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->getDefaultDetails()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object v0, v0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const v0, 0x7f1424d7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f142511

    goto :goto_1

    :cond_3
    const v0, 0x7f142510

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRepairMode:Z

    if-eqz v0, :cond_5

    const v0, 0x7f1415b8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v0, :cond_6

    const v0, 0x7f142520

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired$1()Z

    const v0, 0x7f141613

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLastTryDefaultErrorMessage(I)I
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    const p0, 0x7f142282

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized user type:"

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f142281

    return p0

    :cond_2
    const p0, 0x7f142280

    return p0
.end method

.method public final getLastTryOverrideErrorMessageId(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const-string p0, "Settings.WORK_PROFILE_LAST_PATTERN_ATTEMPT_BEFORE_WIPE"

    return-object p0

    :cond_0
    const-string p0, "UNDEFINED"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1f

    return p0
.end method

.method public final onChosenLockSaveFinished(Landroid/content/Intent;Z)V
    .locals 3

    const-string p2, "ConfirmLockPatternFragment"

    const-string v0, "Device lockscreen has been set to remote device\'s lockscreen."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteLockscreenValidationFragment:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    invoke-virtual {p2}, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->clearLockscreenCredential()V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gk_pw_handle"

    invoke-static {p1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "unlock_recovery"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUnlockRecovery:Z

    const-string v2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mExternal:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onCreate(Landroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "two_factor_biometric_confirmed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    const-string v0, "waiting_for_two_factor_confirmation"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    :cond_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/password/ConfirmLockPattern;

    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDeviceProvisioned:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0d0872

    goto :goto_0

    :cond_1
    const v4, 0x7f0d086d

    :goto_0
    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    const v4, 0x7f0d09ab

    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :goto_2
    iget-object v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v4, v4, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v1, v2, v6}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->switchViewIfNeeded(Landroid/view/LayoutInflater;Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)Landroid/view/View;

    move-result-object v2

    :cond_3
    new-instance v1, Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v6, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDeviceProvisioned:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v6, :cond_5

    iget-boolean v6, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v5

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v7

    :goto_4
    invoke-direct {v1, v4, v2, v6}, Lcom/samsung/android/settings/password/SecGlifLayout;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    const v1, 0x7f0a08ed

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v1, 0x7f0a0172

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a106f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v4, :cond_6

    iget-boolean v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v4, :cond_7

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, v5, v5, v5, v5}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setPadding(IIII)V

    :cond_7
    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    const v4, 0x7f0a0f5d

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mSudContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v6, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mSudContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTopLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    if-eqz v1, :cond_8

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    :cond_8
    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mExternal:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object v1, v1, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object v1, v1, Lcom/samsung/android/settings/password/SecGlifLayout;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v4, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    const-string v4, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    const-string v4, "android.app.extra.CHECKBOX_LABEL"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCheckBoxLabel:Ljava/lang/CharSequence;

    :cond_a
    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    :cond_b
    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    xor-int/2addr v4, v7

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    if-nez v3, :cond_c

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRepairMode:Z

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_c
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v1

    const-string v4, "uiStage"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    const-string v4, "backup_pin_btn_visibility"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_d
    :goto_5
    new-instance v8, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10c000e

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v14

    const/high16 v12, 0x40000000    # 2.0f

    const v13, 0x3fa66666    # 1.3f

    const-wide/16 v10, 0xdc

    invoke-direct/range {v8 .. v14}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    new-instance v15, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10c000f

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v21

    new-instance v22, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Object;-><init>()V

    const/high16 v19, 0x40800000    # 4.0f

    const v20, 0x3e99999a    # 0.3f

    const-wide/16 v17, 0x7d

    invoke-direct/range {v15 .. v22}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object v1, v1, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "check_lock_result"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v1, :cond_f

    new-instance v1, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v1}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v1, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v1

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v1, v5, v4, v3, v7}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_f
    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    iget-boolean v1, v1, Lcom/samsung/android/settings/password/LockTypePolicy;->mIsKnoxId:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v1

    iget-object v3, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    xor-int/2addr v3, v7

    or-int/2addr v1, v3

    iget-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_11

    const/16 v1, 0xf

    invoke-virtual {v2, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060738

    invoke-virtual {v4, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_11
    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setPatternColor(Lcom/android/internal/widget/LockPatternView;)V

    :cond_12
    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, v1, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onCreateView(Landroid/view/View;)V

    :cond_13
    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDeviceProvisioned:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v1, :cond_14

    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v1, :cond_15

    :cond_14
    invoke-virtual {v2, v5}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06062e

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_15
    iget-boolean v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual {v1, v5}, Lcom/google/android/setupdesign/GlifLayout;->setProgressBarShown(Z)V

    iget-object v0, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_16
    return-object v2
.end method

.method public final onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_0
    return-void
.end method

.method public final onPatternChecked(ZLandroid/content/Intent;IIZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@onPatternChecked matched="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ConfirmLockPatternFragment"

    invoke-static {v0, p4, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    if-eqz p1, :cond_5

    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->reportSuccessfulAttempt()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object p4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget p5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {p1, p3, p4, p5, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;IZ)V

    :cond_1
    :try_start_0
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUnlockRecovery:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    iget-object p4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockTypePolicy:Lcom/samsung/android/settings/password/LockTypePolicy;

    invoke-virtual {p4}, Lcom/samsung/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result p4

    invoke-static {p1, p3, p4}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isFmmUnlockAllowed(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPattern:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_4

    const/4 p3, 0x6

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation$1(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    goto :goto_3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation$1(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    if-lez p3, :cond_7

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->setBiometricLockoutDeadline(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide p1

    iget-object p3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p3, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p0, p3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    sub-long/2addr p1, p3

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :goto_2
    if-eqz p5, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->reportFailedAttempt()V

    :cond_8
    :goto_3
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteLockscreenValidationFragment:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->setListener(Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public final onRemoteLockscreenValidationResult(Landroid/app/RemoteLockscreenValidationResult;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/RemoteLockscreenValidationResult;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/RemoteLockscreenValidationResult;->getResultCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Cannot continue remote lockscreen validation. ResultCode=%d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onRemoteLockscreenValidationFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/app/RemoteLockscreenValidationResult;->getTimeoutMillis()J

    move-result-wide v3

    long-to-int p1, v3

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {p1, v2, v0, v2, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateRemoteLockscreenValidationViews()V

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteLockscreenValidationFragment:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    invoke-virtual {p0}, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->clearLockscreenCredential()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteLockscreenValidationFragment:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    iget-object p1, p1, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_4

    const-string p1, "ConfirmLockPatternFragment"

    const-string v0, "Setting device screen lock to the other device\'s screen lock."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/password/SaveAndFinishWorker;

    invoke-direct {p1}, Lcom/android/settings/password/SaveAndFinishWorker;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v0}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()V

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveAndFinishWorker$Listener;)V

    iput-boolean v1, p1, Lcom/android/settings/password/SaveAndFinishWorker;->mRequestGatekeeperPassword:Z

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteLockscreenValidationFragment:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    iget-object v1, v1, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {p1, v0, v1, v3, p0}, Lcom/android/settings/password/SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {p1, v1, v0, v2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    :goto_1
    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-boolean v3, v2, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    iput-boolean v3, v2, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iput v3, v2, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iput v3, v2, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$3;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v2, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    sub-long/2addr v0, v4

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteLockscreenValidationFragment:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->setListener(Lcom/android/settings/password/RemoteLockscreenValidationFragment$Listener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteLockscreenValidationFragment:Lcom/android/settings/password/RemoteLockscreenValidationFragment;

    iget-boolean v0, v0, Lcom/android/settings/password/RemoteLockscreenValidationFragment;->mIsInProgress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    if-nez v1, :cond_4

    const-string v1, "from_knox_work_profile_security"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    iget-object v1, v1, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, v2, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->confirmBiometricIfNeeded(ZLandroidx/fragment/app/FragmentActivity;Z)Z

    move-result v3

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    :cond_4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "uiStage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const-string v1, "backup_pin_btn_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "two_factor_biometric_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mTwoFactorBiometricConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "waiting_for_two_factor_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->onSavedInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onSaveInstanceStateCallback()V
    .locals 2

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/password/ConfirmLockPattern$Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_0
    return-void
.end method

.method public final onShowDefault()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object v1, v1, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(ILandroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method public final onShowError()V
    .locals 0

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    const p2, 0x7f1415e3

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCheckBoxLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v0, :cond_0

    const v0, 0x7f142523

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to get default checkbox label for illegal flow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCheckBoxLabel:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mAlternateButtonText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateRemoteLockscreenValidationViews()V

    :cond_4
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mForgotButton:Landroid/widget/Button;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(I)V

    :cond_5
    return-void
.end method

.method public final startDisappearAnimation$1(Landroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ConfirmLockPattern;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mWaitingForTwoFactorConfirmation:Z

    iget-object v0, v0, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->interceptUpdateEntryOrStateIfNeeded(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mUiStage:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_3
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->getErrorMessage()I

    move-result p1

    goto :goto_1

    :cond_4
    const p1, 0x7f142517

    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/password/SecGlifLayout;->setDescriptionText(I)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object p1, p1, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto/16 :goto_5

    :cond_5
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/password/SecGlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v3, :cond_7

    const v3, 0x7f14228b

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRepairMode:Z

    if-eqz v3, :cond_8

    const v3, 0x7f1415b9

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mRemoteValidation:Z

    if-eqz v3, :cond_9

    const v3, 0x7f14251e

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    const-string v5, "Settings.CONFIRM_WORK_PROFILE_PATTERN_HEADER"

    invoke-virtual {v3, v5, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_a
    const v3, 0x7f142512

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/password/SecGlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails$1()Ljava/lang/String;

    move-result-object p1

    :cond_b
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object v4, v4, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->needToUpdateErrorMessage(ILandroid/widget/TextView;)V

    :cond_c
    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object p1, p1, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    :cond_e
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :goto_5
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mKnoxConfirmDeviceCredentialBaseFragmentHelper:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object v1, v0, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper;->mKnoxConfirmLockHelper:Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/knox/KnoxConfirmLockHelper;->updateStageNeedToUnlock(Landroid/widget/TextView;)V

    :cond_f
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/password/SecGlifLayout;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateState()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    return-void
.end method
