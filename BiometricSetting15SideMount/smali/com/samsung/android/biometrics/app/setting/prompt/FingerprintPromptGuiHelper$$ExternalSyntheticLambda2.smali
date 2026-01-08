.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/FingerprintPromptGuiHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 12
    .line 13
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onDeviceCredentialPressed()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 18
    .line 19
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onNegativeButtonPressed()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method
