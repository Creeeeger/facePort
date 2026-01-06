.class public Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;
.super Landroid/widget/ImeAwareEditText;
.source "AuthCredentialEditText.java"


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImeAwareEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ImeAwareEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v3, 0x4d

    const/16 v4, 0x4d

    if-ne v2, v4, :cond_0

    invoke-static {v2}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->mUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p1, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    :goto_0
    return-object v0
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialEditText;->mUserId:I

    return-void
.end method
