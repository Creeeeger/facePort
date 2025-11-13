.class public final Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;
.super Lcom/android/settings/network/NetworkResetRestrictionChecker;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final mRestriction:Ljava/lang/String; = "no_network_reset"


# instance fields
.field public final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkResetRestrictionChecker;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final build()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/NetworkResetRestrictionChecker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkResetRestrictionChecker;->hasUserBaseRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->getEnforceAdminByRestriction()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->createRestrictDialogBuilder(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;)V

    iget-object v2, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->createEmptyView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->operationNotAllow()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public createEmptyView()Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/view/ViewStub;

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createRestrictDialogBuilder(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    new-instance v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p0, "no_network_reset"

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public getEnforceAdminByRestriction()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    const-string v0, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public operationNotAllow()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d04bd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
