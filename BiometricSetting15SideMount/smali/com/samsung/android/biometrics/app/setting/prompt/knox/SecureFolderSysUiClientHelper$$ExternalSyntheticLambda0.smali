.class public final synthetic Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/inputmethod/InputMethodManager;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/inputmethod/InputMethodManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/knox/SecureFolderSysUiClientHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/inputmethod/InputMethodManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
