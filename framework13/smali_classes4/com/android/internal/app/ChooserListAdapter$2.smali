.class Lcom/android/internal/app/ChooserListAdapter$2;
.super Landroid/os/AsyncTask;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserListAdapter;->updateAlphabeticalList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 547
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 547
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 8
    .param p1, "voids"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v0, "allTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semSStarIsShowAlphabetList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    return-object v0

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ChooserListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 557
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmCallerTargets(Lcom/android/internal/app/ChooserListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 558
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmEnableStackedApps(Lcom/android/internal/app/ChooserListAdapter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    return-object v0

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v1

    .line 562
    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsDestroyed()Z

    move-result v1

    const-string v2, "ChooserListAdapter"

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 566
    :cond_2
    const-string/jumbo v1, "updateAlphabeticalList doInBackground!"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 569
    .local v1, "consolidated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 570
    .local v3, "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->semIsNonePackageItem()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 571
    goto :goto_0

    .line 574
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 575
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, "resolvedTarget":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 578
    .local v5, "appUserId":I
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 579
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 582
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 583
    .local v6, "multiDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-nez v6, :cond_5

    .line 584
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 585
    :cond_5
    instance-of v7, v6, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    if-eqz v7, :cond_6

    .line 586
    move-object v7, v6

    check-cast v7, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-virtual {v7, v3}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    goto :goto_1

    .line 589
    :cond_6
    new-instance v7, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    invoke-direct {v7, v4, v6}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 591
    .local v7, "multiDisplayResolveInfo":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    invoke-virtual {v7, v3}, Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;->addTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V

    .line 592
    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .end local v3    # "info":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v4    # "resolvedTarget":Ljava/lang/String;
    .end local v5    # "appUserId":I
    .end local v6    # "multiDri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .end local v7    # "multiDisplayResolveInfo":Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;
    :goto_1
    goto/16 :goto_0

    .line 595
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v2, "groupedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 597
    new-instance v3, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;

    iget-object v4, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v4, v4, Lcom/android/internal/app/ChooserListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/app/ChooserActivity$AzInfoComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 598
    return-object v2

    .line 563
    .end local v1    # "consolidated":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .end local v2    # "groupedTargets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    :cond_8
    :goto_2
    const-string v1, "activity is finished.. stop updateAlphabeticalList!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 547
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    const-string v0, "ChooserListAdapter"

    const-string/jumbo v1, "updateAlphabeticalList onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fputmSortedList(Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V

    .line 604
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$2;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 605
    return-void
.end method
