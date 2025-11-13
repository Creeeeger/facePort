.class public final Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAccessibilityAction:I

.field public final mAccessibilityDelegate:Lcom/android/systemui/qs/customize/TileAdapterDelegate;

.field public mAccessibilityFromIndex:I

.field public final mCallbacks:Lcom/android/systemui/qs/customize/TileAdapter$5;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field public mCurrentSpecs:Ljava/util/List;

.field public final mDecoration:Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

.field public mEditIndex:I

.field public mFocusIndex:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/systemui/qs/QSHost;

.field public final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

.field public final mMinNumTiles:I

.field public final mMinTileViewHeight:I

.field public mNeedsFocus:Z

.field public mNumColumns:I

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final mSizeLookup:Lcom/android/systemui/qs/customize/TileAdapter$4;

.field public mTileDividerIndex:I

.field public final mTiles:Ljava/util/List;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static -$$Nest$mselectPosition(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)V

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 3

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Lcom/android/systemui/qs/customize/TileAdapter$4;

    new-instance v2, Lcom/android/systemui/qs/customize/TileAdapter$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSHost;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    invoke-direct {p2, v0}, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00e2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00e3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapterDelegate;

    invoke-direct {p2}, Lcom/android/systemui/qs/customize/TileAdapterDelegate;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityDelegate:Lcom/android/systemui/qs/customize/TileAdapterDelegate;

    const/4 p2, 0x1

    iput-boolean p2, v1, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070e68

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinTileViewHeight:I

    return-void
.end method

.method public static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string v0, "custom("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p1, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final move(IIZ)V
    .locals 3

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved$1(II)V

    :cond_1
    const/4 p3, -0x1

    iput p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne v2, p3, :cond_2

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p3, v1, :cond_5

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    iget p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v1, 0x0

    if-lt p2, p3, :cond_6

    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    if-lt p1, p3, :cond_7

    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    iget p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    :goto_3
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object p2, p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    iget-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {p3, p2, p1}, Lcom/android/systemui/qs/QSHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    return-void
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    iget-object v0, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinTileViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-nez p0, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto/16 :goto_b

    :cond_3
    if-ne v0, v2, :cond_5

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v3

    if-ge p2, p0, :cond_4

    move v2, v4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    :cond_5
    if-ne v0, v3, :cond_b

    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    if-nez v0, :cond_6

    const v0, 0x7f130559

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    if-le v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge v0, v5, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f13055b

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_8
    :goto_0
    const v0, 0x7f13055c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-nez p0, :cond_9

    move v4, v3

    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    if-eqz v4, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto/16 :goto_b

    :cond_b
    iget-object v1, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    const/4 v2, -0x1

    const v5, 0x7f1300ff

    const/4 v6, 0x2

    if-ne v0, v6, :cond_c

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v5, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz p2, :cond_1b

    iget-object p2, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    iget-object p1, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    goto/16 :goto_b

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    if-lez p2, :cond_d

    iget v7, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p2, v7, :cond_d

    move v7, v3

    goto :goto_2

    :cond_d
    move v7, v4

    :goto_2
    if-eqz v7, :cond_e

    iget v8, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-ne v8, v3, :cond_e

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_e
    if-eqz v7, :cond_f

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-ne v5, v6, :cond_f

    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f130101

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_f
    if-nez v7, :cond_11

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-eq v5, v6, :cond_10

    if-ne v5, v3, :cond_11

    :cond_10
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f130032

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_11
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :goto_3
    iget-object v5, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const-string v6, ""

    iput-object v6, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizeTileView;

    const-string v6, "The holder must have a tileView"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-le p2, v6, :cond_12

    if-nez v0, :cond_12

    move v6, v3

    goto :goto_4

    :cond_12
    move v6, v4

    :goto_4
    iput-boolean v6, v5, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    iget-object v6, v5, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    if-eqz v6, :cond_13

    move-object v9, v6

    goto :goto_5

    :cond_13
    move-object v9, v8

    :goto_5
    if-eqz v6, :cond_14

    goto :goto_6

    :cond_14
    move-object v6, v8

    :goto_6
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iget-boolean v10, v5, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    const/16 v11, 0x8

    if-eqz v10, :cond_15

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    move v6, v4

    goto :goto_7

    :cond_15
    move v6, v11

    :goto_7
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p2, v6, :cond_17

    if-eqz v0, :cond_16

    goto :goto_8

    :cond_16
    move v0, v4

    goto :goto_9

    :cond_17
    :goto_8
    move v0, v3

    :goto_9
    iput-boolean v0, v5, Lcom/android/systemui/qs/customize/CustomizeTileView;->showSideView:Z

    if-nez v0, :cond_19

    iget-object v0, v5, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    goto :goto_a

    :cond_18
    move-object v0, v8

    :goto_a
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_19
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAccessibilityTraversalBefore(I)V

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-eqz v0, :cond_1a

    invoke-virtual {v1, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    if-eqz v7, :cond_1a

    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    if-ne p2, v0, :cond_1b

    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz p2, :cond_1b

    iget-object p2, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->requestLayout()V

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    iget-object p1, p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->mTileView:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    :cond_1b
    :goto_b
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const p1, 0x7f0d02e7

    invoke-virtual {v1, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1402a8

    sget-object v2, Lcom/android/internal/R$styleable;->Toolbar:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_0

    sget-object v1, Landroid/R$styleable;->View:[I

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const v0, 0x7f070e4d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07011a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    const v0, 0x7f070d20

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    const v1, 0x7f070d1f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    const v0, 0x7f070e6b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    new-instance p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v0, 0x7f0d02ef

    invoke-virtual {v1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    new-instance p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    const v0, 0x7f0d02e6

    invoke-virtual {v1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const p1, 0x7f0d02f1

    invoke-virtual {v1, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget-object p2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-direct {p2, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    :goto_1
    return-object p2
.end method

.method public final onDetachedFromRecyclerView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 p0, 0x1

    return p0
.end method
