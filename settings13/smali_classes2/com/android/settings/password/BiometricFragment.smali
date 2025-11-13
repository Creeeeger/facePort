.class public Lcom/android/settings/password/BiometricFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BiometricFragment.java"


# instance fields
.field private mAuthenticating:Z

.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mClientExecutor:Ljava/util/concurrent/Executor;

.field private mIsInternal:Z

.field private final mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAuthenticationCallback(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientCallback(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientExecutor(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAuthenticating(Lcom/android/settings/password/BiometricFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanup(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings/password/BiometricFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$1;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 106
    new-instance v0, Lcom/android/settings/password/BiometricFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$2;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/hardware/biometrics/PromptInfo;)Lcom/android/settings/password/BiometricFragment;
    .locals 3

    .line 125
    new-instance v0, Lcom/android/settings/password/BiometricFragment;

    invoke-direct {v0}, Lcom/android/settings/password/BiometricFragment;-><init>()V

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "prompt_info"

    .line 127
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x631

    return p0
.end method

.method isAuthenticating()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 169
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "prompt_info"

    .line 173
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/PromptInfo;

    .line 175
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 179
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 184
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 181
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v2

    .line 186
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    const v2, 0x800f

    .line 191
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    const/16 v2, 0x8

    .line 193
    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    .line 198
    iget v1, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/password/BiometricFragment;->mIsInternal:Z

    if-eqz v1, :cond_5

    .line 199
    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 207
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialSubtitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 208
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDeviceCredentialDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 205
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    .line 211
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v0

    .line 210
    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowBackgroundAuthentication(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p1

    const/16 v0, 0x20

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0xf

    .line 220
    invoke-virtual {p1, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 222
    invoke-virtual {p1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, v3, v4}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 228
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v1, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFingerprintEnabled(Landroid/content/Context;I)Z

    move-result v1

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isFaceEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v1, v1, 0x2

    .line 234
    :cond_2
    invoke-virtual {p1, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    if-eqz v1, :cond_3

    const/16 v0, 0x24

    .line 238
    invoke-virtual {p1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 241
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isMultifactorEnabledForWork(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    .line 244
    :cond_4
    invoke-virtual {p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 245
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 253
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    .line 259
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 260
    iget-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iget p0, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    :cond_0
    return-void
.end method

.method public setCallbacks(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 134
    iput-object p2, p0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public setIsInternal(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/android/settings/password/BiometricFragment;->mIsInternal:Z

    return-void
.end method

.method public setUser(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    return-void
.end method
