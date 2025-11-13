.class public final synthetic Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/statusbar/KshView$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/statusbar/KshView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    goto/16 :goto_4

    :cond_1
    if-nez v4, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KshView;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2, v3, v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_5
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v5, v2, v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/KshView;->mMaxColumn:I

    if-ne v2, v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    goto :goto_3

    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KshView;->mRightScrolled:Z

    if-eqz v2, :cond_9

    move v3, v1

    :cond_9
    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    :goto_3
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    if-gez v0, :cond_a

    iput v5, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    iget-object v2, v2, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshViewAdapter:Lcom/android/systemui/statusbar/KshViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KshViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView;->mKshGroupRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/KshView;->mPosition:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KshView;->moveSelector(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
