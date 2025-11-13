.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$finalFrom:I

.field public final synthetic val$finalTo:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalFrom:I

    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalTo:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x4

    const-string v1, "edit_panel_action_list"

    const/4 v2, 0x0

    const-string v3, "basic_panel_action_list"

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalFrom:I

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v1, v5, v2, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalTo:I

    sget-object v4, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p1, v3, v0, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemoveAdd(Ljava/lang/String;IILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1, v3, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getActionArray(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {v0, v3, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setActionArray(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalFrom:I

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemove(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->val$finalTo:I

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeEditPanelNone()V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->addEditPanelNone()V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$8;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-boolean v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    :cond_2
    return-void
.end method
