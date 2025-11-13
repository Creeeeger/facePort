.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1",
        "Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

.field final synthetic $menuType:I

.field final synthetic $params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$menuType:I

    return-void
.end method


# virtual methods
.method public final onOk()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;->mSelectedApps:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.archive.action"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iget v6, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$menuType:I

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v5, v8

    move-object v8, v1

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    invoke-interface {v2, v1}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;->onPrepareProgress(Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1;->$context:Landroid/content/Context;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    new-instance v5, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$1$1;

    invoke-direct {v5, p0, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$1$1;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v5, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method
