.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

.field public final synthetic $menuType:I

.field public final synthetic $params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;ILandroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$menuType:I

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;->onFinishProgress()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mIsSuccess:Z

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;->mNeedRefresh:Z

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$menuType:I

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->onResult(Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/FileOperationResult;ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
