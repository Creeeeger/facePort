.class public Landroid/hardware/biometrics/BiometricPrompt$Builder;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private blacklist mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private blacklist mService:Landroid/hardware/biometrics/IAuthService;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/biometrics/BiometricPrompt;
    .locals 14

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v2

    iget-object v3, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->isDeviceCredentialAllowed()Z

    move-result v3

    iget-object v4, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v4

    if-nez v3, :cond_1

    invoke-static {v4}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$smisCredentialAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Title must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Negative text must be set and non-empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Can\'t have both negative button behavior and device credential enabled"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    :goto_4
    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    if-nez v6, :cond_8

    const-string v6, "auth"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/biometrics/IAuthService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IAuthService;

    move-result-object v6

    goto :goto_5

    :cond_8
    iget-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    :goto_5
    iput-object v6, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    new-instance v6, Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v8, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v10, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v11, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iget-object v12, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    const/4 v13, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/IAuthService;Landroid/hardware/biometrics/BiometricPrompt-IA;)V

    return-object v6
.end method

.method public whitelist semSetBiometricType(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->semSetBiometricType(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have com.samsung.android.permission.BIOMETRICS_PRIVILEGED permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist semSetPrivilegedFlag(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->semSetPrivilegedFlag(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must have com.samsung.android.permission.BIOMETRICS_PRIVILEGED permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    return-object p0
.end method

.method public blacklist setAllowBackgroundAuthentication(ZZ)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowBackgroundAuthentication(Z)V

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p2}, Landroid/hardware/biometrics/PromptInfo;->setUseParentProfileForDeviceCredential(Z)V

    return-object p0
.end method

.method public whitelist setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    return-object p0
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/hardware/biometrics/BiometricPrompt$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setAllowedSensorIds(Ljava/util/List;)V

    return-object p0
.end method

.method public whitelist setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setConfirmationRequested(Z)V

    return-object p0
.end method

.method public whitelist setContentView(Landroid/hardware/biometrics/PromptContentView;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setContentView(Landroid/hardware/biometrics/PromptContentView;)V

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getButtonInfo()Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContentViewMoreOptionsButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    :cond_0
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDescription(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public whitelist setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialAllowed(Z)V

    return-object p0
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDisallowBiometricsIfPolicyExists(Z)V

    return-object p0
.end method

.method public blacklist setIgnoreEnrollmentState(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIgnoreEnrollmentState(Z)V

    return-object p0
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setIsForLegacyFingerprintManager(I)V

    return-object p0
.end method

.method public whitelist setLogoBitmap(Landroid/graphics/Bitmap;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoRes()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/hardware/biometrics/PromptInfo;->setLogo(ILandroid/graphics/Bitmap;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exclusively one of logo resource or logo bitmap can be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogoDescription(Ljava/lang/String;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const-string v0, "BiometricPrompt"

    const-string v1, "Logo description passed in exceeds30 character number and may be truncated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setLogoDescription(Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Logo description passed in can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLogoRes(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/BiometricPrompt;->-$$Nest$smconvertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/biometrics/PromptInfo;->setLogo(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exclusively one of logo resource or logo bitmap can be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-direct {v0, p2, p3}, Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;-><init>(Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text must be set and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)V

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setClassNameIfItIsConfirmDeviceCredentialActivity(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist setReceiveSystemEvents(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setReceiveSystemEvents(Z)V

    return-object p0
.end method

.method public blacklist setService(Landroid/hardware/biometrics/IAuthService;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mService:Landroid/hardware/biometrics/IAuthService;

    return-object p0
.end method

.method public blacklist setShowEmergencyCallButton(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setShowEmergencyCallButton(Z)V

    return-object p0
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public blacklist setTextForDeviceCredential(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p2}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/PromptInfo;->setDeviceCredentialDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public blacklist setUseDefaultSubtitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setUseDefaultSubtitle(Z)V

    return-object p0
.end method

.method public blacklist setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .locals 2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$Builder;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/PromptInfo;->setUseDefaultTitle(Z)V

    return-object p0
.end method
