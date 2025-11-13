.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpandedChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "open"

    goto :goto_0

    :cond_0
    const-string v0, "close"

    :goto_0
    const-string v1, "onExpandedChanged : shade is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{OngoingActivityController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsPanelOpen:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mIsPanelOpen:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter$ChipViewHolder;->mExpandedInfo:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->fadeOutCard()V

    :cond_4
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$statusBarStateListener$1;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBarState:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_4

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mStatusBarState:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onDestroy(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;->isKeyguardGoneNow:Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateParentViewVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->killGhost()V

    :cond_4
    return-void
.end method
