.class public final Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# instance fields
.field public mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

.field public mSliceAction:Landroidx/slice/builders/SliceAction;

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public final addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_1
    return-void
.end method

.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 7

    new-instance v0, Landroidx/slice/Slice$Builder;

    iget-object v1, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroidx/slice/builders/SliceAction;->mSliceAction:Landroidx/slice/core/SliceActionImpl;

    if-nez v2, :cond_0

    iget-object v2, v3, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v2, :cond_1

    iget-object v2, v3, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v2, :cond_1

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_2
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v2, "title"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    new-instance v4, Landroidx/slice/SliceItem;

    const-string/jumbo v5, "text"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v1, v5, v3, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)V

    :cond_3
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p0, :cond_4

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v3, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0, v3}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    return-void
.end method

.method public final setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 0

    iget-object p1, p1, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
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
    invoke-virtual {p0, v0, v1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->setTtl(J)V

    return-void
.end method
