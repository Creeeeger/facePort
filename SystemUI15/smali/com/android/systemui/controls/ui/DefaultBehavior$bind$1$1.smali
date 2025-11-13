.class public final Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $control:Landroid/service/controls/Control;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/DefaultBehavior;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->$control:Landroid/service/controls/Control;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/DefaultBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->this$0:Lcom/android/systemui/controls/ui/DefaultBehavior;

    iget-object v1, v1, Lcom/android/systemui/controls/ui/DefaultBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->$control:Landroid/service/controls/Control;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/DefaultBehavior$bind$1$1;->$control:Landroid/service/controls/Control;

    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->touchCard(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    :cond_2
    return-void
.end method
