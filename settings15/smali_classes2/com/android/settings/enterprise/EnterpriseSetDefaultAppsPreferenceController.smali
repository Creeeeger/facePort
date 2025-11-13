.class public final Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

.field public final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProviderImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->userFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/users/UserFeatureProviderImpl;

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProviderImpl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getNumberOfEnterpriseSetDefaultApps()I
    .locals 10

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProviderImpl;

    iget-object v0, v0, Lcom/android/settings/users/UserFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {v9, v8, v7}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "number_enterprise_set_default_apps"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140e42

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
