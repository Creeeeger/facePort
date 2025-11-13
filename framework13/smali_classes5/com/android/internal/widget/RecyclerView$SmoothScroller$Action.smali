.class public Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final blacklist UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private blacklist mChanged:Z

.field private blacklist mConsecutiveUpdates:I

.field private blacklist mDuration:I

.field private blacklist mDx:I

.field private blacklist mDy:I

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mJumpToPosition:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 11006
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11007
    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 11015
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    .line 11016
    return-void
.end method

.method public constructor blacklist <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 11025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10991
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 10995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 10999
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11026
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11027
    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11028
    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11029
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11030
    return-void
.end method

.method private blacklist validate()V
    .locals 2

    .line 11089
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 11090
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11092
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    .line 11095
    return-void

    .line 11093
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getDuration()I
    .locals 1

    .line 11116
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public blacklist getDx()I
    .locals 1

    .line 11098
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public blacklist getDy()I
    .locals 1

    .line 11107
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public blacklist getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 11125
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method blacklist hasJumpTarget()Z
    .locals 1

    .line 11052
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist jumpTo(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .line 11048
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11049
    return-void
.end method

.method blacklist runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V
    .locals 6
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 11056
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 11057
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11058
    .local v0, "position":I
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11059
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11060
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11061
    return-void

    .line 11063
    .end local v0    # "position":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_4

    .line 11064
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11065
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 11066
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 11067
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0

    .line 11069
    :cond_1
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    .line 11072
    :cond_2
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 11075
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11076
    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    .line 11079
    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11082
    :cond_3
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_1

    .line 11084
    :cond_4
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11086
    :goto_1
    return-void
.end method

.method public blacklist setDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .line 11120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11121
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11122
    return-void
.end method

.method public blacklist setDx(I)V
    .locals 1
    .param p1, "dx"    # I

    .line 11102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11103
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11104
    return-void
.end method

.method public blacklist setDy(I)V
    .locals 1
    .param p1, "dy"    # I

    .line 11111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11112
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11113
    return-void
.end method

.method public blacklist setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 11135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11136
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11137
    return-void
.end method

.method public blacklist update(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 11148
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11149
    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11150
    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11151
    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 11152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11153
    return-void
.end method
