.class public final Landroidx/slice/builders/impl/ListBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# instance fields
.field public mFirstRowChecked:Z

.field public mFirstRowHasText:Z

.field public mIsFirstRowTypeValid:Z

.field public mSliceHeader:Landroidx/slice/Slice;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 1

    new-instance v0, Landroidx/slice/SystemClock;

    invoke-direct {v0}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-void
.end method


# virtual methods
.method public final addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 14

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    new-instance v1, Landroidx/slice/Slice$Builder;

    iget-object v2, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v2, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    :cond_0
    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iput-object v1, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget v1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mLayoutDirection:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v3, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "layout_direction"

    invoke-virtual {v3, v1, v5, v4}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)V

    :cond_1
    iget-wide v3, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTimeStamp:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "title"

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/slice/Slice$Builder;

    iget-object v7, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v1, v7}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    new-array v7, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5, v7}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    :cond_2
    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    iget-boolean v3, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    new-instance v4, Landroidx/slice/SliceItem;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text"

    invoke-direct {v4, v1, v7, v5, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v4, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->addHint()V

    :cond_4
    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iput-object v1, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    :cond_5
    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndItems:Ljava/util/List;

    iget-object v3, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndTypes:Ljava/util/List;

    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mEndLoads:Ljava/util/List;

    move v4, v2

    :goto_0
    move-object v6, v1

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v4, v7, :cond_13

    move-object v7, v3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_12

    const/4 v9, 0x2

    const-string v10, "partial"

    if-eq v7, v8, :cond_8

    if-eq v7, v9, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/builders/SliceAction;

    move-object v7, p1

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance v8, Landroidx/slice/Slice$Builder;

    iget-object v9, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v8, v9}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    if-eqz v7, :cond_7

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_7
    iget-object v7, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    iget-object v6, v6, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "shortcut"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    iget-object v9, v6, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8}, Landroidx/slice/core/SliceActionImpl;->buildSliceContent(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v10

    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSubtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v10, v6}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/util/Pair;

    iget-object v7, v6, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroidx/core/graphics/drawable/IconCompat;

    iget-object v6, v6, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v8, p1

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    new-instance v11, Landroidx/slice/Slice$Builder;

    iget-object v12, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v11, v12}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x6

    if-ne v6, v13, :cond_9

    const-string v13, "show_label"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v6, :cond_a

    const-string v13, "no_tint"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v13, 0x4

    if-eq v6, v9, :cond_b

    if-ne v6, v13, :cond_c

    :cond_b
    const-string v9, "large"

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v9, 0x3

    if-eq v6, v9, :cond_d

    if-ne v6, v13, :cond_e

    :cond_d
    const-string v6, "raw"

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v8, :cond_f

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/slice/Slice;->isValidIcon(Landroidx/core/graphics/drawable/IconCompat;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v11, v7, v5, v6}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_10
    if-eqz v8, :cond_11

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_11
    iget-object v6, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_12
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    new-instance v9, Landroidx/slice/Slice$Builder;

    iget-object v10, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v9, v10}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    new-array v10, v2, [Ljava/lang/String;

    invoke-virtual {v9, v6, v7, v5, v10}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_13
    iget-object p1, v0, Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-nez p1, :cond_14

    move v1, v2

    goto :goto_2

    :cond_14
    move v1, v8

    :goto_2
    iget-boolean v3, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-nez v3, :cond_15

    iput-boolean v8, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    iput-boolean v8, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    iput-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    :cond_15
    if-nez p1, :cond_16

    goto :goto_3

    :cond_16
    move v2, v8

    :goto_3
    iget-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    if-nez p1, :cond_17

    iput-boolean v8, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    iput-boolean v8, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    iput-boolean v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    :cond_17
    iget-object p1, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, v5}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    return-void
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 6

    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mClock:Landroidx/slice/Clock;

    check-cast v0, Landroidx/slice/SystemClock;

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

    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final build()Landroidx/slice/Slice;
    .locals 10

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
    const-string v5, "slice"

    const-string v6, "list_item"

    invoke-static {v0, v5, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    if-nez v6, :cond_1

    move v3, v4

    :cond_1
    const-string v4, "shortcut"

    const-string/jumbo v6, "title"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "action"

    invoke-static {v0, v6, v4, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v9, v0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v8, v9}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v9, Landroidx/slice/core/SliceQuery$2;

    invoke-direct {v9, v5, v4, v1}, Landroidx/slice/core/SliceQuery$2;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v8, v9, v7}, Landroidx/slice/core/SliceQuery;->findAll(Ljava/util/Deque;Landroidx/slice/core/SliceQuery$Filter;Ljava/util/List;)V

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

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

.method public final setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mIsFirstRowTypeValid:Z

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowHasText:Z

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mFirstRowChecked:Z

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderImpl;)V

    iget-object v1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v2, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object v2, v0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "layout_direction"

    invoke-virtual {v2, v3, v5, v4}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    iget-boolean v3, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean p1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitleLoading:Z

    new-instance v3, Landroidx/slice/SliceItem;

    const-string/jumbo v4, "title"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-direct {v3, v2, v5, v1, v4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, v0, Landroidx/slice/builders/impl/ListBuilderImpl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->addHint()V

    :cond_2
    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl;->mSliceHeader:Landroidx/slice/Slice;

    return-void
.end method

.method public final setTtl(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mClock:Landroidx/slice/Clock;

    check-cast v0, Landroidx/slice/SystemClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_0
    iget-object p0, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    const-string/jumbo p1, "ttl"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "millis"

    invoke-virtual {p0, v0, v1, p2, p1}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final setTtl(Ljava/time/Duration;)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderImpl;->setTtl(J)V

    return-void
.end method
