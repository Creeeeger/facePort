.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v0, v2

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->toggleActionButton(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
