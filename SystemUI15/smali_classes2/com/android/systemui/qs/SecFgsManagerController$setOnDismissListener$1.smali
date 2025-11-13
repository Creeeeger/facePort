.class public final Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $lock:Ljava/lang/Object;

.field public final synthetic $newChangesSinceDialogWasDismissed:Ljava/util/function/Consumer;

.field public final synthetic $onDialogDismissedRunnable:Ljava/lang/Runnable;

.field public final synthetic $updateAppItemsLockedRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/qs/SecFgsManagerController;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/systemui/qs/SecFgsManagerController;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            "Lcom/android/systemui/qs/SecFgsManagerController;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$newChangesSinceDialogWasDismissed:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$lock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$onDialogDismissedRunnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->this$0:Lcom/android/systemui/qs/SecFgsManagerController;

    iput-object p5, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$newChangesSinceDialogWasDismissed:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$lock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->this$0:Lcom/android/systemui/qs/SecFgsManagerController;

    iget-object v1, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$updateAppItemsLockedRunnable:Ljava/lang/Runnable;

    monitor-enter p1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/qs/SecFgsManagerController;->dialogConsumer:Ljava/util/function/Consumer;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/systemui/qs/SecFgsManagerController;->noItemTextView:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->$onDialogDismissedRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecFgsManagerController$setOnDismissListener$1;->this$0:Lcom/android/systemui/qs/SecFgsManagerController;

    const-string p1, "dismiss dialog"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
