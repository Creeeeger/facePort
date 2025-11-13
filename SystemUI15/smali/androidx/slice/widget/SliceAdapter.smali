.class public final Landroidx/slice/widget/SliceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAllowTwoLines:Z

.field public final mContext:Landroid/content/Context;

.field public final mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

.field public mInsetBottom:I

.field public mInsetEnd:I

.field public mInsetStart:I

.field public mInsetTop:I

.field public mLastUpdated:J

.field public mLoadingActions:Ljava/util/Set;

.field public mParent:Landroidx/slice/widget/SliceView;

.field public mPolicy:Landroidx/slice/widget/SliceViewPolicy;

.field public mShowLastUpdated:Z

.field public mSliceActions:Ljava/util/List;

.field public mSliceObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

.field public mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field public mSlices:Ljava/util/List;

.field public mTemplateView:Landroidx/slice/widget/TemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroidx/slice/widget/SliceAdapter$IdGenerator;

    invoke-direct {v0}, Landroidx/slice/widget/SliceAdapter$IdGenerator;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget-wide p0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mId:J

    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget p0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mType:I

    return p0
.end method

.method public final notifyHeaderChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    check-cast p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter$SliceWrapper;->mItem:Landroidx/slice/widget/SliceContent;

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_9

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowStyle()Landroidx/slice/widget/RowStyle;

    move-result-object v0

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iput-object v2, v1, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceAdapter;

    instance-of v3, p0, Landroidx/slice/widget/RowContent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move-object v3, p0

    check-cast v3, Landroidx/slice/widget/RowContent;

    iget-boolean v3, v3, Landroidx/slice/widget/RowContent;->mIsHeader:Z

    move v6, v3

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    iget-object v2, v2, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/SliceAdapter;->mPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, v0, Landroidx/slice/widget/RowStyle;->mTintColor:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, v0, Landroidx/slice/widget/RowStyle;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v2, v2, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1, v2, v0}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v6, :cond_4

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-boolean v1, v1, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v6, :cond_5

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-wide v1, v1, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    goto :goto_3

    :cond_5
    const-wide/16 v1, -0x1

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    if-nez p2, :cond_6

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v0, v0, Landroidx/slice/widget/SliceAdapter;->mInsetTop:I

    goto :goto_4

    :cond_6
    move v0, v5

    :goto_4
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v1, v1, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p2, v1, :cond_7

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v5, v1, Landroidx/slice/widget/SliceAdapter;->mInsetBottom:I

    :cond_7
    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v3, v2, Landroidx/slice/widget/SliceAdapter;->mInsetStart:I

    iget v2, v2, Landroidx/slice/widget/SliceAdapter;->mInsetEnd:I

    invoke-virtual {v1, v3, v0, v2, v5}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-boolean v1, v1, Landroidx/slice/widget/SliceAdapter;->mAllowTwoLines:Z

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v6, :cond_8

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v1, v1, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v1, v1, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v5, v1, Landroidx/slice/widget/SliceAdapter;->mSliceObserver:Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;

    move-object v1, p0

    move v2, v6

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/slice/widget/SliceChildView;->setSliceItem(Landroidx/slice/widget/SliceContent;ZIILcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda5;)V

    iget-object v0, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-static {p0, v6, v0}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    move-result p0

    filled-new-array {p0, p2}, [I

    move-result-object p0

    iget-object p1, p1, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    new-instance p1, Landroidx/slice/widget/RowView;

    iget-object p2, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/slice/widget/RowView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d000d

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d000c

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0008

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroidx/slice/widget/GridRowView;

    if-eqz p2, :cond_3

    check-cast p1, Landroidx/slice/widget/GridRowView;

    goto :goto_0

    :cond_3
    new-instance p1, Landroidx/slice/widget/GridRowView;

    iget-object p2, p0, Landroidx/slice/widget/SliceAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;

    invoke-direct {p2, p0, p1}, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;-><init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final onSliceActionLoading(Landroidx/slice/SliceItem;I)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public final setSliceItems(ILjava/util/List;)V
    .locals 4

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter;->mIdGen:Landroidx/slice/widget/SliceAdapter$IdGenerator;

    iget-object v1, v0, Landroidx/slice/widget/SliceAdapter$IdGenerator;->mUsedIds:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->clear()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceContent;

    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter;->mSlices:Ljava/util/List;

    new-instance v3, Landroidx/slice/widget/SliceAdapter$SliceWrapper;

    invoke-direct {v3, v1, v0, p1}, Landroidx/slice/widget/SliceAdapter$SliceWrapper;-><init>(Landroidx/slice/widget/SliceContent;Landroidx/slice/widget/SliceAdapter$IdGenerator;I)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
