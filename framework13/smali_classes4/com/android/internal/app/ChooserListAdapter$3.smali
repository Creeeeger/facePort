.class Lcom/android/internal/app/ChooserListAdapter$3;
.super Landroid/os/AsyncTask;
.source "ChooserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserListAdapter;->createSortingTask(Z)Landroid/os/AsyncTask;
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
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserListAdapter;

.field final synthetic blacklist val$doPostProcessing:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserListAdapter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 1134
    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserListAdapter$3;->val$doPostProcessing:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1134
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;->doInBackground([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs blacklist doInBackground([Ljava/util/List;)Ljava/util/List;
    .locals 7
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

    .line 1138
    .local p1, "params":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const-string v0, "ChooserListAdapter#SortingTask"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v0

    .line 1140
    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->semIsFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->semGetChooserAllSetFromProvider()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;

    .line 1147
    .local v2, "scaps":Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;
    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 1148
    .local v4, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1149
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1150
    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->getSubLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->semSetLabels(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    .end local v4    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_1
    goto :goto_1

    .line 1153
    .end local v2    # "scaps":Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;
    :cond_2
    goto :goto_0

    .line 1155
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ChooserListAdapter;->mResolverListController:Lcom/android/internal/app/ResolverListController;

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v3}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v3

    .line 1156
    invoke-interface {v3}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->getMaxRankedTargets()I

    move-result v3

    .line 1155
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ResolverListController;->topK(Ljava/util/List;I)V

    .line 1157
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1158
    aget-object v0, p1, v1

    return-object v0

    .line 1141
    :cond_4
    :goto_2
    const-string v0, "ChooserListAdapter"

    const-string v2, "activity is finished.. stop createSortingTask!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    aget-object v0, p1, v1

    return-object v0
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1134
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserListAdapter$3;->onPostExecute(Ljava/util/List;)V

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

    .line 1162
    .local p1, "sortedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const-string v0, "ChooserListAdapter"

    const-string v1, "createSortingTask onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    iget-boolean v1, p0, Lcom/android/internal/app/ChooserListAdapter$3;->val$doPostProcessing:Z

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ChooserListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 1165
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->val$doPostProcessing:Z

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ChooserListAdapter;->-$$Nest$fgetmChooserListCommunicator(Lcom/android/internal/app/ChooserListAdapter;)Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;->updateProfileViewButton()V

    .line 1167
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$3;->this$0:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->notifyDataSetChanged()V

    .line 1169
    :cond_0
    return-void
.end method
