.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/UCMAuthCredentialPasswordView;->mPasswordField:Landroid/widget/ImeAwareEditText;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
