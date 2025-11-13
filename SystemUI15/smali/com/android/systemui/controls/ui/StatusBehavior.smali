.class public final Lcom/android/systemui/controls/ui/StatusBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;
.implements Lcom/android/systemui/controls/ui/SecBehavior;


# instance fields
.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/StatusBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/controls/ui/StatusBehavior$bind$1$1;-><init>(Lcom/android/systemui/controls/ui/StatusBehavior;Landroid/service/controls/Control;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/service/controls/Control;->getStatus()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v3, :cond_6

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    const/4 p1, 0x4

    if-eq v0, p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    iput-boolean v4, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    const p1, 0x7f130444

    goto :goto_4

    :cond_4
    const p1, 0x7f131062

    goto :goto_4

    :cond_5
    const p1, 0x7f13105e

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/ui/StatusBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/controls/ui/StatusBehavior$bind$msg$1;-><init>(Lcom/android/systemui/controls/ui/StatusBehavior;Lcom/android/systemui/controls/ui/ControlWithState;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f13105f

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/controls/ui/StatusBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_8

    move-object v3, v0

    goto :goto_5

    :cond_8
    move-object v3, v1

    :goto_5
    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v1

    :goto_6
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/StatusBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_a

    move-object v1, p0

    :cond_a
    invoke-virtual {v1, p2, v2, v4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/StatusBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/StatusBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-void
.end method
