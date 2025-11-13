.class public Lcom/android/settings/password/SetupSkipDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private getPasswordSkipMessageRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 158
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_biometrics_message:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 160
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_face_message:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 162
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_fingerprint_message:I

    return p0

    .line 164
    :cond_2
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_message:I

    return p0
.end method

.method private getPasswordSkipTitleRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 145
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_biometrics_title:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 147
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_face_title:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 149
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_fingerprint_title:I

    return p0

    .line 151
    :cond_2
    sget p0, Lcom/android/settings/R$string;->lock_screen_password_skip_title:I

    return p0
.end method

.method private getPatternSkipMessageRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 132
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_biometrics_message:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 134
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_face_message:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 136
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_fingerprint_message:I

    return p0

    .line 138
    :cond_2
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_message:I

    return p0
.end method

.method private getPatternSkipTitleRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 119
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_biometrics_title:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 121
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_face_title:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 123
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_fingerprint_title:I

    return p0

    .line 125
    :cond_2
    sget p0, Lcom/android/settings/R$string;->lock_screen_pattern_skip_title:I

    return p0
.end method

.method private getPinSkipMessageRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_biometrics_message:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 186
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_face_message:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 188
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_fingerprint_message:I

    return p0

    .line 190
    :cond_2
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_message:I

    return p0
.end method

.method private getPinSkipTitleRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 171
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_biometrics_title:I

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 173
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_face_title:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 175
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_fingerprint_title:I

    return p0

    .line 177
    :cond_2
    sget p0, Lcom/android/settings/R$string;->lock_screen_pin_skip_title:I

    return p0
.end method

.method public static newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;
    .locals 3

    .line 52
    new-instance v0, Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {v0}, Lcom/android/settings/password/SetupSkipDialog;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "frp_supported"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "lock_type_pattern"

    .line 55
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "lock_type_alphanumeric"

    .line 56
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_fingerprint"

    .line 57
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_face"

    .line 58
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_biometrics"

    .line 59
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23d

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 199
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 6

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "for_face"

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "for_fingerprint"

    .line 80
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "for_biometrics"

    .line 82
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->skip_anyway_button_label:I

    .line 107
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->go_back_button_label:I

    .line 108
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->lock_screen_intro_skip_title:I

    .line 109
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v1, "frp_supported"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget v0, Lcom/android/settings/R$string;->lock_screen_intro_skip_dialog_text_frp:I

    goto :goto_0

    .line 112
    :cond_1
    sget v0, Lcom/android/settings/R$string;->lock_screen_intro_skip_dialog_text:I

    .line 110
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v5

    :goto_3
    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    const-string v2, "lock_type_pattern"

    .line 89
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 90
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPatternSkipTitleRes(ZZ)I

    move-result v0

    .line 91
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPatternSkipMessageRes(ZZ)I

    move-result v1

    goto :goto_4

    :cond_7
    const-string v2, "lock_type_alphanumeric"

    .line 92
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPasswordSkipTitleRes(ZZ)I

    move-result v0

    .line 94
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPasswordSkipMessageRes(ZZ)I

    move-result v1

    goto :goto_4

    .line 96
    :cond_8
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPinSkipTitleRes(ZZ)I

    move-result v0

    .line 97
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPinSkipMessageRes(ZZ)I

    move-result v1

    .line 100
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->skip_lock_screen_dialog_button_label:I

    .line 101
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->cancel_lock_screen_dialog_button_label:I

    .line 102
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string/jumbo v0, "skip_dialog"

    .line 217
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
