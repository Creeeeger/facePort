.class final Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;
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

.field final synthetic $showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $templateId:Ljava/lang/String;

.field final synthetic $usePanel:Z

.field final synthetic this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/service/controls/Control;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$usePanel:Z

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$control:Landroid/service/controls/Control;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$templateId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$usePanel:Z

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->this$0:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$control:Landroid/service/controls/Control;

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$showFullScreen:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touchActionButton$1;->$templateId:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIconProgress:Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v6, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    iget-object v8, v3, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v9

    :goto_1
    iget-object v8, v8, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/service/controls/CustomControl;->getCustomSound()I

    move-result v7

    :cond_2
    iget-object v8, v3, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v8, :cond_3

    move-object v9, v8

    :cond_3
    iget-object v8, v9, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget v8, v8, Lcom/android/systemui/controls/controller/ControlInfo;->deviceType:I

    const/4 v9, 0x1

    check-cast v6, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;

    invoke-virtual {v6, v7, v8, v0, v9}, Lcom/android/systemui/controls/ui/util/AUIFacadeImpl;->playClick(IILandroid/view/View;Z)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v4}, Landroid/service/controls/Control;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object p0

    iget-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->$r8$clinit:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1;-><init>(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/app/PendingIntent;ZLcom/android/systemui/controls/ui/ControlViewHolder;)V

    iget-object p0, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v0, p0}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->action(Landroid/service/controls/actions/ControlAction;)V

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
