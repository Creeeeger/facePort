.class public final Landroidx/compose/runtime/changelist/Operation$ResetSlots;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$ResetSlots;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$ResetSlots;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$ResetSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ResetSlots;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 0

    iget p0, p3, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez p0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    const/4 p0, 0x0

    iput p0, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result p1

    iget p2, p3, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr p1, p2

    iput p1, p3, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iput p0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput p0, p3, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    iput p0, p3, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return-void

    :cond_0
    const-string p0, "Cannot reset when inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
