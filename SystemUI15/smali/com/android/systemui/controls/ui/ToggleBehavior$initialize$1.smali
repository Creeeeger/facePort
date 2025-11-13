.class public final Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ToggleBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;

    iget-object v1, v1, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Landroid/service/controls/templates/ToggleTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleBehavior;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_1

    move-object v2, p0

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->touchCard(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    :cond_2
    return-void
.end method
