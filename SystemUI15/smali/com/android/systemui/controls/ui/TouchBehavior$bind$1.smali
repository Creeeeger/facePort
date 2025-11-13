.class public final Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget-object v2, v1, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    iget-object v1, v1, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget-object v3, v3, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v0

    :goto_3
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->touchActionButton(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget-object v1, p1, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v0

    :goto_4
    instance-of v1, v1, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    iget-object v2, p1, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move-object v2, v0

    :goto_5
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled$1()Z

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget v3, v3, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    invoke-virtual {v2, v3, p1, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_7

    move-object v0, p1

    :cond_7
    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1$1;-><init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V

    const-wide/16 v1, 0xbb8

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_8
    return-void
.end method
