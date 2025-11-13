.class public final Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;
.super Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field public final synthetic val$bubble:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-object p6, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->val$bubble:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method


# virtual methods
.method public final getHeight(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    return p0
.end method

.method public final getLocationOnScreen(Ljava/lang/Object;[I)V
    .locals 1

    check-cast p1, Landroid/view/View;

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->val$bubble:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x0

    aput p1, p2, v0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->val$bubble:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method public final getWidth(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget p0, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    return p0
.end method
