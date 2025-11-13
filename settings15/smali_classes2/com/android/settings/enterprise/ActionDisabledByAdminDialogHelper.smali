.class public final Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;

.field public final mActivity:Landroid/app/Activity;

.field public final mDialogView:Landroid/view/ViewGroup;

.field mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public mRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0bd4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;

    invoke-direct {v1, p1}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;-><init>(Landroid/content/Context;)V

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "disallow_biometric"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v6, 0x10e

    invoke-static {p1, v3, v6, v5}, Landroid/hardware/biometrics/ParentalControlsUtilsInternal;->parentConsentRequired(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;ILandroid/os/UserHandle;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_1

    new-instance p2, Lcom/android/settingslib/enterprise/BiometricActionDisabledByAdminController;

    invoke-direct {p2, v1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    goto :goto_2

    :cond_1
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    const-string v5, "device_policy_manager"

    const-string v6, "add-isfinanced-device"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isFinancedDevice()Z

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v3

    if-ne v3, v7, :cond_3

    move v3, v7

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    new-instance p2, Lcom/android/settingslib/enterprise/FinancedDeviceActionDisabledByAdminController;

    invoke-direct {p2, v1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    goto :goto_2

    :cond_4
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    move v4, v7

    :cond_5
    if-eqz v4, :cond_6

    new-instance v2, Lcom/android/settingslib/enterprise/SupervisedDeviceActionDisabledByAdminController;

    invoke-direct {v2, v1, p2}, Lcom/android/settingslib/enterprise/SupervisedDeviceActionDisabledByAdminController;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;Ljava/lang/String;)V

    move-object p2, v2

    goto :goto_2

    :cond_6
    new-instance p2, Lcom/android/settingslib/enterprise/ManagedDeviceActionDisabledByAdminController;

    invoke-direct {p2, v1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    const p2, 0x7f0a00ba

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;)V

    const-string p0, "Settings.DISABLED_BY_IT_ADMIN_TITLE"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final initializeDialogViews(Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ILjava/lang/String;)V
    .locals 4

    iget-object v0, p2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;

    iget-object v2, v1, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mLauncher:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v3, "must call initialize() first"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput p3, v1, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mEnforcementAdminUserId:I

    iput-object p2, v1, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportIcon(Landroid/view/View;Landroid/content/ComponentName;I)V

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {p2, p3}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->KC_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    :cond_3
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V

    const/16 p4, -0x2710

    if-ne p3, p4, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    :goto_1
    new-instance p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p3, v0, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public final prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->getPositiveButtonListener(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v0, :cond_0

    const v1, 0x7f142e05

    goto :goto_0

    :cond_0
    const v1, 0x7f141b4c

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-object v2
.end method

.method public prepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    new-instance v0, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/enterprise/ActionDisabledLearnMoreButtonLauncherImpl;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/AlertDialog$Builder;)V

    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->mLauncher:Lcom/android/settingslib/enterprise/ActionDisabledLearnMoreButtonLauncher;

    iput-object p3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    invoke-static {p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-virtual {p0, p2, p3, v0, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->setupLearnMoreButton(Landroid/content/Context;)V

    return-void
.end method

.method public setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    if-eqz p3, :cond_9

    iget-object v0, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    if-nez p1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->user:Landroid/os/UserHandle;

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->getEnforcementAdminUserId(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    :cond_4
    move-object p1, v2

    :goto_1
    iget-object p3, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->KC_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;

    if-eqz p3, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->getAdminSupportContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->getKcActionDisabledText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    move-object v2, p0

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->getAdminSupportContentString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_3

    :cond_8
    :goto_4
    const p0, 0x7f0a00bd

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v2, :cond_9

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public setAdminSupportIcon(Landroid/view/View;Landroid/content/ComponentName;I)V
    .locals 0

    const p2, 0x7f0a00bb

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f08047b

    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x1010435

    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const p2, 0x7f0a00ba

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActionDisabledByAdminController:Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;

    invoke-virtual {p0}, Lcom/android/settingslib/enterprise/BaseActionDisabledByAdminController;->getAdminSupportTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
