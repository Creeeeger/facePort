.class public final Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mMaxBounds:Landroid/graphics/Rect;

.field public final mMotionAnimators:Landroid/util/ArrayMap;

.field public final mSafeBounds:Landroid/graphics/Rect;

.field public final mStableBounds:Landroid/graphics/Rect;

.field public final mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/TaskMotionController;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMaxBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mStableBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mDisplayBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mSafeBounds:Landroid/graphics/Rect;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iget p3, v1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    add-int/2addr p3, p4

    sub-int/2addr p3, p2

    iget p4, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mWindowDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getCaptionVisibleHeight$1()I

    move-result p4

    add-int/2addr p4, v4

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    sub-int/2addr v2, v4

    add-int/2addr v2, p2

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v4

    add-int/2addr p2, p0

    invoke-virtual {v0, p3, p4, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget p0, v3, Landroid/graphics/Rect;->left:I

    iget p1, p1, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScreenEdgeInset:I

    add-int/2addr p0, p1

    iput p0, v3, Landroid/graphics/Rect;->left:I

    iget p0, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p1

    iput p0, v3, Landroid/graphics/Rect;->right:I

    iget p0, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p1

    iput p0, v3, Landroid/graphics/Rect;->top:I

    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    iput p0, v3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public final clearAnimator(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->cancel(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final isAnimating(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController$TaskMotionInfo;->mMotionAnimators:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator;->mAnimation:Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;

    invoke-interface {p0}, Lcom/android/wm/shell/windowdecor/TaskMotionAnimator$TaskMotionAnimation;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
