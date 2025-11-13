.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

.field public final synthetic f$1:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

.field public final synthetic f$2:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->doInBackground()Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;->mLoaderCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;

    const-class v3, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    monitor-enter v3

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mSessionArgsMap:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;->mLoaderParams:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->sessionId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;I)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
