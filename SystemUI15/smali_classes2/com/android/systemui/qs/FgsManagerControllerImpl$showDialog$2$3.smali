.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->onDialogDismissedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3$1$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$2$3$1$1;-><init>(Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
