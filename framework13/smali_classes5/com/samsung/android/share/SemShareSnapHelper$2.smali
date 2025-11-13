.class Lcom/samsung/android/share/SemShareSnapHelper$2;
.super Lcom/android/internal/widget/LinearSmoothScroller;
.source "SemShareSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SemShareSnapHelper;->createSnapScroller(Lcom/android/internal/widget/RecyclerView$LayoutManager;)Lcom/android/internal/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareSnapHelper;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareSnapHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareSnapHelper;
    .param p2, "context"    # Landroid/content/Context;

    .line 208
    iput-object p1, p0, Lcom/samsung/android/share/SemShareSnapHelper$2;->this$0:Lcom/samsung/android/share/SemShareSnapHelper;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected blacklist calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 222
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x41c80000    # 25.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected blacklist onTargetFound(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "action"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper$2;->this$0:Lcom/samsung/android/share/SemShareSnapHelper;

    iget-object v1, v0, Lcom/samsung/android/share/SemShareSnapHelper;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/share/SemShareSnapHelper;->calculateDistanceToFinalSnap(Lcom/android/internal/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    .line 213
    .local v0, "snapDistances":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 214
    .local v1, "dx":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 215
    .local v2, "dy":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/share/SemShareSnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 216
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 217
    iget-object v4, p0, Lcom/samsung/android/share/SemShareSnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 219
    :cond_0
    return-void
.end method
