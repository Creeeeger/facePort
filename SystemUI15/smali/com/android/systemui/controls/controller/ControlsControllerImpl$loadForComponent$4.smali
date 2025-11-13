.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $dataCallback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->$dataCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$accept$1;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->$componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->$dataCallback:Ljava/util/function/Consumer;

    invoke-direct {v2, v3, p1, v0, p0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$accept$1;-><init>(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v0, p1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->$componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->$dataCallback:Ljava/util/function/Consumer;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;-><init>(Landroid/content/ComponentName;Ljava/util/function/Consumer;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
