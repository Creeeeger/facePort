.class public abstract Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.super Ljava/lang/Object;
.source "SemAbsDragAndDropAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final blacklist BITMAP_ALPHA:I = 0xb3

.field static final blacklist DND_AUTO_SCROLL_DELTA_VALUE:I = 0x7

.field static final blacklist DND_AUTO_SCROLL_END:I = 0x2

.field static final blacklist DND_AUTO_SCROLL_FRAME_DELAY:I = 0xa

.field static final blacklist DND_AUTO_SCROLL_NONE:I = 0x0

.field static final blacklist DND_AUTO_SCROLL_START:I = 0x1

.field static final blacklist DND_TOUCH_STATUS_MOVING:I = 0x2

.field static final blacklist DND_TOUCH_STATUS_NON:I = 0x0

.field static final blacklist DND_TOUCH_STATUS_START:I = 0x1

.field static final blacklist DRAGGING_RELEASE_ANIM_DURATION_MULTIPLICATOR:F = 0.7f

.field static final blacklist DRAG_HANDLE_FADE_DURATION:I = 0xc8

.field static blacklist EMPTY_STATE_SET:[I = null

.field static final blacklist FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final blacklist FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final blacklist INVALID_POINTER_ID:I = -0x1

.field static blacklist PRESSED_STATE_SET:[I = null

.field static final blacklist SCALEUPDOWNANIM_RESISTANCE:F = 15.0f

.field static final blacklist SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

.field private static final blacklist TAG:Ljava/lang/String; = "SemAbsDragAndDropAnimator"


# instance fields
.field blacklist mActivePointerId:I

.field blacklist mAutoScrollBottomDelta:I

.field blacklist mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

.field blacklist mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

.field blacklist mAutoScrollTopDelta:I

.field blacklist mCanvasSaveCount:I

.field blacklist mContext:Landroid/content/Context;

.field private final blacklist mDensity:F

.field blacklist mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

.field blacklist mDndAutoScrollMode:I

.field blacklist mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field blacklist mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

.field blacklist mDndMode:Z

.field blacklist mDndTouchMode:I

.field blacklist mDndTouchOffsetX:I

.field blacklist mDndTouchOffsetY:I

.field blacklist mDndTouchX:I

.field blacklist mDndTouchY:I

.field blacklist mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

.field blacklist mDragGrabHandlePadding:Landroid/graphics/Rect;

.field blacklist mDragGrabHandlePosGravity:I

.field blacklist mDragHandleAlpha:I

.field blacklist mDragPos:I

.field blacklist mDragView:Landroid/view/View;

.field blacklist mDragViewBitmap:Landroid/graphics/Bitmap;

.field blacklist mDragViewBitmapAlpha:I

.field blacklist mDragViewBitmapPaint:Landroid/graphics/Paint;

.field blacklist mDragViewBitmapTranslateX:I

.field blacklist mDragViewBitmapTranslateY:I

.field blacklist mDragViewRect:Landroid/graphics/Rect;

.field blacklist mDropDonePending:Z

.field blacklist mFirstDragPos:I

.field blacklist mFirstTouchX:I

.field blacklist mFirstTouchY:I

.field blacklist mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

.field blacklist mListItemSelectionAnimating:Z

.field blacklist mRetainFirstDragViewPos:I

.field blacklist mScaleUpAndDownAnimation:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;

.field blacklist mTempEvent:Landroid/view/MotionEvent;

.field blacklist mTempRect:Landroid/graphics/Rect;

.field blacklist mTempTrans:Landroid/view/animation/Transformation;

.field blacklist mUserSetDragItemBitmap:Z

.field private blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetDndModeInternal(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    const v0, 0x10100a7

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->PRESSED_STATE_SET:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->EMPTY_STATE_SET:[I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {v2, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    iget-object v2, v2, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetX:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb3

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x15

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    new-instance v1, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable-IA;)V

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    const/high16 v0, 0x40e00000    # 7.0f

    iget v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollTopDelta:I

    const/high16 v0, -0x3f200000    # -7.0f

    iget v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollBottomDelta:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SemDragAndDropGridAnimator constructor arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setDndModeInternal(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method blacklist activatedByLongPress()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    if-ne p2, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    return v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    return v0

    :cond_2
    return p2
.end method

.method public whitelist getDragGrabHandlePaddingBottom()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragGrabHandlePaddingLeft()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragGrabHandlePaddingRight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragGrabHandlePaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isDraggable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    return v0
.end method

.method abstract blacklist reorderIfNeeded()V
.end method

.method blacklist resetDndPositionValues()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iget v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    return-void
.end method

.method blacklist resetDndState()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchX:I

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchY:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    return-void
.end method

.method public whitelist setDragAndDropEventListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    return-void
.end method

.method public whitelist setDragGrabHandleDrawable(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public whitelist setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public whitelist setDragGrabHandlePadding(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public whitelist setDragGrabHandlePositionGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    return-void
.end method

.method public whitelist setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    return-void
.end method

.method public whitelist setDragViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public whitelist setDraggable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-eq v0, p1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v0, :cond_2

    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must specify dndController to activate Drag&Drop."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public blacklist speakDescriptionForAccessibility()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    :cond_0
    return-void
.end method

.method blacklist speakDragReleaseForAccessibility(I)V
    .locals 0

    return-void
.end method

.method blacklist speakDragStartForAccessibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    return-void
.end method

.method blacklist speakNotDraggableForAccessibility(I)V
    .locals 0

    return-void
.end method
