.class public final Landroidx/compose/runtime/changelist/Operation$ResetSlots;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$ResetSlots;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$ResetSlots;

    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operation$ResetSlots;-><init>()V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$ResetSlots;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$ResetSlots;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
