.class public final Lcom/android/keyguard/KeyguardTextBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/keyguard/KeyguardTextBuilder;


# instance fields
.field public mAddRemainingAttempt:I

.field public mBiometricType:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceType:Ljava/lang/String;

.field public mDismissActionType:Ljava/lang/String;

.field public mIsFace:Z

.field public mIsFingerprint:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mPromptReasonType:Ljava/lang/String;

.field public mSecurityType:Ljava/lang/String;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public mStrongAuthPopup:Lcom/android/keyguard/StrongAuthPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "tablet"

    goto :goto_0

    :cond_0
    const-string p1, "none"

    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardTextBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    :cond_0
    sget-object p0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    return-object p0
.end method


# virtual methods
.method public final getAddRemainingAttemptIndication(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110006

    invoke-virtual {p1, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ")"

    invoke-static {v0, p0, p1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v2, 0x1040458

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "("

    const-string v0, ")"

    invoke-static {p0, p1, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v2

    const-string v3, "none"

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v4, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f130a89

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    sget-object v4, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f130a8a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a

    :cond_5
    :goto_2
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    const v5, 0x7f130890

    if-eqz v2, :cond_c

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_6
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    const v1, 0x7f130892

    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    sget-object v4, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->ItPolicy:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    :cond_9
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    sget-object v4, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    filled-new-array {v4, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_8

    :cond_c
    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1308d2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a

    :cond_e
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    move-object v1, v3

    :goto_5
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_10
    move-object v3, v1

    :goto_6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130879

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_11
    :goto_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "string"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_12
    const-string p0, "Can\'t find default string id="

    const-string v1, "KeyguardTextBuilder"

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_9
    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public final getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v1, 0x1040458

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "("

    const-string v0, ")"

    invoke-static {p0, p1, v0}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    const-string v2, "none"

    if-eq p2, p1, :cond_8

    const/4 p1, 0x2

    if-eq p2, p1, :cond_7

    const/4 p1, 0x3

    if-eq p2, p1, :cond_6

    const/4 p1, 0x7

    if-eq p2, p1, :cond_4

    const/16 p1, 0x11

    if-eq p2, p1, :cond_3

    return-object v0

    :cond_3
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    :cond_5
    :goto_2
    move-object v1, v2

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_2

    :goto_3
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f130892

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    filled-new-array {v2, v1, p2, v3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f130890

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    filled-new-array {v3, v2, p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    iget-object p2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {p2, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_b
    const-string p0, "Can\'t find prompt string id="

    const-string p2, "KeyguardTextBuilder"

    invoke-static {p1, p0, p2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-object v0
.end method

.method public final getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    const p1, 0x7f130891

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->NonStrongBiometricTimeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v4}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->IdleTimeout:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    :goto_0
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->getType()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Weak:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->Strong:Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$BiometricSecurityLevel;->getType()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, "Can\'t find strong auth timeout string id="

    const-string v0, "KeyguardTextBuilder"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public final getWarningAutoWipeMessage(II)Ljava/lang/String;
    .locals 8

    const-string v0, "1"

    const-string v1, "none"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-ne p2, v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f130a8e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    filled-new-array {v5, v3, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "string"

    invoke-virtual {v5, v4, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string p0, "Can\'t find the warning on auto wipe string id="

    const-string p1, "KeyguardTextBuilder"

    invoke-static {v4, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public final updateCurrentState(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricErrorLockoutPermanent()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemainingAttempt(I)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getBiometricType(I)I

    move-result v5

    if-nez v3, :cond_2

    and-int/lit8 v6, v5, 0x1

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    if-nez v3, :cond_3

    const/16 v3, 0x100

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-nez p1, :cond_d

    if-eqz v6, :cond_4

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v4

    goto :goto_5

    :cond_5
    move p1, v1

    :goto_5
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    :cond_6
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    :cond_7
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCameraDisabledByPolicy()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-nez p1, :cond_9

    if-eqz v3, :cond_a

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_a

    move v1, v4

    :cond_a
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    goto :goto_7

    :cond_b
    :goto_6
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-eqz p1, :cond_c

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFaceStrongBiometric()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    move v1, v4

    :cond_c
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    :cond_d
    :goto_7
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFingerprint:Z

    const-string v0, "none"

    if-eqz p1, :cond_e

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-eqz v1, :cond_e

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_8

    :cond_e
    if-eqz p1, :cond_f

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_8

    :cond_f
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mIsFace:Z

    if-eqz p1, :cond_10

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Face:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_8

    :cond_10
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    :goto_8
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDismissActionExist()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardConstants$KeyguardDismissActionType:[I

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v4, :cond_13

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    const/4 v1, 0x3

    if-eq p1, v1, :cond_11

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    :cond_11
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->FingerPrintError:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    :cond_12
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Reboot:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    :cond_13
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_9

    :cond_14
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string v0, "prev"

    :cond_15
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    :goto_9
    return-void
.end method

.method public final updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Pattern:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/keyguard/KeyguardTextBuilder$Security;->PIN:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    :goto_0
    return-void
.end method
