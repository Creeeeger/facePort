.class public final Lcom/android/settings/users/UserDialogs;
.super Ljava/lang/Object;
.source "UserDialogs.java"


# direct methods
.method public static synthetic $r8$lambda$6r6wpB4guIE4B7KMdFuGs11qnMQ(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/users/UserDialogs;->lambda$createRemoveManagedUserDialogView$4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$79Qaw5b_hGrnQBhTRqoYXEVhlH8(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDialogs;->lambda$createRemoveDialog$2(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7wrkqJNeIqf86WpYQ-fsIadak4M(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserDialogs;->lambda$createRemoveGuestDialog$5(Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ixx8-37SbXbE2nRpuWXfNpgdqA4(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/users/UserDialogs;->lambda$createRemoveManagedUserDialogView$3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c0qxQ_bK_CzSX-s3ECkoSWgicaw(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/users/UserDialogs;->lambda$createRemoveDialog$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$muK-O7YWzb6QUeSuRjHe_fY6dZ4(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/users/UserDialogs;->lambda$createRemoveDialog$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 147
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->user_enable_calling_and_sms_confirm_message:I

    .line 151
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->okay:I

    .line 152
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 164
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->user_enable_calling_confirm_message:I

    .line 168
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->okay:I

    .line 169
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 4

    const-string/jumbo v0, "user"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 60
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 61
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 62
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->user_delete_button:I

    .line 63
    invoke-virtual {v2, v3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 64
    invoke-virtual {p2, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 65
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string v3, "Settings.WORK_PROFILE_CONFIRM_REMOVE_TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 68
    invoke-static {p0, p1}, Lcom/android/settings/users/UserDialogs;->createRemoveManagedUserDialogView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const-string v1, "Settings.WORK_PROFILE_CONFIRM_REMOVE_MESSAGE"

    invoke-virtual {p1, v1, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 76
    sget p1, Lcom/android/settings/R$string;->user_confirm_remove_self_title:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    sget p1, Lcom/android/settings/R$string;->user_confirm_remove_self_message:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    sget p1, Lcom/android/settings/R$string;->user_profile_confirm_remove_title:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    sget p1, Lcom/android/settings/R$string;->user_profile_confirm_remove_message:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 82
    :cond_3
    sget p1, Lcom/android/settings/R$string;->user_confirm_remove_title:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    sget p1, Lcom/android/settings/R$string;->user_confirm_remove_message:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public static createRemoveGuestDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    .line 231
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settingslib/R$string;->guest_remove_guest_dialog_title:I

    .line 232
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->user_exit_guest_confirm_message:I

    .line 233
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->guest_remove_guest_confirm_button:I

    .line 234
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 239
    new-instance v0, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method private static createRemoveManagedUserDialogView(Landroid/content/Context;I)Landroid/view/View;
    .locals 8

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 101
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 102
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v4, "layout_inflater"

    .line 107
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 109
    sget v5, Lcom/android/settings/R$layout;->delete_managed_profile_dialog:I

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 110
    sget v4, Lcom/android/settings/R$id;->delete_managed_profile_mdm_icon_view:I

    .line 111
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    sget v4, Lcom/android/settings/R$id;->delete_managed_profile_opening_paragraph:I

    .line 116
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 117
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v6, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    const-string v7, "Settings.WORK_PROFILE_MANAGED_BY"

    invoke-virtual {v5, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget v4, Lcom/android/settings/R$id;->delete_managed_profile_closing_paragraph:I

    .line 122
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 123
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v5, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/android/settings/users/UserDialogs$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    const-string p0, "Settings.WORK_PROFILE_CONFIRM_REMOVE_MESSAGE"

    invoke-virtual {v1, p0, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 128
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 130
    sget v0, Lcom/android/settings/R$id;->delete_managed_profile_device_manager_name:I

    .line 131
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 134
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v3
.end method

.method public static createResetGuestDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 201
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settingslib/R$string;->guest_reset_guest_dialog_title:I

    .line 202
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->user_exit_guest_confirm_message:I

    .line 203
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settingslib/R$string;->guest_reset_guest_confirm_button:I

    .line 204
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static createSetupUserDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 181
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settingslib/R$string;->user_setup_dialog_title:I

    .line 182
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settingslib/R$string;->user_setup_dialog_message:I

    .line 183
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settingslib/R$string;->user_setup_button_setup_now:I

    .line 184
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$string;->user_setup_button_setup_later:I

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createRemoveDialog$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 67
    sget v0, Lcom/android/settings/R$string;->work_profile_confirm_remove_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createRemoveDialog$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 73
    sget v0, Lcom/android/settings/R$string;->work_profile_confirm_remove_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createRemoveDialog$2(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 1

    .line 88
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 89
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private static synthetic lambda$createRemoveGuestDialog$5(Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 1

    .line 239
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 240
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->sec_biometrics_dialog_remove_btn_color:I

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private static synthetic lambda$createRemoveManagedUserDialogView$3(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 119
    sget v0, Lcom/android/settings/R$string;->opening_paragraph_delete_profile_unknown_company:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createRemoveManagedUserDialogView$4(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 125
    sget v0, Lcom/android/settings/R$string;->work_profile_confirm_remove_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
