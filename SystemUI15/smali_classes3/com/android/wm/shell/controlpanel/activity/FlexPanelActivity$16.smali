.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$editPanelView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->val$editPanelView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    const v1, 0x7f0a04a1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mPanelView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    new-instance v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;II)V

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->i_22_25_0_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v4, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;

    invoke-direct {v3, v0, v1, v4}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$18;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;->val$editPanelView:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$16;Landroid/widget/LinearLayout;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
