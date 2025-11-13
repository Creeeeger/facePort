.class public Lcom/android/internal/app/ChooserActivity$ChooserListController;
.super Lcom/android/internal/app/ResolverListController;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListController"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V
    .locals 10
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "targetIntent"    # Landroid/content/Intent;
    .param p5, "referrerPackageName"    # Ljava/lang/String;
    .param p6, "launchedFromUid"    # I
    .param p7, "userId"    # Landroid/os/UserHandle;
    .param p8, "resolverComparator"    # Lcom/android/internal/app/AbstractResolverComparator;

    .line 4946
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 4947
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ResolverListController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;ILandroid/os/UserHandle;Lcom/android/internal/app/AbstractResolverComparator;)V

    .line 4949
    return-void
.end method


# virtual methods
.method blacklist isComponentFiltered(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4953
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4954
    return v1

    .line 4956
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmFilteredComponentNames(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 4957
    .local v4, "filteredComponentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4958
    const/4 v0, 0x1

    return v0

    .line 4956
    .end local v4    # "filteredComponentName":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4961
    :cond_2
    return v1
.end method

.method public blacklist isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4967
    const/4 v0, 0x0

    .line 4968
    .local v0, "currentValue":Z
    const-wide/16 v1, 0x0

    .line 4971
    .local v1, "saveTime":J
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 4974
    goto :goto_0

    .line 4972
    :catch_0
    move-exception v4

    .line 4977
    :goto_0
    const-wide/16 v4, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v1, v6

    .line 4980
    goto :goto_1

    .line 4978
    :catch_1
    move-exception v6

    .line 4982
    :goto_1
    if-nez v0, :cond_0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public blacklist isFixedAtTop(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4990
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getNearbySharingComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 4991
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldNearbyShareBeFirstInRankedRow(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4990
    :goto_0
    return v0
.end method

.method public blacklist semCheckMetadataExist(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 5015
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity;->semIsComponentWithPriorityInMetadata(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist semGetComponentPinnedTime(Landroid/content/ComponentName;)J
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 5020
    const-wide/16 v0, 0x0

    .line 5022
    .local v0, "time":J
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 5025
    goto :goto_0

    .line 5023
    :catch_0
    move-exception v2

    .line 5024
    .local v2, "e":Ljava/lang/ClassCastException;
    const-wide/16 v0, 0x0

    .line 5027
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_0
    return-wide v0
.end method

.method public blacklist semGetPinnedSharedPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .line 5010
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method blacklist semIsComponentDropped(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 4997
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemDropComponents(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4998
    return v1

    .line 5000
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListController;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSemDropComponents(Lcom/android/internal/app/ChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5001
    .local v2, "dropComponentName":Landroid/content/ComponentName;
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5002
    const/4 v0, 0x1

    return v0

    .line 5004
    .end local v2    # "dropComponentName":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 5005
    :cond_2
    return v1
.end method
