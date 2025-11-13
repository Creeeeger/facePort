.class Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;
.super Ljava/lang/Object;
.source "DeviceAdminStringProviderImpl.java"

# interfaces
.implements Lcom/android/settingslib/enterprise/DeviceAdminStringProvider;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$A8G_7QBrMav5bqMSKvR_52oaSLM(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->lambda$getDefaultDisabledByPolicyContent$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LtQ6nUSC53n0h2fn4hYE4rElirM(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->lambda$getLearnMoreHelpPageUrl$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NdGrTfEWumKhBot-eoi7ts8gP4c(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->lambda$getDefaultDisabledByPolicyTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    .line 37
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private synthetic lambda$getDefaultDisabledByPolicyContent$1()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->default_admin_support_msg:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDefaultDisabledByPolicyTitle$0()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getLearnMoreHelpPageUrl$2()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->help_url_action_disabled_by_it_admin:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDefaultDisabledByPolicyContent()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    const-string p0, "Settings.CONTACT_YOUR_IT_ADMIN"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisabledByPolicyTitle()Ljava/lang/String;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    const-string p0, "Settings.DISABLED_BY_IT_ADMIN_TITLE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableCameraTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_camera:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisableScreenCaptureTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_screen_capture:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentContent()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_content_biometric_parental_consent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledBiometricsParentConsentTitle()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_biometric_parental_consent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledByPolicyTitleForFinancedDevice()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_financed_device:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowAdjustVolumeTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_adjust_volume:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowOutgoingCallsTitle()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_outgoing_calls:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisallowSmsTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_sms:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLearnMoreHelpPageUrl()Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;)V

    const-string p0, "Settings.IT_ADMIN_POLICY_DISABLING_INFO_URL"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSuspendPackagesTitle()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object p0, p0, Lcom/android/settings/enterprise/DeviceAdminStringProviderImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disabled_by_policy_title_suspend_packages:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
