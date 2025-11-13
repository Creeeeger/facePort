.class public final Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    :cond_0
    return-void
.end method
