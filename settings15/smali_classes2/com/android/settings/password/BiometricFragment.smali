.class public Lcom/android/settings/password/BiometricFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAuthenticating:Z

.field public final mAuthenticationCallback:Lcom/android/settings/password/BiometricFragment$1;

.field public mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field public mCancellationSignal:Landroid/os/CancellationSignal;

.field public mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field public mClientExecutor:Ljava/util/concurrent/Executor;

.field public mIsInternal:Z

.field public final mNegativeButtonListener:Lcom/android/settings/password/BiometricFragment$2;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/password/BiometricFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$1;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Lcom/android/settings/password/BiometricFragment$1;

    new-instance v0, Lcom/android/settings/password/BiometricFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$2;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Lcom/android/settings/password/BiometricFragment$2;

    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_0
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x631

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "prompt_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/PromptInfo;

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isShowEmergencyCallButton()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setShowEmergencyCallButton(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getRealCallerForConfirmDeviceCredentialActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v2

    and-int/lit16 v2, v2, -0x8000

    const/16 v3, 0xf

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setLogoRes(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setLogoDescription(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->shouldUseParentProfileForDeviceCredential()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowBackgroundAuthentication(ZZ)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowBackgroundAuthentication(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p1

    :goto_0
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultSubtitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    const v2, 0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/BiometricFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/password/BiometricFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_4
    iget v0, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/password/BiometricFragment;->mIsInternal:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p1, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1409b6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Lcom/android/settings/password/BiometricFragment$2;

    invoke-virtual {p1, v0, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const/16 v0, 0x24

    goto :goto_1

    :cond_8
    const/16 v0, 0x20

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x40

    :cond_9
    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    :cond_a
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Lcom/android/settings/password/BiometricFragment$1;

    iget p0, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    :cond_0
    return-void
.end method
