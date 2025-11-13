.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$4:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iget v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$3:I

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;->f$4:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;

    invoke-direct {v4}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;-><init>()V

    iput-boolean v0, v4, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mIsSuccess:Z

    iput-boolean v0, v4, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mNeedRefresh:Z

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    iget-object v5, v4, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "unused_app_freed_up_size"

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v4, v3, p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->onResult(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Ljava/util/List;)V

    return-void
.end method
