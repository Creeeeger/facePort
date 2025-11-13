.class Landroid/widget/RemoteCollectionItemsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteCollectionItemsAdapter.java"


# instance fields
.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

.field private blacklist mLayoutIdToViewType:Landroid/util/SparseIntArray;

.field private final blacklist mViewTypeCount:I


# direct methods
.method public static synthetic blacklist $r8$lambda$RLeKIF6o3qgXPPbTinq7PniwEtI(Landroid/widget/RemoteCollectionItemsAdapter;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->lambda$initLayoutIdToViewType$0(I)I

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    return-void
.end method

.method private blacklist initLayoutIdToViewType()V
    .locals 10

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteCollectionItemsAdapter;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    array-length v2, v1

    iget v3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    if-gt v2, v3, :cond_4

    array-length v2, v1

    new-array v2, v2, [Z

    iget v3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    new-array v3, v3, [Z

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    aget v6, v1, v5

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v8, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    aput-boolean v4, v2, v5

    aput-boolean v4, v3, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-boolean v7, v2, v6

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    aget v7, v1, v6

    add-int/lit8 v8, v5, 0x1

    array-length v9, v1

    invoke-static {v8, v9}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v8

    new-instance v9, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v9, v3}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda1;-><init>([Z)V

    invoke-interface {v8, v9}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v8

    new-instance v9, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Landroid/widget/RemoteCollectionItemsAdapter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/OptionalInt;->orElseThrow(Ljava/util/function/Supplier;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    aput-boolean v4, v2, v6

    aput-boolean v4, v3, v8

    move v5, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Collection items uses "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " distinct layouts, which is more than view type count of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private synthetic blacklist lambda$initLayoutIdToViewType$0(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$1([ZI)Z
    .locals 1

    aget-boolean v0, p0, p1

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic blacklist lambda$initLayoutIdToViewType$2()Ljava/lang/IllegalStateException;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RemoteCollectionItems has more distinct layout ids than its view type count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemCount()I

    move-result v0

    return v0
.end method

.method public blacklist getItem(I)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/RemoteCollectionItemsAdapter;->getItem(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getItemId(I)J
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mLayoutIdToViewType:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getItemView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    instance-of v1, p2, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;-><init>(Landroid/content/Context;)V

    :goto_0
    nop

    iget-object v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V

    iget-object v2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesNoReapply(Landroid/widget/RemoteViews$ColorResources;)V

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-object v1
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method blacklist setData(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .locals 2

    iget v0, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mViewTypeCount:I

    invoke-virtual {p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->getViewTypeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mItems:Landroid/widget/RemoteViews$RemoteCollectionItems;

    iput-object p2, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iput-object p3, p0, Landroid/widget/RemoteCollectionItemsAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-direct {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->initLayoutIdToViewType()V

    invoke-virtual {p0}, Landroid/widget/RemoteCollectionItemsAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteCollectionItemsAdapter cannot increase view type count after creation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
