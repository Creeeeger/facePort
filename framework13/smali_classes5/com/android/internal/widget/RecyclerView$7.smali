.class Lcom/android/internal/widget/RecyclerView$7;
.super Lcom/android/internal/widget/LinearSmoothScroller;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->semSnapScrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;

.field final synthetic blacklist val$scrollDuration:F


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;Landroid/content/Context;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "context"    # Landroid/content/Context;

    .line 12410
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$7;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput p3, p0, Lcom/android/internal/widget/RecyclerView$7;->val$scrollDuration:F

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected blacklist calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 12422
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$7;->val$scrollDuration:F

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$7;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected blacklist getHorizontalSnapPreference()I
    .locals 1

    .line 12417
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist getVerticalSnapPreference()I
    .locals 1

    .line 12413
    const/4 v0, 0x1

    return v0
.end method
