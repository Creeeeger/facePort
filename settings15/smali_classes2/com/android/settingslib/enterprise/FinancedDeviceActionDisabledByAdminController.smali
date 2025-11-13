.class public final Lcom/android/settingslib/enterprise/FinancedDeviceActionDisabledByAdminController;
.super Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getAdminSupportContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public final getAdminSupportTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mStringProvider:Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f140d16

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setupLearnMoreButton(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mLauncher:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "must call initialize() first"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mLauncher:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

    iget v1, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mEnforcementAdminUserId:I

    iget-object p0, p0, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "context cannot be null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;->isSameProfileGroup(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v1, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;

    check-cast v0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    new-instance p0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1}, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher$$ExternalSyntheticLambda0;)V

    iget-object p1, v0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1414bf

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method
