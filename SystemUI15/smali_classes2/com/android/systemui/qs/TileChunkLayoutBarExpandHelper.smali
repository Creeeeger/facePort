.class public final Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public expandAnimator:Landroid/animation/ValueAnimator;

.field public initialBarHeight:I

.field public final tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

.field public tracking:Z

.field public velocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/bar/TileChunkLayoutBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    return-void
.end method


# virtual methods
.method public final forceToggleBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget-boolean v1, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setHeight(I)V

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setHeight(I)V

    :goto_0
    return-void
.end method

.method public final setHeight(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->expandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tracking:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget v1, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mHeight:I

    int-to-float v1, v1

    int-to-float v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mHeight:I

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v2, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    iget v0, v0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0x12c

    int-to-float v2, v2

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    float-to-int p1, p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e2e147b    # 0.17f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3edc28f6    # 0.43f

    invoke-direct {p1, v3, v3, v0, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper$setHeight$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper$setHeight$1$1;-><init>(Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->expandAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setTracking(FZ)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tracking:Z

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->velocity:F

    iget-object v2, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tileChunkLayoutBar:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    if-eqz p2, :cond_1

    iget p1, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mHeight:I

    iput p1, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->initialBarHeight:I

    goto :goto_3

    :cond_1
    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->velocity:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    :goto_0
    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    iget p1, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mHeight:I

    iget v0, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v4, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_0

    :cond_4
    iget-boolean p1, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    if-nez p1, :cond_2

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_5

    iget v0, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerExpandedHeight:I

    goto :goto_2

    :cond_5
    iget v0, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mContainerCollapsedHeight:I

    :goto_2
    iget-boolean v2, v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mIsExpanded:Z

    if-eq v2, p1, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->setHeight(I)V

    :goto_3
    iput-boolean p2, p0, Lcom/android/systemui/qs/TileChunkLayoutBarExpandHelper;->tracking:Z

    return v1
.end method
