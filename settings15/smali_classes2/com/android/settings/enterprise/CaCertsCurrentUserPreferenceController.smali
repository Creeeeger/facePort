.class public final Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;
.super Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final CA_CERTS_CURRENT_USER:Ljava/lang/String; = "ca_certs_current_user"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$Kt5vByvDbcJsmjYy7819EWQpkxE(Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140e2a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kv0YrITcZsPSPwpzgxSyRFhfCdY(Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f140e2b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method


# virtual methods
.method public final getNumberOfCaCerts()I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Landroid/os/UserHandle;

    sget v1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->MY_USER_ID:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ca_certs_current_user"

    return-object p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-virtual {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->isInCompMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;I)V

    const-string p0, "Settings.CA_CERTS_PERSONAL_PROFILE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/CaCertsCurrentUserPreferenceController;I)V

    const-string p0, "Settings.CA_CERTS_DEVICE"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
