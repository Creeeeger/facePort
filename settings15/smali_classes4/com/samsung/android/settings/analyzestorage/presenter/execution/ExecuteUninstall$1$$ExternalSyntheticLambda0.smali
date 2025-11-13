.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$3:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

.field public final synthetic f$6:I

.field public final synthetic f$7:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iput-object p5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    iput-object p6, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iput p7, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$6:I

    iput-object p8, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$7:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final onPackageDeleted(Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    iget-object v7, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$7:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1;

    if-nez p2, :cond_0

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PackageDeleteListener ] "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uninstall fail."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$1:I

    if-ne v0, p1, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$3:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object p1, v6, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;

    invoke-interface {p1}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;->onFinishProgress()V

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$5:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iget v5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda0;->f$6:I

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall$1$$ExternalSyntheticLambda2;-><init>(ZLjava/util/List;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_1
    return-void
.end method
