.class public Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

.field public mPreviousTileMap:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/settings/core/CategoryMixin;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/CategoryMixin;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iget v0, p1, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    iget-object p1, p1, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/dashboard/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, [Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/CategoryManager;->getTileByComponentMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    iget-object v1, v1, Lcom/android/settings/core/CategoryMixin;->mContext:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/android/settings/dashboard/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v2

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dashboard/CategoryManager;->tryInitCategories(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    sget-object v1, Lcom/android/settings/core/CategoryMixin;->sTileDenylist:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_1
    iget-object v2, v0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string v1, "CategoryManager"

    const-string v2, "Category is null, skipping denylist update"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    move v2, v4

    :goto_0
    :try_start_2
    iget-object v5, v0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    iget-object v5, v0, Lcom/android/settings/dashboard/CategoryManager;->mCategories:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/DashboardCategory;

    move v6, v4

    :goto_1
    iget-object v7, v5, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, v5, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    iget-object v7, v7, Lcom/android/settingslib/drawer/Tile;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, -0x1

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v8, v5, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5

    move v6, v7

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v5

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    :goto_3
    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object p1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/CategoryManager;->getTileByComponentMap()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;Ljava/util/Set;)V

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->mPreviousTileMap:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v3}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;Ljava/util/Set;)V

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    :goto_4
    return-object v3

    :goto_5
    monitor-exit v0

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/Set;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {v0, p1}, Lcom/android/settings/core/CategoryMixin;->onCategoriesChanged(Ljava/util/Set;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/core/CategoryMixin$CategoriesUpdateTask;->this$0:Lcom/android/settings/core/CategoryMixin;

    iget p1, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/core/CategoryMixin;->mCategoriesUpdateTaskCount:I

    return-void
.end method
