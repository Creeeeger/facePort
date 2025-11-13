.class public final Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;
.super Landroid/view/animation/Animation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

.field public final synthetic val$endX:I

.field public final synthetic val$endY:I

.field public final synthetic val$startX:I

.field public final synthetic val$startY:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iput p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$endX:I

    iput p3, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$endY:I

    iput p4, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$startX:I

    iput p5, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$startY:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    iget p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$endX:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    iget p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$endY:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p2, p2, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$endX:I

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$startX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setX(F)V

    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p2, p2, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    iget v0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$endY:I

    iget v1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->val$startY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    int-to-float v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon$2;->this$0:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconArea:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final willChangeBounds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
