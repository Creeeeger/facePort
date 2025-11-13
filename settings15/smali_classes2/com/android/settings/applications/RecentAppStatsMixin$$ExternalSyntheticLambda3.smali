.class public final synthetic Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppStatsMixin;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iput p2, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda3;->f$1:I

    move-object v1, p1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iget-object p1, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p1

    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    const-string v5, "RecentAppStatsMixin"

    if-gez v4, :cond_1

    const-string v2, "Invalid timestamp (usage time is more than 24 hours ago), skipping "

    :goto_2
    invoke-static {v2, v3, v5}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/settings/applications/RecentAppStatsMixin;->SKIP_SYSTEM_PACKAGES:Ljava/util/Set;

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "System package, skipping "

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settingslib/applications/AppUtils;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    invoke-static {v4}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mSystemModules:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v6, 0x0

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v4, p0, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(ILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings/applications/RecentAppStatsMixin;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7, v6, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_7

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string v2, "Not a user visible or instant app, skipping "

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    if-nez v4, :cond_8

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v4, v2}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    goto/16 :goto_1

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method
