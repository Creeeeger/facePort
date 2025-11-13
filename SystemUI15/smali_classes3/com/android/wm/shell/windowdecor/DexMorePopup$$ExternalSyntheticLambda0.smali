.class public final synthetic Lcom/android/wm/shell/windowdecor/DexMorePopup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DexMorePopup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    iget v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    iget-object v3, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v3, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {v0, v3, p2}, Landroid/graphics/PointF;-><init>(FF)V

    neg-int p2, v2

    int-to-float p2, p2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/PointF;->offset(FF)V

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/PointF;->offset(FF)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    if-eqz p1, :cond_2

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz p2, :cond_1

    iget-boolean p2, p1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsPopupShowing:Z

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
