.class public final Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public final onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 13

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isDismissButtonShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    goto/16 :goto_3

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    sub-float v3, p1, v3

    add-float/2addr v3, v2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget v3, v3, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    sub-float v3, v0, v3

    add-float/2addr v3, v2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setY(F)V

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput p1, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionX:F

    iput v0, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mLastPositionY:F

    iget-object p1, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->mDismissButtonView:Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerDismissButtonView;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    iget-object p2, p2, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DismissView;->updateView(Landroid/graphics/Rect;)V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iput-boolean v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasPreviewMoved:Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p1, p2}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->getDraggingViewBounds(Landroid/graphics/Rect;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTargetPreviewItem:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v2, p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->hideDismissButtonAndDismissIcon(Lcom/android/wm/shell/freeform/FreeformContainerItem;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p2, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-boolean p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mHasPreviewMoved:Z

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->-$$Nest$mrestorePreview(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mViewController:Lcom/android/wm/shell/freeform/FreeformContainerViewController;

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerViewController;->isEnterDismissButton()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$1;->this$1:Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p2, p2, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreview:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v2, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewReturnLocation:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    int-to-float v4, v4

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v3

    :goto_1
    iput-boolean v5, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewX:Z

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    sub-float v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    iput-boolean v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mAnimatingSpringPreviewY:Z

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {v0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->isSpringPreviewAnimating()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "[FolderView] animateToReturnDraggingAppIconView: spring failed, from=["

    const-string v1, ","

    const-string v3, "], to=["

    invoke-static {v0, p1, v1, p2, v3}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "], call finishDraggingAppIcon()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FreeformContainer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->finishDraggingAppPreview()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v1}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringX:Lcom/facebook/rebound/Spring;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringX:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/facebook/rebound/SpringConfig;

    const-wide v5, 0x4066800000000000L    # 180.0

    const-wide/high16 v7, 0x4032000000000000L    # 18.0

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v1, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringX:Lcom/facebook/rebound/Spring;

    const-wide v9, 0x3fd3333340000000L    # 0.30000001192092896

    iput-wide v9, v0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    iput-wide v9, v0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    new-instance v1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$2;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v11, p1

    invoke-virtual {v0, v11, v12}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringX:Lcom/facebook/rebound/Spring;

    float-to-double v0, v4

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringY:Lcom/facebook/rebound/Spring;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringY:Lcom/facebook/rebound/Spring;

    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    iput-object v0, p1, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringY:Lcom/facebook/rebound/Spring;

    iput-wide v9, p1, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    iput-wide v9, p1, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder$3;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringY:Lcom/facebook/rebound/Spring;

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)V

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView$MultiInstanceItemViewHolder;->this$0:Lcom/android/wm/shell/freeform/FreeformContainerFolderView;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerFolderView;->mDraggingPreviewSpringY:Lcom/facebook/rebound/Spring;

    float-to-double p1, v2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/rebound/Spring;->setEndValue(D)V

    :cond_7
    :goto_3
    return-void
.end method
