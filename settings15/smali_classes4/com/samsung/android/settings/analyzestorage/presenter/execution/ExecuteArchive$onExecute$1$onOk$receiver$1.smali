.class public final Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $archivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic $executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

.field public final synthetic $menuType:I

.field public final synthetic $params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

.field public final synthetic $selectedList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$selectedList:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$archivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iput p5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$menuType:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$selectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$archivedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iget v4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;->$menuType:I

    move-object v1, p2

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1$onReceive$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;ILandroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive$onExecute$1$onOk$receiver$1;)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
