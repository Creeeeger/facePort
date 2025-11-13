.class Lcom/android/internal/app/ResolverListAdapter$1;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;

.field final synthetic blacklist val$doPostProcessing:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 474
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iput-boolean p2, p0, Lcom/android/internal/app/ResolverListAdapter$1;->val$doPostProcessing:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 479
    .local p1, "params":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const-string v0, "ResolverListAdapter"

    const-string/jumbo v1, "list up doInBackground!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsDestroyed()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semIsFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lcom/android/internal/app/ResolverListController;->sort(Ljava/util/List;)V

    .line 488
    :try_start_0
    aget-object v1, p1, v2

    new-instance v3, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;

    iget-object v4, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v5, v4, Lcom/android/internal/app/ResolverListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/ResolverListAdapter$SemResolverListComparator;-><init>(Lcom/android/internal/app/ResolverListAdapter;Landroid/content/Context;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    goto :goto_1

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SemResolverListComparator failed!!"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const-string v1, "activity is finished.. stop sorting!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_1
    aget-object v0, p1, v2

    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 474
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected blacklist onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 498
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const-string v0, "ResolverListAdapter"

    const-string/jumbo v1, "list up process done!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverListAdapter$1;->val$doPostProcessing:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ResolverListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->notifyDataSetChanged()V

    .line 501
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->val$doPostProcessing:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$1;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->updateProfileViewButton()V

    .line 504
    :cond_0
    return-void
.end method
