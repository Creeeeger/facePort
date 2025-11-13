.class public final Lcom/android/wm/shell/freeform/FreeformContainerItemController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mFreeformContainerIconLoader:Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;

.field public mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

.field public final mItemList:Ljava/util/List;

.field public mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;

    return-void
.end method


# virtual methods
.method public final addItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 5

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->needLoading(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeAllItemsWithType(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    const-string v1, "FreeformContainer"

    const-string v2, "[ItemController] remove last published item because it\'s over the max Freeform container count"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v4, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-boolean v4, v4, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    sget-object v1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3}, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerItemController;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final animationCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ItemController] animationCompleted: item: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ItemController] animationCompleted failed item(="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is not in list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->publishItemIfNeeded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    return-void
.end method

.method public final getItemById(I)Lcom/android/wm/shell/freeform/FreeformContainerItem;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    instance-of v1, v0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    iget v1, v1, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v2

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemByName(Ljava/lang/String;)Lcom/android/wm/shell/freeform/FreeformContainerItem;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final iconLoadCompleted(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ItemController] iconLoadCompleted: item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ItemController] iconLoadCompleted failed item(="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is not in list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->publishItemIfNeeded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    return-void
.end method

.method public final publishItemIfNeeded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    const-string v1, "FreeformContainer"

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ItemController] publishItemIfNeeded: item is not in list, item="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    if-nez v2, :cond_e

    iget-boolean v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v7, v6, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v7}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v7

    if-ne v7, v2, :cond_1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    :goto_1
    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    add-int/lit8 v4, v5, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-boolean v2, v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ItemController] publishItemIfNeeded: previous item is not published, item="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v6, v2, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v7}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v8

    if-ne v7, v8, :cond_8

    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v6, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-boolean v6, v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    if-nez v6, :cond_7

    iput-boolean v4, v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    iget-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    if-nez v0, :cond_b

    iput-boolean v4, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    :cond_b
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mCallBacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[ViewController] onItemAdded: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerCallback;->onItemAdded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[ItemController] publishItemIfNeeded item="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v4

    if-ge v5, p1, :cond_d

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    add-int/2addr v5, v4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->publishItemIfNeeded(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    :cond_d
    return-void

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[ItemController] publishItemIfNeeded: item is not ready, item="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeAllItemsWithType(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget v2, v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mItemType:I

    iget v3, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mItemType:I

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    if-ne v3, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeAllMinimizeContainerItem()V
    .locals 3

    const-string v0, "FreeformContainer"

    const-string v1, "[ItemController] Run removeAllMinimizeContainerItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    instance-of v2, v1, Lcom/android/wm/shell/freeform/MinimizeContainerItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeAllSmartPopupViewItem()V
    .locals 3

    const-string v0, "FreeformContainer"

    const-string v1, "[ItemController] Run removeAllSmartPopupViewItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    instance-of v2, v1, Lcom/android/wm/shell/freeform/SmartPopupViewItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ItemController] Run removeItem, item="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result p1

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v2}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    const/4 v5, 0x0

    if-ltz v4, :cond_3

    iget-object v6, v3, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    iget v7, v6, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mTaskId:I

    if-ne v7, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_6

    iget-object v4, v3, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[MultiInstanceItem]  removeChildItem: failed, not exist, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget-object v4, v6, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iput-object v5, v6, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[MultiInstanceItem] setSnapshotBitmap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, v3, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "removeChildItem: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v3, v6}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->notifyItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    :cond_6
    iget-boolean v3, v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1, v2}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->notifyItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->notifyItemRemoved(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method

.method public final throwAwayAllItems()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v2, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->throwAway(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->throwAway(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V

    goto :goto_0

    :cond_2
    return-void
.end method
