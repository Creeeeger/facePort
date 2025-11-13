.class public Lcom/android/settingslib/users/UserCreatingDialog;
.super Landroid/app/ProgressDialog;
.source "UserCreatingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 47
    invoke-static {p1}, Lcom/android/settingslib/users/UserCreatingDialog;->getThemeResId(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    invoke-direct {p0, p2}, Lcom/android/settingslib/users/UserCreatingDialog;->inflateContent(Z)V

    .line 51
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7da

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x110

    .line 54
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 56
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private static getThemeResId(Landroid/content/Context;)I
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const p0, 0x10302d1

    goto :goto_1

    :cond_1
    const p0, 0x10302d2

    :goto_1
    return p0
.end method

.method private inflateContent(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$layout;->user_creation_progress_dialog:I

    const/4 v2, 0x0

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 65
    sget p1, Lcom/android/settingslib/R$string;->creating_new_guest_dialog_message:I

    goto :goto_0

    .line 66
    :cond_0
    sget p1, Lcom/android/settingslib/R$string;->creating_new_user_dialog_message:I

    .line 64
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 71
    sget v1, Lcom/android/settingslib/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    return-void
.end method
