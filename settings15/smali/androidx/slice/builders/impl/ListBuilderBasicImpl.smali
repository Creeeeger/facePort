.class public final Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# instance fields
.field public mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

.field public mIsError:Z

.field public mKeywords:Ljava/util/Set;

.field public mSliceAction:Landroidx/slice/builders/SliceAction;

.field public mSubtitle:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;


# virtual methods
.method public final addAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    return-void
.end method

.method public final addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_2

    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    return-void
.end method

.method public final addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_2

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_3

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_4

    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_4

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    :cond_4
    return-void
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 10

    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    if-eqz v0, :cond_0

    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    const/4 v1, 0x0

    const-string/jumbo v2, "text"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "_gen"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    iget v7, v0, Landroidx/slice/Slice$Builder;->mChildId:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Landroidx/slice/Slice$Builder;->mChildId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v6, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-array v8, v1, [Ljava/lang/String;

    new-instance v9, Landroidx/slice/SliceItem;

    invoke-direct {v9, v7, v2, v3, v8}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, "keywords"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Landroidx/slice/Slice;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v6}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    iput-object v3, v6, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    sget-object v7, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v7, v6, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    iput-object v3, v6, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v5, v6, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroidx/slice/SliceItem;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/slice/SliceItem;

    iput-object v4, v6, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v3, v6, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v6, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroidx/slice/Slice$Builder;

    iget-object v4, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v0, v4}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-eqz v4, :cond_5

    iget-object v5, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v6, v4, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-nez v5, :cond_3

    iget-object v5, v6, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iput-object v5, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_3
    iget-object v5, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v5, :cond_4

    iget-object v5, v6, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v5, :cond_4

    iput-object v5, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    :cond_4
    invoke-virtual {v4, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_5
    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v5, "title"

    if-eqz v4, :cond_6

    new-instance v6, Landroidx/slice/SliceItem;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v2, v3, v7}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    :cond_6
    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    new-instance v6, Landroidx/slice/SliceItem;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v6, v4, v2, v3, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    :cond_7
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p0, :cond_8

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v3, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    return-void
.end method

.method public final setColor(I)V
    .locals 2

    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "color"

    invoke-virtual {p0, p1, v0, v1}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 1

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    :cond_1
    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    return-void
.end method

.method public final setIsError()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    return-void
.end method

.method public final setKeywords(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    return-void
.end method

.method public final setTtl()V
    .locals 5

    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    const-string/jumbo v0, "ttl"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v1, Landroidx/slice/SliceItem;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "long"

    const-string v4, "millis"

    invoke-direct {v1, v2, v3, v4, v0}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
