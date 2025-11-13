.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;
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
.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field final synthetic $templateId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/service/controls/Control;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$control:Landroid/service/controls/Control;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$templateId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->usePanel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$control:Landroid/service/controls/Control;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object p0

    sget v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/PendingIntent;ZLcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object p0, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    new-instance v1, Landroid/service/controls/actions/CommandAction;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;->$templateId:Ljava/lang/String;

    invoke-direct {v1, p0}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
