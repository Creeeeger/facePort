.class public abstract Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;
.super Ljava/lang/Object;
.source "SemAbsDragAndDropAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;,
        Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;
    }
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

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->PRESSED_STATE_SET:[I

    .line 49
    new-array v0, v2, [I

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->EMPTY_STATE_SET:[I

    .line 120
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->SINE_IN_OUT_70:Landroid/view/animation/PathInterpolator;

    .line 123
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 124
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mActivePointerId:I

    .line 72
    const/16 v1, 0xff

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mListItemSelectionAnimating:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    .line 116
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDropDonePending:Z

    .line 119
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    .line 126
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempRect:Landroid/graphics/Rect;

    .line 127
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mTempTrans:Landroid/view/animation/Transformation;

    .line 129
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    .line 130
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    .line 132
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mCanvasSaveCount:I

    .line 141
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    .line 148
    new-instance v2, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    invoke-direct {v2, p2}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAnimationCore:Lcom/samsung/android/animation/SemDragAndDropAnimationCore;

    .line 149
    iget-object v2, v2, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    .line 150
    iput-boolean v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    .line 152
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    .line 153
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    .line 154
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    .line 155
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    .line 156
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetX:I

    .line 157
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchOffsetY:I

    .line 159
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDensity:F

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    .line 164
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewRect:Landroid/graphics/Rect;

    .line 166
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    .line 167
    const/16 v2, 0xb3

    iput v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    .line 169
    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    const/16 v2, 0x15

    iput v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    .line 171
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 173
    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable-IA;)V

    iput-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    .line 174
    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollTopDelta:I

    .line 175
    const/high16 v1, -0x3f200000    # -7.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollBottomDelta:I

    .line 176
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SemDragAndDropGridAnimator constructor arguments cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setDndModeInternal(Z)V
    .locals 1
    .param p1, "dndMode"    # Z

    .line 247
    iput-boolean p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    .line 249
    if-nez p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mItemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;->removeAll()V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndState()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 254
    return-void
.end method


# virtual methods
.method blacklist activatedByLongPress()Z
    .locals 1

    .line 503
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
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 480
    iget v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 481
    if-ne p2, v0, :cond_0

    .line 482
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 484
    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    .line 485
    add-int/lit8 v1, p1, -0x1

    if-gt v0, v1, :cond_1

    .line 486
    return v0

    .line 488
    :cond_1
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 491
    :cond_2
    return p2
.end method

.method public whitelist getDragGrabHandlePaddingBottom()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 414
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragGrabHandlePaddingLeft()I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0

    .line 375
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragGrabHandlePaddingRight()I
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0

    .line 401
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragGrabHandlePaddingTop()I
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 388
    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public whitelist getDragView()Landroid/view/View;
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    return-object v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isDraggable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    return v0
.end method

.method abstract blacklist reorderIfNeeded()V
.end method

.method blacklist resetDndPositionValues()V
    .locals 1

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstDragPos:I

    .line 443
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragPos:I

    .line 444
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mRetainFirstDragViewPos:I

    .line 445
    return-void
.end method

.method blacklist resetDndState()V
    .locals 0

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndTouchValuesAndBitmap()V

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->resetDndPositionValues()V

    .line 421
    return-void
.end method

.method blacklist resetDndTouchValuesAndBitmap()V
    .locals 3

    .line 424
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchMode:I

    .line 426
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchX:I

    .line 427
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndTouchY:I

    .line 428
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchX:I

    .line 429
    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mFirstTouchY:I

    .line 430
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    .line 431
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragView:Landroid/view/View;

    .line 433
    iget-object v2, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 435
    iput-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 437
    :cond_0
    iput v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndAutoScrollMode:I

    .line 438
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollRunnable:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$AutoScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 439
    return-void
.end method

.method public blacklist setAutoScrollListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;)V
    .locals 0
    .param p1, "autoScrollListener"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    .line 314
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mAutoScrollListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$SemDragAutoScrollListener;

    .line 315
    return-void
.end method

.method public whitelist setDragAndDropEventListener(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;)V
    .locals 0
    .param p1, "dndListener"    # Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    .line 304
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndListener:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropListener;

    .line 305
    return-void
.end method

.method public whitelist setDragGrabHandleDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 324
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    return-void
.end method

.method public whitelist setDragGrabHandleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 335
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    return-void
.end method

.method public whitelist setDragGrabHandlePadding(IIII)V
    .locals 1
    .param p1, "paddingLeft"    # I
    .param p2, "paddingTop"    # I
    .param p3, "paddingRight"    # I
    .param p4, "paddingBottom"    # I

    .line 358
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 360
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 361
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 362
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 364
    :cond_0
    return-void
.end method

.method public whitelist setDragGrabHandlePositionGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 345
    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandlePosGravity:I

    .line 346
    return-void
.end method

.method public whitelist setDragItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "item"    # Landroid/graphics/Bitmap;

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 282
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmap:Landroid/graphics/Bitmap;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mUserSetDragItemBitmap:Z

    .line 284
    return-void
.end method

.method public whitelist setDragViewAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 292
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 293
    iput p1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapAlpha:I

    .line 294
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public whitelist setDraggable(Z)V
    .locals 4
    .param p1, "dndMode"    # Z

    .line 195
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragGrabHandleDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    if-eq v0, p1, :cond_3

    .line 206
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDndMode:Z

    .line 207
    .local v0, "fadeOut":Z
    if-nez v0, :cond_1

    .line 208
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragHandleAlpha:I

    .line 211
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 212
    .local v1, "va":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 213
    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$1;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    new-instance v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$2;-><init>(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    if-eqz v0, :cond_2

    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 240
    :cond_2
    sget-object v2, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 239
    :goto_0
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 244
    .end local v0    # "fadeOut":Z
    .end local v1    # "va":Landroid/animation/ValueAnimator;
    :cond_3
    return-void

    .line 200
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->setDndModeInternal(Z)V

    .line 201
    return-void

    .line 196
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

    .line 508
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAnimatorUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->isDraggable()Z

    .line 517
    :cond_0
    return-void
.end method

.method blacklist speakDragReleaseForAccessibility(I)V
    .locals 0
    .param p1, "itemPosition"    # I

    .line 524
    return-void
.end method

.method blacklist speakDragStartForAccessibility(I)V
    .locals 1
    .param p1, "itemPosition"    # I

    .line 538
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 539
    return-void
.end method

.method blacklist speakNotDraggableForAccessibility(I)V
    .locals 0
    .param p1, "itemPosition"    # I

    .line 530
    return-void
.end method
