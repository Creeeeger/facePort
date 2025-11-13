.class public Lcom/samsung/android/share/SemShareLinearSnapHelper;
.super Lcom/samsung/android/share/SemShareSnapHelper;
.source "SemShareLinearSnapHelper.java"


# static fields
.field private static final blacklist INVALID_DISTANCE:F = 1.0f


# instance fields
.field private blacklist mDeccelateTimeRatio:F

.field private final blacklist mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private blacklist mHorizontalHelper:Lcom/android/internal/widget/OrientationHelper;

.field private blacklist mMillisecondsPerInch:F

.field private blacklist mVelocityRatio:F

.field private blacklist mVerticalHelper:Lcom/android/internal/widget/OrientationHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeccelateTimeRatio(Lcom/samsung/android/share/SemShareLinearSnapHelper;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDeccelateTimeRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMillisecondsPerInch(Lcom/samsung/android/share/SemShareLinearSnapHelper;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mMillisecondsPerInch:F

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareSnapHelper;-><init>()V

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 41
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVelocityRatio:F

    .line 42
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDeccelateTimeRatio:F

    .line 43
    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mMillisecondsPerInch:F

    .line 49
    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->setSnapValue(FFF)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(F)V
    .locals 2
    .param p1, "velocityRatio"    # F

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareSnapHelper;-><init>()V

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 41
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVelocityRatio:F

    .line 42
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDeccelateTimeRatio:F

    .line 43
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mMillisecondsPerInch:F

    .line 58
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->setSnapValue(FFF)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 2
    .param p1, "velocityRatio"    # F
    .param p2, "millisecondsPerInch"    # F

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareSnapHelper;-><init>()V

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 41
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVelocityRatio:F

    .line 42
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDeccelateTimeRatio:F

    .line 43
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mMillisecondsPerInch:F

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->setSnapValue(FFF)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(FFF)V
    .locals 1
    .param p1, "velocityRatio"    # F
    .param p2, "millisecondsPerInch"    # F
    .param p3, "deccelateTimeRatio"    # F

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/share/SemShareSnapHelper;-><init>()V

    .line 40
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 41
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVelocityRatio:F

    .line 42
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDeccelateTimeRatio:F

    .line 43
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mMillisecondsPerInch:F

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->setSnapValue(FFF)V

    .line 80
    return-void
.end method

.method private blacklist computeDistancePerChild(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;)F
    .locals 10
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lcom/android/internal/widget/OrientationHelper;

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "minPosView":Landroid/view/View;
    const/4 v1, 0x0

    .line 324
    .local v1, "maxPosView":Landroid/view/View;
    const v2, 0x7fffffff

    .line 325
    .local v2, "minPos":I
    const/high16 v3, -0x80000000

    .line 326
    .local v3, "maxPos":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    .line 327
    .local v4, "childCount":I
    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_0

    .line 328
    return v5

    .line 330
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_5

    .line 331
    invoke-virtual {p1, v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 332
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_1

    .line 333
    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    .line 336
    .local v8, "pos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 337
    goto :goto_1

    .line 339
    :cond_2
    if-ge v8, v2, :cond_3

    .line 340
    move v2, v8

    .line 341
    move-object v0, v7

    .line 343
    :cond_3
    if-le v8, v3, :cond_4

    .line 344
    move v3, v8

    .line 345
    move-object v1, v7

    .line 330
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "pos":I
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 348
    .end local v6    # "i":I
    :cond_5
    if-eqz v0, :cond_8

    if-nez v1, :cond_6

    goto :goto_2

    .line 351
    :cond_6
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 352
    invoke-virtual {p2, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 351
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 353
    .local v6, "start":I
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    .line 354
    invoke-virtual {p2, v1}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    .line 353
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 355
    .local v7, "end":I
    sub-int v8, v7, v6

    .line 356
    .local v8, "distance":I
    if-nez v8, :cond_7

    .line 357
    return v5

    .line 359
    :cond_7
    int-to-float v9, v8

    mul-float/2addr v9, v5

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    div-float/2addr v9, v5

    return v9

    .line 349
    .end local v6    # "start":I
    .end local v7    # "end":I
    .end local v8    # "distance":I
    :cond_8
    :goto_2
    return v5
.end method

.method private blacklist distanceToCenter(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;Lcom/android/internal/widget/OrientationHelper;)I
    .locals 3
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "helper"    # Lcom/android/internal/widget/OrientationHelper;

    .line 221
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 222
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 224
    .local v0, "childCenter":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .local v1, "containerCenter":I
    goto :goto_0

    .line 227
    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 229
    .restart local v1    # "containerCenter":I
    :goto_0
    sub-int v2, v0, v1

    return v2
.end method

.method private blacklist estimateNextPositionDiffForFling(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;II[I)I
    .locals 6
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lcom/android/internal/widget/OrientationHelper;
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "snapDistances"    # [I

    .line 246
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->semCalculateScrollDistanceForLinear(II)[I

    move-result-object v0

    .line 247
    .local v0, "distances":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    aget v3, p5, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 248
    const/4 v2, 0x1

    aget v3, v0, v2

    aget v4, p5, v2

    sub-int/2addr v3, v4

    aput v3, v0, v2

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->computeDistancePerChild(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;)F

    move-result v3

    .line 250
    .local v3, "distancePerChild":F
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 251
    return v1

    .line 254
    :cond_0
    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_1

    aget v1, v0, v1

    goto :goto_0

    :cond_1
    aget v1, v0, v2

    .line 255
    .local v1, "distance":I
    :goto_0
    int-to-float v4, v1

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 256
    .local v4, "deltaJump":I
    if-nez v4, :cond_3

    .line 257
    if-gez v1, :cond_2

    const/4 v2, -0x1

    :cond_2
    move v4, v2

    .line 259
    :cond_3
    return v4
.end method

.method private blacklist findCenterView(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;)Landroid/view/View;
    .locals 8
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Lcom/android/internal/widget/OrientationHelper;

    .line 275
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 276
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 277
    const/4 v1, 0x0

    return-object v1

    .line 279
    :cond_0
    const/4 v1, 0x0

    .line 281
    .local v1, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {p2}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .local v2, "center":I
    goto :goto_0

    .line 284
    .end local v2    # "center":I
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 286
    .restart local v2    # "center":I
    :goto_0
    const v3, 0x7fffffff

    .line 287
    .local v3, "absClosest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 288
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 289
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p2, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 290
    invoke-virtual {p2, v5}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 291
    .local v6, "childCenter":I
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 294
    .local v7, "absDistance":I
    if-ge v7, v3, :cond_2

    .line 295
    move v3, v7

    .line 296
    move-object v1, v5

    .line 287
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 299
    .end local v4    # "i":I
    :cond_3
    return-object v1
.end method

.method private blacklist getHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 373
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mHorizontalHelper:Lcom/android/internal/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 374
    invoke-static {p1}, Lcom/android/internal/widget/OrientationHelper;->createHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mHorizontalHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mHorizontalHelper:Lcom/android/internal/widget/OrientationHelper;

    return-object v0
.end method

.method private blacklist getVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;
    .locals 1
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 364
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVerticalHelper:Lcom/android/internal/widget/OrientationHelper;

    if-nez v0, :cond_0

    .line 365
    invoke-static {p1}, Lcom/android/internal/widget/OrientationHelper;->createVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVerticalHelper:Lcom/android/internal/widget/OrientationHelper;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVerticalHelper:Lcom/android/internal/widget/OrientationHelper;

    return-object v0
.end method

.method private blacklist setSnapValue(FFF)V
    .locals 0
    .param p1, "velocityRatio"    # F
    .param p2, "millisecondsPerInch"    # F
    .param p3, "deccelateTimeRatio"    # F

    .line 83
    iput p2, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mMillisecondsPerInch:F

    .line 84
    iput p1, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVelocityRatio:F

    .line 85
    iput p3, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mDeccelateTimeRatio:F

    .line 86
    return-void
.end method


# virtual methods
.method public blacklist calculateDistanceToFinalSnap(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 4
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p2, "targetView"    # Landroid/view/View;

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 123
    .local v0, "out":[I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 124
    nop

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->getHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v1

    .line 124
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->distanceToCenter(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;Lcom/android/internal/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 127
    :cond_0
    aput v2, v0, v2

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 130
    nop

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->getVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v1

    .line 130
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->distanceToCenter(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;Lcom/android/internal/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    goto :goto_1

    .line 133
    :cond_1
    aput v2, v0, v3

    .line 135
    :goto_1
    return-object v0
.end method

.method protected blacklist createSnapScroller(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/LinearSmoothScroller;
    .locals 2
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 91
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;

    iget-object v1, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;-><init>(Lcom/samsung/android/share/SemShareLinearSnapHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist findSnapView(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 1
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;

    .line 211
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->getVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->findCenterView(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->getHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->findCenterView(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist findTargetSnapPosition(Lcom/android/internal/widget/RecyclerView$LayoutManager;II)I
    .locals 19
    .param p1, "layoutManager"    # Lcom/android/internal/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 141
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    int-to-float v1, v0

    iget v2, v6, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mVelocityRatio:F

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 142
    .end local p2    # "velocityX":I
    .local v8, "velocityX":I
    move/from16 v0, p3

    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v9, v1

    .line 144
    .end local p3    # "velocityY":I
    .local v9, "velocityY":I
    instance-of v0, v7, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v10, -0x1

    if-nez v0, :cond_0

    .line 145
    return v10

    .line 147
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v11

    .line 148
    .local v11, "itemCount":I
    if-nez v11, :cond_1

    .line 149
    return v10

    .line 151
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->findSnapView(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v12

    .line 152
    .local v12, "currentView":Landroid/view/View;
    if-nez v12, :cond_2

    .line 153
    return v10

    .line 156
    :cond_2
    invoke-virtual {v7, v12}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v13

    .line 157
    .local v13, "currentPosition":I
    if-ne v13, v10, :cond_3

    .line 158
    return v10

    .line 161
    :cond_3
    move-object v14, v7

    check-cast v14, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 168
    .local v14, "vectorProvider":Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v0, v11, -0x1

    invoke-interface {v14, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v15

    .line 169
    .local v15, "vectorForEnd":Landroid/graphics/PointF;
    if-nez v15, :cond_4

    .line 171
    return v10

    .line 174
    :cond_4
    invoke-virtual {v6, v7, v12}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->calculateDistanceToFinalSnap(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v16

    .line 175
    .local v16, "snapDistances":[I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/16 v17, 0x0

    if-eqz v0, :cond_6

    .line 176
    nop

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->getHorizontalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v2

    const/4 v4, 0x0

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v8

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->estimateNextPositionDiffForFling(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;II[I)I

    move-result v0

    .line 178
    .local v0, "hDeltaJump":I
    iget v1, v15, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v17

    if-gez v1, :cond_5

    .line 179
    neg-int v0, v0

    move/from16 v18, v0

    goto :goto_0

    .line 178
    :cond_5
    move/from16 v18, v0

    goto :goto_0

    .line 182
    .end local v0    # "hDeltaJump":I
    :cond_6
    const/4 v0, 0x0

    move/from16 v18, v0

    .line 185
    .local v18, "hDeltaJump":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    nop

    .line 187
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->getVerticalHelper(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/OrientationHelper;

    move-result-object v2

    const/4 v3, 0x0

    .line 186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v9

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->estimateNextPositionDiffForFling(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/OrientationHelper;II[I)I

    move-result v0

    .line 188
    .local v0, "vDeltaJump":I
    iget v1, v15, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v17

    if-gez v1, :cond_8

    .line 189
    neg-int v0, v0

    goto :goto_1

    .line 192
    .end local v0    # "vDeltaJump":I
    :cond_7
    const/4 v0, 0x0

    .line 194
    .restart local v0    # "vDeltaJump":I
    :cond_8
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v0

    goto :goto_2

    :cond_9
    move/from16 v1, v18

    .line 195
    .local v1, "deltaJump":I
    :goto_2
    if-nez v1, :cond_a

    .line 196
    return v10

    .line 198
    :cond_a
    add-int v2, v13, v1

    .line 199
    .local v2, "targetPos":I
    if-gez v2, :cond_b

    .line 200
    const/4 v2, 0x0

    .line 202
    :cond_b
    if-lt v2, v11, :cond_c

    .line 203
    add-int/lit8 v2, v11, -0x1

    .line 206
    :cond_c
    return v2
.end method
