.class public Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;
.super Ljava/lang/Object;
.source "SemHorizontalHeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final blacklist EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdapter:Landroid/widget/ListAdapter;

.field blacklist mAreAllFixedViewsSelectable:Z

.field blacklist mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsFilterable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .line 68
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 70
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    .line 72
    if-nez p1, :cond_0

    .line 73
    sget-object v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 78
    :goto_0
    if-nez p2, :cond_1

    .line 79
    sget-object v0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 81
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 85
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 86
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 87
    return-void
.end method

.method private blacklist areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemHorizontalListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .line 123
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/SemHorizontalListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    .line 125
    .local v1, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iget-boolean v2, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    .end local v1    # "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 201
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 203
    :cond_1
    return v1
.end method

.method public whitelist getCount()I
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFootersCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getHeadersCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 244
    .local v0, "numHeaders":I
    if-ge p1, v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v1, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v1

    .line 249
    :cond_0
    sub-int v1, p1, v0

    .line 250
    .local v1, "adjPosition":I
    const/4 v2, 0x0

    .line 251
    .local v2, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 252
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 253
    if-ge v1, v2, :cond_1

    .line 254
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 259
    :cond_1
    sub-int v3, v1, v2

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 260
    const/4 v3, 0x0

    return-object v3

    .line 264
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->data:Ljava/lang/Object;

    return-object v3
.end method

.method public whitelist getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 273
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 274
    sub-int v2, p1, v0

    .line 275
    .local v2, "adjPosition":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 276
    .local v1, "adapterCount":I
    if-ge v2, v1, :cond_0

    .line 277
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    return-wide v3

    .line 280
    .end local v1    # "adapterCount":I
    .end local v2    # "adjPosition":I
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public whitelist getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 330
    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 331
    sub-int v2, p1, v0

    .line 332
    .local v2, "adjPosition":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 333
    .local v1, "adapterCount":I
    if-ge v2, v1, :cond_0

    .line 334
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    return v3

    .line 338
    .end local v1    # "adapterCount":I
    .end local v2    # "adjPosition":I
    :cond_0
    const/4 v1, -0x2

    return v1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 301
    .local v0, "numHeaders":I
    if-ge p1, v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v1, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v1

    .line 306
    :cond_0
    sub-int v1, p1, v0

    .line 307
    .local v1, "adjPosition":I
    const/4 v2, 0x0

    .line 308
    .local v2, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 309
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 310
    if-ge v1, v2, :cond_1

    .line 311
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    .line 316
    :cond_1
    sub-int v3, v1, v2

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 317
    const/4 v3, 0x0

    return-object v3

    .line 321
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-object v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    return-object v3
.end method

.method public whitelist getViewTypeCount()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0

    .line 349
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public whitelist hasStableIds()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->getHeadersCount()I

    move-result v0

    .line 214
    .local v0, "numHeaders":I
    if-ge p1, v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-boolean v1, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    return v1

    .line 219
    :cond_0
    sub-int v1, p1, v0

    .line 220
    .local v1, "adjPosition":I
    const/4 v2, 0x0

    .line 221
    .local v2, "adapterCount":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 222
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 223
    if-ge v1, v2, :cond_1

    .line 224
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    return v3

    .line 229
    :cond_1
    sub-int v3, v1, v2

    iget-object v4, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 230
    const/4 v3, 0x0

    return v3

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    iget-boolean v3, v3, Landroid/widget/SemHorizontalListView$FixedViewInfo;->isSelectable:Z

    return v3
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 360
    :cond_0
    return-void
.end method

.method public blacklist removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    .line 167
    .local v1, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 168
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 171
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 172
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    nop

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 174
    return v4

    .line 165
    .end local v1    # "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method public blacklist removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;

    .line 143
    .local v1, "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/SemHorizontalListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 144
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 147
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 148
    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    nop

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 150
    return v4

    .line 141
    .end local v1    # "info":Landroid/widget/SemHorizontalListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/widget/SemHorizontalHeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 370
    :cond_0
    return-void
.end method
