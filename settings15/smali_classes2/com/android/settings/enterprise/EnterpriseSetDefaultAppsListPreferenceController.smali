.class public final Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

.field public final mApps:Ljava/util/List;

.field public final mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

.field public final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mUsers:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$cAAF5RXjeyYk2J-cQWnttzqCKxA(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1408f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r89O7Clp0lX6X8NasWXprDZdzLI(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1408fc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static $r8$lambda$rPH0uEOoYWkmfu8bI7X_Fm4WTQ0(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    invoke-virtual {v2}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;->isInCompMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    :goto_0
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    new-instance v5, Landroidx/preference/PreferenceCategory;

    invoke-direct {v5, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v6, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;I)V

    const-string v7, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {v4, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v6, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;I)V

    const-string v7, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {v4, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/EnumMap;

    invoke-virtual {p0, v1, v5, v4}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getApplicationFeatureProvider()Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getEnterprisePrivacyFeatureProvider()Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->userFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/users/UserFeatureProviderImpl;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    iget-object p1, p1, Lcom/android/settings/users/UserFeatureProviderImpl;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v5, p3, v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    invoke-virtual {v8, v6, v7}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/UserAppInfo;

    iget-object v4, v4, Lcom/android/settings/applications/UserAppInfo;->userInfo:Landroid/content/pm/UserInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/EnumMap;

    const-class v4, Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-direct {v2, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/UserAppInfo;

    iget-object v8, v8, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final createPreferences(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V
    .locals 11

    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {p3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v6, Landroidx/preference/Preference;

    invoke-direct {v6, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unknown type of default "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const v8, 0x7f140c12

    invoke-static {p1, v7, v8}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_1
    const v7, 0x7f140c11

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_2
    const v8, 0x7f140c08

    invoke-static {p1, v7, v8}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_3
    const v7, 0x7f140c06

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_4
    const v8, 0x7f140c04

    invoke-static {p1, v7, v8}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_5
    const v7, 0x7f140c03

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_6
    const v7, 0x7f140c02

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move v8, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    aget-object v5, v7, v2

    goto :goto_3

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    aget-object v5, v7, v2

    aget-object v7, v7, v9

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x7f140392

    invoke-virtual {p1, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    aget-object v5, v7, v2

    aget-object v9, v7, v9

    aget-object v7, v7, v8

    filled-new-array {v5, v9, v7}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x7f140393

    invoke-virtual {p1, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {p2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
