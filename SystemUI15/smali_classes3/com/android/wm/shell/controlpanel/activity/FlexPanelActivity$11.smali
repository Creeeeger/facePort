.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$finalFrom:I

.field public final synthetic val$finalTo:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->val$finalFrom:I

    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->val$finalTo:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->val$finalFrom:I

    sget v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    const-string v1, "basic_panel_action_list"

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayRemove(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->val$finalTo:I

    add-int/lit8 v0, v0, -0xa

    sget-object v1, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->DragCircle:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    const-string v2, "edit_panel_action_list"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onActionArrayAdd(Ljava/lang/String;ILcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->addEditPanelNone()V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$11;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragAnimation:Z

    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOnDragEnded:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->onDragEnded()V

    :cond_0
    return-void
.end method
