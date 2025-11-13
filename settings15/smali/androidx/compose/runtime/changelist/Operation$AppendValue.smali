.class public final Landroidx/compose/runtime/changelist/Operation$AppendValue;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$AppendValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$AppendValue;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$AppendValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$AppendValue;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Anchor;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v0, v0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    iget-object p4, p4, Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;->remembering:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p4, p3, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez p4, :cond_2

    iget p4, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p0

    iget-object v1, p3, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v1

    iput v1, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v1, p3, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    invoke-virtual {p3, p2, p0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    if-lt p4, v1, :cond_1

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object p0, p3, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aput-object p1, p0, v1

    iput p4, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    return-void

    :cond_2
    const-string p0, "Can only append a slot if not current inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final objectParamName-31yXWZQ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "anchor"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/compose/runtime/changelist/Operation$IntParameter;->equals-impl0$1(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "value"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
