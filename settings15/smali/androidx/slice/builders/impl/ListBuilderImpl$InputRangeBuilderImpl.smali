.class public final Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAction:Landroid/app/PendingIntent;

.field public final mEndItems:Ljava/util/ArrayList;

.field public final mLayoutDir:I

.field public final mMax:I

.field public final mMin:I

.field public final mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field public final mStartItem:Landroidx/slice/Slice;

.field public final mSubtitle:Ljava/lang/CharSequence;

.field public final mTitle:Ljava/lang/CharSequence;

.field public mValue:I

.field public final mValueSet:Z


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mMin:I

    const/16 v1, 0x64

    iput v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mMax:I

    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValue:I

    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValueSet:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mLayoutDir:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    iget-boolean v2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    iput-boolean v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValueSet:Z

    iget v2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    iput v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mMin:I

    iget v2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    iput v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mMax:I

    iget v2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    iput v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValue:I

    iget-object v2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iput-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iput v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mLayoutDir:I

    iget-object v1, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    iget-object v1, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitleIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/slice/Slice$Builder;

    iget-object v3, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-static {p1, p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->parseImageMode(IZ)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    :cond_0
    iget-object v0, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndItems:Ljava/util/List;

    iget-object v1, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndTypes:Ljava/util/List;

    iget-object p2, p2, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mEndLoads:Ljava/util/List;

    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/builders/SliceAction;

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    new-instance v4, Landroidx/slice/Slice$Builder;

    iget-object v5, p0, Landroidx/slice/builders/impl/TemplateBuilderImpl;->mSliceBuilder:Landroidx/slice/Slice$Builder;

    invoke-direct {v4, v5}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    if-eqz v3, :cond_1

    const-string v3, "partial"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final apply(Landroidx/slice/Slice$Builder;)V
    .locals 8

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-boolean v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValueSet:Z

    iget v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mMin:I

    if-nez v1, :cond_0

    iput v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValue:I

    :cond_0
    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValue:I

    iget v3, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mMax:I

    if-gt v2, v1, :cond_7

    if-gt v1, v3, :cond_7

    if-ge v2, v3, :cond_7

    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v5, "title"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v6}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_3
    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mLayoutDir:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_4

    const-string v6, "layout_direction"

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1, v7, v6}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    const-string v6, "min"

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v7, v6}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "max"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v0, v3, v6, v2}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValue:I

    const-string/jumbo v3, "value"

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v6, v3}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "range_mode"

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5, v3, v2}, Landroidx/slice/Slice$Builder;->addInt(I[Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    const-string v3, "range"

    invoke-virtual {p1, v2, v0, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mStartItem:Landroidx/slice/Slice;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mEndItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/Slice;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid range values, min="

    const-string v1, ", value="

    invoke-static {v2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/slice/builders/impl/ListBuilderImpl$InputRangeBuilderImpl;->mValue:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", max="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ensure value falls within (min, max) and min < max."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input ranges must have an associated action."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
