.class public Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;
.super Landroid/widget/ImeAwareEditText;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "inputType=option;disableToolbar=true;disableLiveMessage=true;lockScreenPasswordField=true"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImeAwareEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImeAwareEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/widget/ImeAwareEditText;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v2, "activity"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/ActivityManager;

    .line 14
    .line 15
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x4d

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;->mUserId:I

    .line 31
    .line 32
    invoke-static {p0}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 37
    .line 38
    :goto_0
    return-object v0
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialEditText;->mUserId:I

    .line 2
    .line 3
    return-void
.end method
