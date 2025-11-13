.class public abstract Landroidx/slice/core/SliceQuery;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p0, Landroidx/slice/core/SliceQuery$2;

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/slice/core/SliceQuery$2;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/slice/core/SliceQuery$2;

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/slice/core/SliceQuery$2;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/slice/core/SliceQuery$2;

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Landroidx/slice/core/SliceQuery$2;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v1, p0, v0}, Landroidx/slice/core/SliceQuery;->findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;Ljava/util/List;)V

    return-object v0
.end method

.method public static findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;Ljava/util/List;)V
    .locals 3

    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    invoke-interface {p1, v0}, Landroidx/slice/core/SliceQuery$Filter;->filter(Landroidx/slice/SliceItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    iget-object v0, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;
    .locals 3

    :cond_0
    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItem;

    invoke-interface {p1, v0}, Landroidx/slice/core/SliceQuery$Filter;->filter(Landroidx/slice/SliceItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string/jumbo v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/slice/SliceItem;->mFormat:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    iget-object v0, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p0, Landroidx/slice/core/SliceQuery$5;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Landroidx/slice/core/SliceQuery$5;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/slice/core/SliceQuery$5;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Landroidx/slice/core/SliceQuery$5;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroidx/slice/core/SliceQuery;->findSliceItem(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;)Landroidx/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;
    .locals 3

    iget-object p0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {v1, p1}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, v1, Landroidx/slice/SliceItem;->mSubType:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1, p3}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget-object v4, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/slice/ArrayUtils;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static varargs hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/slice/SliceItem;->mHints:[Ljava/lang/String;

    invoke-static {v4, v5}, Landroidx/slice/ArrayUtils;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
