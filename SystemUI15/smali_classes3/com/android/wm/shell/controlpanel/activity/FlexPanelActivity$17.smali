.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;
.super Landroid/view/animation/Animation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$targetHeight:I

.field public final synthetic val$targetWidth:I

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetWidth:I

    iput p4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetHeight:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewWidth:I

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetWidth:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mBasicGridViewHeight:I

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$targetHeight:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsFold:Z

    const/4 p2, -0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$17;->val$v:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final willChangeBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
