.class public final Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getEnterprisePrivacyFeatureProvider()Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    iget-object v0, v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;)V

    const-string p0, "Settings.MANAGED_DEVICE_INFO_SUMMARY"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/PrivacyPreferenceControllerHelper;Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Settings.MANAGED_DEVICE_INFO_SUMMARY_WITH_NAME"

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
