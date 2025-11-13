.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ThumbnailBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object v1, v1, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Landroid/service/controls/templates/ThumbnailTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ThumbnailBehavior;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/android/systemui/controls/ControlsMetricsLogger;->touch(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->usePanel()Z

    move-result v3

    iget-object v4, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    iget-object v4, v4, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v4, v4, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    new-instance v5, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;

    invoke-direct {v5, p1, v0, p0, v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$touch$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;Landroid/service/controls/Control;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p0, :cond_3

    move-object v2, p0

    :cond_3
    iget-object p0, v2, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/service/controls/Control;->isAuthRequired()Z

    move-result p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    :goto_3
    invoke-virtual {v0, v4, v5, v3, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->createAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    return-void
.end method
