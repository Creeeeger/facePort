.class public final Lcom/android/settings/utils/ZenServiceListing;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mApprovedComponents:Ljava/util/Set;

.field public final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field public final mContext:Landroid/content/Context;

.field public final mNm:Landroid/app/NotificationManager;

.field public final mZenCallbacks:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/utils/ZenServiceListing;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final reloadApprovedServices()V
    .locals 14

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/utils/ZenServiceListing;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v7, v6, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x84

    invoke-virtual {v3, v5, v7, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Skipping "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " service "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v11, ": it does not require the permission "

    invoke-static {v9, v8, v11, v10}, Landroidx/fragment/app/BackStackRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/utils/ZenServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    new-instance v7, Landroid/content/Intent;

    iget-object v6, v6, Lcom/android/settings/utils/ManagedServiceSettings$Config;->configIntentAction:Ljava/lang/String;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x81

    invoke-virtual {v3, v7, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v5, v4, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ComponentInfo;

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/utils/ZenServiceListing;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_4
    iget-object v4, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/utils/ZenServiceListing;->mZenCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$2;

    iget-object v3, p0, Lcom/android/settings/utils/ZenServiceListing;->mApprovedComponents:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->DEBUG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reloaded: count="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZenRuleSelectionDialog"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->RULE_TYPE_COMPARATOR:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$3;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ComponentInfo;

    sget-boolean v7, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;->DEBUG:Z

    if-eqz v5, :cond_c

    iget-object v7, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_8

    goto :goto_9

    :cond_8
    instance-of v8, v5, Landroid/content/pm/ServiceInfo;

    const-string v9, "android.service.zen.automatic.ruleType"

    if-eqz v8, :cond_9

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_9
    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-static {v6, v6, v5}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/content/pm/PackageManager;Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    if-eqz v9, :cond_c

    new-instance v10, Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput v0, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->ruleInstanceLimit:I

    if-eqz v8, :cond_a

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v13, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move-object v11, v6

    :goto_7
    iput-object v11, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const-string v11, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    iput-object v11, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    iput-object v7, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v7, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    iput-object v9, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    const-string v7, "android.service.zen.automatic.ruleInstanceLimit"

    if-eqz v8, :cond_b

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_8

    :cond_b
    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    :goto_8
    iput v5, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->ruleInstanceLimit:I

    goto :goto_a

    :cond_c
    :goto_9
    move-object v10, v6

    :goto_a
    if-eqz v10, :cond_7

    iget-object v5, v10, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-nez v5, :cond_d

    goto :goto_5

    :cond_d
    throw v6

    :cond_e
    iget-object v2, v2, Lcom/android/settings/notification/zen/ZenRuleSelectionDialog$2;->this$0:Lcom/android/settings/notification/zen/ZenRuleSelectionDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_4

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/zen/ZenRuleInfo;

    :try_start_0
    iget-object p0, v3, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    throw v6

    :cond_10
    return-void
.end method
