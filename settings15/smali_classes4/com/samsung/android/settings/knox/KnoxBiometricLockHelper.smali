.class public abstract Lcom/samsung/android/settings/knox/KnoxBiometricLockHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract addIntentIfNeeded(Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract interceptIsBiometricAllowedIfNeeded()Z
.end method

.method public abstract interceptOnAuthenticationErrorIfNeeded(ILjava/lang/CharSequence;Landroid/app/Activity;)Z
.end method

.method public abstract interceptOnAuthenticationFailedIfNeeded(Z)V
.end method

.method public abstract interceptOnAuthenticationSucceededIfNeeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)Z
.end method

.method public abstract interceptShowConfirmCredentialsIfNeeded()Z
.end method

.method public abstract isBiometricAllowed(II)Z
.end method

.method public abstract onStart(Landroid/app/Activity;Z)V
.end method

.method public abstract setFragmentManager(Landroidx/fragment/app/FragmentManagerImpl;)V
.end method

.method public abstract setResultIfNeeded()V
.end method
