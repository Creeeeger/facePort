.class public final Landroidx/compose/runtime/changelist/Operation$TrimParentValues;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$TrimParentValues;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$TrimParentValues;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 6

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getInt-w8GmfQM(I)I

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p2

    iget v0, p3, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v1, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/SlotWriter;->slotIndex(I[I)I

    move-result v1

    iget-object v2, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-virtual {p3, v0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v0

    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p3, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v4

    aget-object v2, v2, v4

    instance-of v4, v2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v4, :cond_0

    sub-int v4, p2, v1

    check-cast v2, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v2, v2, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    const/4 v5, -0x1

    invoke-virtual {p4, v4, v5, v5, v2}, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->recordLeaving(IIILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v4, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz v4, :cond_1

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    move p2, v3

    goto :goto_2

    :cond_3
    move p2, p0

    :goto_2
    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget p2, p3, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object p4, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-virtual {p3, v0, p4}, Landroidx/compose/runtime/SlotWriter;->slotIndex(I[I)I

    move-result p4

    iget-object v0, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-virtual {p3, v1, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v0

    sub-int/2addr v0, p1

    if-lt v0, p4, :cond_4

    move p0, v3

    :cond_4
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    invoke-virtual {p3, v0, p1, p2}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    iget p0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-lt p0, p4, :cond_5

    sub-int/2addr p0, p1

    iput p0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    :cond_5
    return-void
.end method

.method public final intParamName-w8GmfQM(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "count"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
