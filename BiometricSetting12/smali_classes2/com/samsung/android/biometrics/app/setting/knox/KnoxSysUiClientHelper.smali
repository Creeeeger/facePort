.class public interface abstract Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;
.super Ljava/lang/Object;
.source "KnoxSysUiClientHelper.java"


# virtual methods
.method public abstract changeCredentialViewIfNeeded(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;
.end method

.method public abstract getDetailsTextView(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)Landroid/widget/TextView;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract handleAuthenticationFailed()Z
.end method

.method public abstract handleAuthenticationSucceeded()Z
.end method

.method public abstract interceptHandleAuthenticationSucceededIfNeeded()Z
.end method

.method public abstract interceptNegativeButtonEventIfNeeded()Z
.end method

.method public abstract modifyLayoutParamsIfNeeded(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract onAttachedPatternViewToWindow(Lcom/android/internal/widget/LockPatternView;)V
.end method

.method public abstract onAttachedToWindow(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;)V
.end method

.method public abstract onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialView;ILandroid/view/View;)V
.end method

.method public abstract setBiometricAttemptDeadline(I)V
.end method

.method public abstract setDetailText(Landroid/widget/TextView;)V
.end method

.method public abstract setErrorTimerText(Landroid/widget/TextView;II)V
.end method
