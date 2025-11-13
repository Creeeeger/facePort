.class public final Landroidx/slice/SliceMetadata;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mExpiry:J

.field public final mLastUpdated:J

.field public final mListContent:Landroidx/slice/widget/ListContent;

.field public final mSlice:Landroidx/slice/Slice;

.field public final mSliceActions:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v0, "long"

    const-string/jumbo v1, "ttl"

    invoke-static {p2, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    :cond_0
    const-string v1, "last_updated"

    invoke-static {p2, v0, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    :cond_1
    const-string v0, "bundle"

    const-string v1, "host_extras"

    invoke-static {p2, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    new-instance v0, Landroidx/slice/widget/ListContent;

    invoke-direct {v0, p2}, Landroidx/slice/widget/ListContent;-><init>(Landroidx/slice/Slice;)V

    iput-object v0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object p2, v0, Landroidx/slice/widget/ListContent;->mHeaderContent:Landroidx/slice/widget/RowContent;

    iget-object v1, v0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    invoke-virtual {v0, p1}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    iget-object p1, v0, Landroidx/slice/widget/ListContent;->mSliceActions:Ljava/util/List;

    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    iget-object p1, p2, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const-string v0, "list_item"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p2, Landroidx/slice/widget/RowContent;->mEndItems:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-direct {v1, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public static from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1

    new-instance v0, Landroidx/slice/SliceMetadata;

    invoke-direct {v0, p0, p1}, Landroidx/slice/SliceMetadata;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    return-object v0
.end method


# virtual methods
.method public final getLoadingState()I
    .locals 3

    const-string v0, "partial"

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public final isExpired()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    const-wide/16 v2, -0x1

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
