.class public final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final authIsRequired:Z

.field public final blockable:Z

.field public final controlId:Ljava/lang/String;

.field public final f:Lkotlin/jvm/functions/Function0;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0;",
            "ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->controlId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->f:Lkotlin/jvm/functions/Function0;

    iput-boolean p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->blockable:Z

    iput-boolean p5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->authIsRequired:Z

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->blockable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->actionsInProgress:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->controlId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$shouldRunAction$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$shouldRunAction$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method
