.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->doInBackground()Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;

    move-result-object v0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;I)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;->onLoadFinished(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;->onLoadFinished(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
