.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;->mPasswordField:Landroid/widget/EditText;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/knox/KnoxAuthCredentialPasswordView;I)V

    .line 37
    .line 38
    .line 39
    const-wide/16 v1, 0x64

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
