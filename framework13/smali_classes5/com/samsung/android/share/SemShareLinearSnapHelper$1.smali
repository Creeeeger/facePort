.class Lcom/samsung/android/share/SemShareLinearSnapHelper$1;
.super Lcom/android/internal/widget/LinearSmoothScroller;
.source "SemShareLinearSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SemShareLinearSnapHelper;->createSnapScroller(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareLinearSnapHelper;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareLinearSnapHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareLinearSnapHelper;
    .param p2, "context"    # Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareLinearSnapHelper;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected blacklist calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareLinearSnapHelper;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->-$$Nest$fgetmMillisecondsPerInch(Lcom/samsung/android/share/SemShareLinearSnapHelper;)F

    move-result v0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected blacklist onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "action"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareLinearSnapHelper;

    iget-object v0, v0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareLinearSnapHelper;

    iget-object v1, v0, Lcom/samsung/android/share/SemShareLinearSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->calculateDistanceToFinalSnap(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    .line 103
    .local v0, "snapDistances":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 104
    .local v1, "dx":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 105
    .local v2, "dy":I
    int-to-float v3, v1

    iget-object v4, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareLinearSnapHelper;

    invoke-static {v4}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->-$$Nest$fgetmDeccelateTimeRatio(Lcom/samsung/android/share/SemShareLinearSnapHelper;)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareLinearSnapHelper;

    invoke-static {v5}, Lcom/samsung/android/share/SemShareLinearSnapHelper;->-$$Nest$fgetmDeccelateTimeRatio(Lcom/samsung/android/share/SemShareLinearSnapHelper;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 106
    .local v3, "time":I
    if-lez v3, :cond_1

    .line 107
    iget-object v4, p0, Lcom/samsung/android/share/SemShareLinearSnapHelper$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 109
    :cond_1
    return-void
.end method
