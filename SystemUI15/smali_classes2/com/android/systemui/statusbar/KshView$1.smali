.class public final Lcom/android/systemui/statusbar/KshView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KshView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    if-eqz p2, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    if-nez v1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    :cond_0
    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/systemui/statusbar/KshView;->mForceScroll:Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KshView;->mNeedForceScroll:Z

    :cond_1
    if-ne p2, p1, :cond_2

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mTabKeyIn:Z

    if-eqz v2, :cond_3

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    :cond_3
    if-nez p2, :cond_8

    iget-boolean p2, v0, Lcom/android/systemui/statusbar/KshView;->mHardKeyScrolled:Z

    if-eqz p2, :cond_8

    iget-object p2, v0, Lcom/android/systemui/statusbar/KshView;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mForceScroll:Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    xor-int/2addr v2, p1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    sub-int/2addr v5, p1

    invoke-virtual {v4, v5, v3, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_1
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    if-eqz p1, :cond_7

    move v2, v3

    :cond_7
    iput v2, v0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    iget p1, v0, Lcom/android/systemui/statusbar/KshView;->mLastPosition:I

    if-eq v2, p1, :cond_8

    new-instance p1, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    if-lez p2, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    :cond_1
    return-void
.end method
