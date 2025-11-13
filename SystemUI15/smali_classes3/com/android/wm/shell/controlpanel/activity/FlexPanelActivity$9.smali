.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$animator:Landroid/animation/AnimatorSet;

.field public final synthetic val$finalTo:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;ILandroid/animation/AnimatorSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$finalTo:I

    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$animator:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$finalTo:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$animator:Landroid/animation/AnimatorSet;

    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v3, v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridView:Landroid/widget/GridView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setDragAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mGridAdapter:Lcom/android/wm/shell/controlpanel/GridPanelAdapter;

    sget-object v2, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->None:Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    move-result v0

    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/GridPanelAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/action/ControlPanelAction$Action;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->getPositionByAction(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$9;->val$animator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
