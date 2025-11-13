.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->getSelectionEnd()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;->mIsPasswordShown:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->setPasswordShown(Z)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialPasswordView;->mPasswordField:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method
