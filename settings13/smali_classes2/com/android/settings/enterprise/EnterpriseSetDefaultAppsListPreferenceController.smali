.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EnterpriseSetDefaultAppsListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5VQhUMFjyIi9mvc1if9V0JQH4nk(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->lambda$updateUi$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gMJKDCUe8r3-8wLlwT3iCHQbgFE(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->lambda$buildAppList$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$srYbugvG6w12X5WZM7BDJHP-w2g(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->lambda$updateUi$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 69
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 70
    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 71
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 72
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 73
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 74
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildAppList()V

    return-void
.end method

.method private buildAppList()V
    .locals 12

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 84
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/users/UserFeatureProvider;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    .line 88
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v8, v3, v6

    .line 89
    iget-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 90
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 91
    invoke-virtual {v8}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v11

    .line 90
    invoke-interface {v9, v10, v11}, Lcom/android/settings/applications/ApplicationFeatureProvider;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v9

    .line 92
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_2

    .line 97
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/UserAppInfo;

    iget-object v7, v7, Lcom/android/settings/applications/UserAppInfo;->userInfo:Landroid/content/pm/UserInfo;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Ljava/util/EnumMap;

    const-class v7, Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-direct {v2, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 99
    iget-object v7, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    .line 101
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/UserAppInfo;

    .line 103
    iget-object v11, v11, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v2, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_4
    new-instance v0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 171
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 172
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 173
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 176
    aget-object p0, v0, v1

    return-object p0

    .line 177
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_2

    .line 178
    sget p0, Lcom/android/settings/R$string;->app_names_concatenation_template_2:I

    new-array p2, p2, [Ljava/lang/Object;

    aget-object v3, v0, v1

    aput-object v3, p2, v1

    aget-object v0, v0, v2

    aput-object v0, p2, v2

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_2
    sget p0, Lcom/android/settings/R$string;->app_names_concatenation_template_3:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v1

    aput-object v4, v3, v1

    aget-object v1, v0, v2

    aput-object v1, v3, v2

    aget-object v0, v0, p2

    aput-object v0, v3, p2

    invoke-virtual {p1, p0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createPreferences(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/EnumMap<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 157
    invoke-virtual {p3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 158
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    new-instance v6, Landroidx/preference/Preference;

    invoke-direct {v6, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, p1, v4, v7}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    invoke-direct {p0, p1, v5}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 165
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 166
    invoke-virtual {p2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;
    .locals 1

    .line 187
    sget-object p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$1;->$SwitchMap$com$android$settings$applications$EnterpriseDefaultApps:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    .line 206
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type of default "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 203
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->default_camera_app_title:I

    .line 204
    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->default_email_app_title:I

    .line 201
    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 198
    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->default_map_app_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->default_phone_app_title:I

    .line 196
    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :pswitch_4
    sget p0, Lcom/android/settings/R$string;->default_contacts_app_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :pswitch_5
    sget p0, Lcom/android/settings/R$string;->default_calendar_app_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :pswitch_6
    sget p0, Lcom/android/settings/R$string;->default_browser_title:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$buildAppList$0()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->updateUi()V

    return-void
.end method

.method private synthetic lambda$updateUi$1()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->category_work:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateUi$2()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->category_personal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateUi()V
    .locals 8

    .line 122
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v2}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 128
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    goto :goto_2

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    .line 131
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 133
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 134
    new-instance v5, Landroidx/preference/PreferenceCategory;

    invoke-direct {v5, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 136
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v6, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V

    const-string v7, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {v4, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v6, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;)V

    const-string v7, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {v4, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    :goto_1
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/EnumMap;

    invoke-direct {p0, v0, v5, v4}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
