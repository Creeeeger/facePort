.class public final Lcom/android/settings/enterprise/CaCertsManagedProfilePreferenceController;
.super Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final CA_CERTS_MANAGED_PROFILE:Ljava/lang/String; = "ca_certs_managed_profile"


# virtual methods
.method public final getNumberOfCaCerts()I
    .locals 3

    iget-object p0, p0, Lcom/android/settings/enterprise/CaCertsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->getManagedProfileUserId()I

    move-result v0

    const/16 v1, -0x2710

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->mDpm:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    return v2
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ca_certs_managed_profile"

    return-object p0
.end method
