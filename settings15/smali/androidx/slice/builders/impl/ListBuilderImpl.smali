.class public final Landroidx/slice/builders/impl/ListBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# instance fields
.field public mFirstRowChecked:Z

.field public mFirstRowHasText:Z

.field public mIsError:Z

.field public mIsFirstRowTypeValid:Z

.field public mKeywords:Ljava/util/Set;

.field public mSliceActions:Ljava/util/List;

.field public mSliceHeader:Landroidx/slice/Slice;


# virtual methods
.method public final addAction(Landroidx/slice/builders/SliceAction;)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    :cond_0
    new-instance v0, Landroidx/slice/Slice$Builder;

    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v1, "actions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 3

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;

    new-instance v1, Landroidx/slice/Slice$Builder;

    iget-object v2, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-direct {v0, v1, p1}, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V

    iget-object p1, v0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, v0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iget-boolean v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    iput-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    :cond_2
    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    const-string v0, "range"

    invoke-virtual {p0, p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    return-void
.end method

.method public final addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    new-instance v3, Landroidx/slice/Slice$Builder;

    iget-object v4, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v3, v4}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-direct {v2, v3}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iput-object v3, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleAction:Landroidx/slice/builders/SliceAction;

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    const-string v6, "partial"

    if-nez v3, :cond_3

    iget-boolean v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleActionLoading:Z

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v3, :cond_1

    iget-boolean v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleItemLoading:Z

    if-eqz v7, :cond_5

    :cond_1
    iget v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleImageMode:I

    iget-boolean v8, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleItemLoading:Z

    new-instance v9, Landroidx/slice/Slice$Builder;

    iget-object v10, v2, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v9, v10}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-static {v7, v8}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->parseImageMode(IZ)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v9, v3, v4, v7}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v8, :cond_2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_2
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    iput-object v3, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleActionLoading:Z

    new-instance v8, Landroidx/slice/Slice$Builder;

    iget-object v9, v2, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v8, v9}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    if-eqz v7, :cond_4

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3, v8}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v3

    iput-object v3, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    :cond_5
    :goto_1
    iget-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v7, "text"

    if-nez v3, :cond_6

    iget-boolean v8, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    if-eqz v8, :cond_7

    :cond_6
    iget-boolean v8, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    new-instance v9, Landroidx/slice/SliceItem;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v3, v7, v4, v5}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v8, :cond_7

    invoke-virtual {v9}, Landroidx/slice/SliceItem;->addHint()V

    :cond_7
    iget-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-nez v3, :cond_8

    iget-boolean v8, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    if-eqz v8, :cond_9

    :cond_8
    iget-boolean v8, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    new-instance v9, Landroidx/slice/SliceItem;

    new-array v10, v5, [Ljava/lang/String;

    invoke-direct {v9, v3, v7, v4, v10}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v9, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v8, :cond_9

    invoke-virtual {v9}, Landroidx/slice/SliceItem;->addHint()V

    :cond_9
    iget-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_a

    iput-object v3, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    :cond_a
    iget-object v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    iget-object v7, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    iget-object v1, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    move v8, v5

    :goto_2
    move-object v9, v3

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v8, v10, :cond_10

    move-object v10, v7

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_f

    if-eq v10, v11, :cond_d

    const/4 v11, 0x2

    if-eq v10, v11, :cond_b

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/builders/SliceAction;

    move-object v10, v1

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    new-instance v11, Landroidx/slice/Slice$Builder;

    iget-object v12, v2, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v11, v12}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    if-eqz v10, :cond_c

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_c
    iget-object v10, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    iget-object v10, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v9, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v11, v1

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    new-instance v12, Landroidx/slice/Slice$Builder;

    iget-object v13, v2, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v12, v13}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-static {v9, v11}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->parseImageMode(IZ)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v12, v10, v4, v9}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)V

    if-eqz v11, :cond_e

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_e
    iget-object v9, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_f
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    iget-object v11, v2, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v11, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    const-string v15, "_gen"

    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    iget v15, v11, Landroidx/slice/Slice$Builder;->mChildId:I

    add-int/lit8 v4, v15, 0x1

    iput v4, v11, Landroidx/slice/Slice$Builder;->mChildId:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    new-array v11, v5, [Ljava/lang/String;

    new-instance v14, Landroidx/slice/SliceItem;

    const-string v15, "long"

    const/4 v5, 0x0

    invoke-direct {v14, v9, v15, v5, v11}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Landroidx/slice/Slice;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-direct {v9}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    iput-object v5, v9, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    sget-object v13, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v13, v9, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    iput-object v5, v9, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v11, v9, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroidx/slice/SliceItem;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroidx/slice/SliceItem;

    iput-object v11, v9, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v5, v9, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_10
    iget-object v1, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez v1, :cond_12

    iget-object v3, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    const/4 v3, 0x0

    goto :goto_5

    :cond_12
    :goto_4
    move v3, v11

    :goto_5
    iget-boolean v4, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-nez v4, :cond_13

    iput-boolean v11, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    iput-boolean v11, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    iput-boolean v3, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    :cond_13
    if-nez v1, :cond_15

    iget-object v1, v2, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_14

    goto :goto_6

    :cond_14
    const/4 v5, 0x0

    goto :goto_7

    :cond_15
    :goto_6
    move v5, v11

    :goto_7
    iget-boolean v1, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-nez v1, :cond_16

    iput-boolean v11, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    iput-boolean v11, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    iput-boolean v5, v0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    :cond_16
    iget-object v1, v2, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    const-string v3, "list_item"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-virtual {v2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    return-void
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 9

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mClock:Landroidx/slice/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_updated"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroidx/slice/Slice$Builder;->mItems:Ljava/util/ArrayList;

    new-instance v4, Landroidx/slice/SliceItem;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "long"

    const-string v5, "millis"

    invoke-direct {v4, v0, v1, v5, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceActions:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/Slice;

    invoke-virtual {v0, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "actions"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsError:Z

    if-eqz v0, :cond_3

    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mKeywords:Ljava/util/Set;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p1, Landroidx/slice/Slice$Builder;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "_gen"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    iget v5, p1, Landroidx/slice/Slice$Builder;->mChildId:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Landroidx/slice/Slice$Builder;->mChildId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mKeywords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    new-instance v7, Landroidx/slice/SliceItem;

    const-string/jumbo v8, "text"

    invoke-direct {v7, v5, v8, v1, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    const-string v2, "keywords"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Landroidx/slice/Slice;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v2}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    iput-object v1, v2, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    sget-object v4, Landroidx/slice/Slice;->NO_ITEMS:[Landroidx/slice/SliceItem;

    iput-object v4, v2, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    iput-object v1, v2, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v3, v2, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroidx/slice/SliceItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/slice/SliceItem;

    iput-object v0, v2, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    iput-object v1, v2, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final build()Landroidx/slice/Slice;
    .locals 8

    invoke-super {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "partial"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v5, "list_item"

    const-string/jumbo v6, "slice"

    invoke-static {v0, v6, v5}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    const-string/jumbo v4, "shortcut"

    const-string/jumbo v5, "title"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "action"

    invoke-static {v0, v5, v4, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v7, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v6, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v7, Landroidx/slice/core/SliceQuery$2;

    invoke-direct {v7, v4}, Landroidx/slice/core/SliceQuery$2;-><init>([Ljava/lang/String;)V

    invoke-static {v6, v7, v5}, Landroidx/slice/core/SliceQuery;->findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;Ljava/util/List;)V

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A slice requires a primary action; ensure one of your builders has called #setPrimaryAction with a valid SliceAction."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A slice cannot have the first row be constructed from a GridRowBuilder, consider using #setHeader."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    iget-boolean p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A slice requires the first row to have some text."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    return-object v0
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
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    new-instance v0, Landroidx/slice/Slice$Builder;

    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "layout_direction"

    invoke-virtual {v0, v2, v3, v4}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const-string/jumbo v5, "text"

    if-nez v3, :cond_1

    iget-boolean v6, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v4

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v6, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    new-instance v7, Landroidx/slice/SliceItem;

    const-string/jumbo v8, "title"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v3, v5, v4, v8}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Landroidx/slice/SliceItem;->addHint()V

    :cond_2
    :goto_1
    iget-object v3, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_4

    iget-boolean v6, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitleLoading:Z

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    iget-boolean p1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mSubtitleLoading:Z

    new-instance v6, Landroidx/slice/SliceItem;

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v6, v3, v5, v4, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->addHint()V

    :cond_5
    :goto_3
    iput-object v4, v0, Landroidx/slice/Slice$Builder;->mSpec:Landroidx/slice/SliceSpec;

    if-eqz v7, :cond_6

    invoke-virtual {v0, v7}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_8
    if-nez v6, :cond_a

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Header requires a title or subtitle to be set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    return-void
.end method

.method public final setIsError()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsError:Z

    return-void
.end method

.method public final setKeywords(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mKeywords:Ljava/util/Set;

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
