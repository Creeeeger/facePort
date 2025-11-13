.class public final Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptClient;

    .line 22
    .line 23
    const/16 p3, 0x3eb

    .line 24
    .line 25
    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialView;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCallback:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptCallback;->onUserCancel(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return p2
.end method
