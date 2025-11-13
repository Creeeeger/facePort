.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->newChangesSinceDialogWasDismissed:Z

    iget-object v1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl;->updateAppItemsLocked(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onDialogDismissedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1$2$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$3$1$2$1;-><init>(Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
