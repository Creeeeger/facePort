.class public Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;
.super Ljava/lang/Object;
.source "PowerOffLockStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;


# instance fields
.field private final blacklist mBiometricPromptWrapper:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;)V
    .locals 0
    .param p1, "conditionChecker"    # Lcom/samsung/android/globalactions/util/ConditionChecker;
    .param p2, "biometricPromptWrapper"    # Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mBiometricPromptWrapper:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    .line 23
    return-void
.end method

.method static synthetic blacklist lambda$doActionBeforeSecureConfirm$0(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0
    .param p0, "viewModel"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 31
    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPressSecureConfirm()V

    return-void
.end method

.method static synthetic blacklist lambda$doActionBeforeSecureConfirm$1(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 1
    .param p0, "globalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 31
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    return-void
.end method


# virtual methods
.method public blacklist doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z
    .locals 5
    .param p1, "viewModel"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .param p2, "globalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 27
    return v1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_POWER_OFF_UNLOCK_ALWAYS_REQUIRED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 30
    .local v0, "signal":Landroid/os/CancellationSignal;
    iget-object v2, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mBiometricPromptWrapper:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    const v3, 0x80ff

    const-string v4, " "

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->initPrompt(Ljava/lang/String;I)V

    .line 31
    iget-object v2, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mBiometricPromptWrapper:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    new-instance v3, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    new-instance v4, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v4, p2}, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->setRunnable(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 32
    iget-object v2, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mBiometricPromptWrapper:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->buildAndRun(Landroid/os/CancellationSignal;)V

    .line 33
    return v1

    .line 35
    .end local v0    # "signal":Landroid/os/CancellationSignal;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasSecureConfirmCondition()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isNeedSecureConfirm()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_POWER_OFF_UNLOCK_NOT_REQUIRED:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 41
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/PowerOffLockStrategy;->mBiometricPromptWrapper:Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;

    const v1, 0x80ff

    .line 42
    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/BiometricPromptWrapper;->canAuthenticate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method
