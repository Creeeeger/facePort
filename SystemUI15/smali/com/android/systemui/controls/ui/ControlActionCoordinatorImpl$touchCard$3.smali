.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;->$showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v1, v1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchCard$3;->$showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1;

    invoke-direct {v3, v2, v1, p0, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/PendingIntent;ZLcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object p0, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
