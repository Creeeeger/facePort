.class public interface abstract Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxSysUiClientHelper;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public abstract changeCredentialViewIfNeeded(Landroid/view/View;)Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;
.end method

.method public abstract getDetailsTextView(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;)Landroid/widget/TextView;
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract isForgotbtnDialogShowing()Z
.end method

.method public abstract modifyLayoutParamsIfNeeded(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract onAttachedPatternViewToWindow(Lcom/android/internal/widget/LockPatternView;)V
.end method

.method public abstract onAttachedToWindow(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onCredentialVerified(IZLandroid/view/View;ILandroid/widget/TextView;)V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onErrorTimeoutFinish(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialView;ILandroid/view/View;)V
.end method

.method public abstract setBiometricAttemptDeadline(I)V
.end method

.method public abstract setDetailText(Landroid/widget/TextView;)V
.end method

.method public abstract setErrorTimerText(Landroid/widget/TextView;J)V
.end method
