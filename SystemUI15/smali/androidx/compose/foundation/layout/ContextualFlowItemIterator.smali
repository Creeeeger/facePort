.class public final Landroidx/compose/foundation/layout/ContextualFlowItemIterator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final _list:Ljava/util/List;

.field public final getMeasurables:Lkotlin/jvm/functions/Function2;

.field public final itemCount:I

.field public itemIndex:I

.field public listIndex:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemCount:I

    iput-object p2, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->getMeasurables:Lkotlin/jvm/functions/Function2;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getNext$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;
    .locals 8

    iget v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->listIndex:I

    iget-object v1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->_list:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->_list:Ljava/util/List;

    iget v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->listIndex:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/layout/Measurable;

    iget v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->listIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->listIndex:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemIndex:I

    iget v1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->getMeasurables:Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemIndex:I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Landroidx/compose/foundation/layout/FlowLineInfo;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/FlowLineInfo;-><init>(IIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->getNext$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    iget-object v1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->_list:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget p1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->listIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->listIndex:I

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No item returned at index call. Index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->listIndex:I

    iget-object v1, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->_list:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemIndex:I

    iget p0, p0, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->itemCount:I

    if-ge v0, p0, :cond_0

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

.method public final next()Ljava/lang/Object;
    .locals 8

    new-instance v7, Landroidx/compose/foundation/layout/FlowLineInfo;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/FlowLineInfo;-><init>(IIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v7}, Landroidx/compose/foundation/layout/ContextualFlowItemIterator;->getNext$foundation_layout_release(Landroidx/compose/foundation/layout/FlowLineInfo;)Landroidx/compose/ui/layout/Measurable;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
