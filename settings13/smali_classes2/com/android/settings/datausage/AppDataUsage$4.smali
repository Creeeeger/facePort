.class Lcom/android/settings/datausage/AppDataUsage$4;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;"
        }
    .end annotation

    .line 1057
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    .line 1058
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader;->builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1059
    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->setRetrieveDetail(Z)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 1060
    invoke-virtual {p2, v0}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->setNetworkTemplate(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;

    const/4 p2, 0x0

    .line 1061
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmAppItem(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmAppItem(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;->addUid(I)Lcom/android/settingslib/net/NetworkCycleDataForUidLoader$Builder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    iget-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p2}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycles(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1065
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycles(Lcom/android/settings/datausage/AppDataUsage;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->setCycles(Ljava/util/ArrayList;)Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;

    .line 1067
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->build()Lcom/android/settingslib/net/NetworkCycleDataLoader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1054
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage$4;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;)V"
        }
    .end annotation

    .line 1074
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUidDataCallbacks onLoadFinished selected cycle : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmSelectedCycle(Lcom/android/settings/datausage/AppDataUsage;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppDataUsage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmUsageData(Lcom/android/settings/datausage/AppDataUsage;Ljava/util/List;)V

    .line 1077
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycleAdapter(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Ljava/util/List;)V

    .line 1078
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmSelectedCycle(Lcom/android/settings/datausage/AppDataUsage;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    const/4 v1, 0x0

    if-lez p1, :cond_3

    .line 1079
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUidDataCallbacks onLoadFinished numCycle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 1085
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/net/NetworkCycleDataForUid;

    .line 1086
    invoke-virtual {v2}, Lcom/android/settingslib/net/NetworkCycleData;->getEndTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v4}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmSelectedCycle(Lcom/android/settings/datausage/AppDataUsage;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-lez v0, :cond_2

    .line 1092
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fgetmCycle(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    .line 1094
    :cond_2
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/AppDataUsage;->bindData(I)V

    goto :goto_2

    .line 1096
    :cond_3
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/AppDataUsage;->bindData(I)V

    .line 1098
    :goto_2
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$4;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->-$$Nest$fputmIsLoading(Lcom/android/settings/datausage/AppDataUsage;Z)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleDataForUid;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
