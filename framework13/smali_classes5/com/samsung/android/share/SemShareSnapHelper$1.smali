.class Lcom/samsung/android/share/SemShareSnapHelper$1;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "SemShareSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareSnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mScrolled:Z

.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareSnapHelper;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareSnapHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareSnapHelper;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/share/SemShareSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareSnapHelper;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareSnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public blacklist onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V

    .line 30
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/share/SemShareSnapHelper$1;->mScrolled:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareSnapHelper$1;->mScrolled:Z

    .line 32
    iget-object v0, p0, Lcom/samsung/android/share/SemShareSnapHelper$1;->this$0:Lcom/samsung/android/share/SemShareSnapHelper;

    invoke-virtual {v0}, Lcom/samsung/android/share/SemShareSnapHelper;->snapToTargetExistingView()V

    .line 34
    :cond_0
    return-void
.end method

.method public blacklist onScrolled(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 37
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/share/SemShareSnapHelper$1;->mScrolled:Z

    .line 40
    :cond_1
    return-void
.end method
