.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 6
    .line 7
    check-cast p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 8
    .line 9
    const/16 p1, 0x8

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;->onDismissed(I[B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
