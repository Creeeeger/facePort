.class public Landroid/view/NotificationHeaderView$HeaderTouchListener;
.super Ljava/lang/Object;
.source "NotificationHeaderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/NotificationHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderTouchListener"
.end annotation


# instance fields
.field private blacklist mAltExpandTargetRect:Landroid/graphics/Rect;

.field private greylist-max-o mDownX:F

.field private greylist-max-o mDownY:F

.field private greylist-max-o mExpandButtonRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTouchRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mTrackGesture:Z

.field final synthetic blacklist this$0:Landroid/view/NotificationHeaderView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$misInside(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/view/NotificationHeaderView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/NotificationHeaderView;

    .line 402
    iput-object p1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    .line 403
    return-void
.end method

.method private greylist-max-o addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 428
    invoke-direct {p0, p1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 429
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    return-object v0
.end method

.method private greylist-max-o addWidthRect()V
    .locals 3

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 420
    .local v0, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 421
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTouchableHeight(Landroid/view/NotificationHeaderView;)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 422
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 423
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 424
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method private greylist-max-o getRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 434
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    .line 435
    .local v0, "size":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 436
    .local v1, "width":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 437
    .local v2, "height":F
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 438
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    .line 439
    iget-object v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    div-float v6, v1, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    div-float v6, v1, v5

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 444
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v5

    div-float v5, v2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 445
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 446
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 447
    return-object v3
.end method

.method private greylist-max-o isInside(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 488
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmAcceptAllTouches(Landroid/view/NotificationHeaderView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 489
    return v1

    .line 491
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmExpandOnlyOnButton(Landroid/view/NotificationHeaderView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mExpandButtonRect:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mAltExpandTargetRect:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    .line 493
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 492
    :goto_1
    return v1

    .line 495
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 496
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 497
    .local v2, "r":Landroid/graphics/Rect;
    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 498
    return v1

    .line 495
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 501
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView;->getX()F

    move-result v0

    sub-float v0, p1, v0

    .line 502
    .local v0, "topLineX":F
    iget-object v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v1}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/NotificationTopLineView;->getY()F

    move-result v1

    sub-float v1, p2, v1

    .line 503
    .local v1, "topLineY":F
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/NotificationTopLineView;->isInTouchRect(FF)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public greylist-max-o bindTouchRects()V
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 408
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmIcon(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmIcon(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmExpandButton(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/NotificationExpandButton;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mExpandButtonRect:Landroid/graphics/Rect;

    .line 413
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v0}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmAltExpandTarget(Landroid/view/NotificationHeaderView;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addRectAroundView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mAltExpandTargetRect:Landroid/graphics/Rect;

    .line 414
    invoke-direct {p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->addWidthRect()V

    .line 415
    iget-object v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    .line 416
    return-void
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 452
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 453
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 454
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 465
    :pswitch_0
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_2

    .line 466
    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    sub-float/2addr v2, v1

    .line 467
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 468
    :cond_0
    iput-boolean v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    goto :goto_0

    .line 473
    :pswitch_1
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    if-eqz v2, :cond_2

    .line 474
    iget-object v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v2}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/NotificationTopLineView;->getX()F

    move-result v2

    .line 475
    .local v2, "topLineX":F
    iget-object v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/NotificationTopLineView;->getY()F

    move-result v3

    .line 476
    .local v3, "topLineY":F
    iget-object v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmTopLineView(Landroid/view/NotificationHeaderView;)Landroid/view/NotificationTopLineView;

    move-result-object v4

    sub-float v5, v0, v2

    sub-float v6, v1, v3

    iget v7, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    sub-float/2addr v7, v2

    iget v8, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    sub-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/NotificationTopLineView;->onTouchUp(FFFF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    goto :goto_0

    .line 480
    :cond_1
    iget-object v4, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->this$0:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Landroid/view/NotificationHeaderView;->-$$Nest$fgetmExpandButton(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/NotificationExpandButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/NotificationExpandButton;->performClick()Z

    goto :goto_0

    .line 456
    .end local v2    # "topLineX":F
    .end local v3    # "topLineY":F
    :pswitch_2
    iput-boolean v3, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    .line 457
    invoke-direct {p0, v0, v1}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->isInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    iput v0, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownX:F

    .line 459
    iput v1, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mDownY:F

    .line 460
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    .line 461
    return v2

    .line 484
    :cond_2
    :goto_0
    iget-boolean v2, p0, Landroid/view/NotificationHeaderView$HeaderTouchListener;->mTrackGesture:Z

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
