.class public final Landroidx/compose/runtime/changelist/Operations;
.super Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public intArgs:[I

.field public intArgsSize:I

.field public objectArgs:[Ljava/lang/Object;

.field public objectArgsSize:I

.field public opCodes:[Landroidx/compose/runtime/changelist/Operation;

.field public opCodesSize:I

.field public pushedIntMask:I

.field public pushedObjectMask:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/runtime/changelist/Operation;

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    return-void
.end method

.method public static final access$createExpectedArgMask(Landroidx/compose/runtime/changelist/Operations;I)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p0, p1, 0x20

    const/4 p1, -0x1

    ushr-int p0, p1, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-static {v0, v3, v2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    return-void
.end method

.method public final executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;-><init>(Landroidx/compose/runtime/changelist/Operations;)V

    :goto_0
    iget-object v1, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    iget-object v2, v1, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v3, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, p1, p2, p3}, Landroidx/compose/runtime/changelist/Operation;->execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V

    iget v2, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    iget v3, v1, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    aget-object v2, v3, v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->intIdx:I

    iget v4, v2, Landroidx/compose/runtime/changelist/Operation;->ints:I

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->intIdx:I

    iget v3, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->objIdx:I

    iget v2, v2, Landroidx/compose/runtime/changelist/Operation;->objects:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->objIdx:I

    iget v2, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    iget v1, v1, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    if-ge v2, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNotEmpty()Z
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final peekOperation()Landroidx/compose/runtime/changelist/Operation;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final push(Landroidx/compose/runtime/changelist/Operation;)V
    .locals 3

    iget v0, p1, Landroidx/compose/runtime/changelist/Operation;->ints:I

    iget v1, p1, Landroidx/compose/runtime/changelist/Operation;->objects:I

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot push "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " without arguments because it expects "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ints and "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " objects."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final pushOp(Landroidx/compose/runtime/changelist/Operation;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    array-length v2, v1

    const/16 v3, 0x400

    const-string v4, "copyOf(this, newSize)"

    if-ne v0, v2, :cond_1

    if-le v0, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Landroidx/compose/runtime/changelist/Operation;

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget v1, p1, Landroidx/compose/runtime/changelist/Operation;->ints:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    array-length v2, v1

    if-le v0, v2, :cond_4

    if-le v2, v3, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    add-int/2addr v2, v5

    if-ge v2, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    :cond_4
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    iget v1, p1, Landroidx/compose/runtime/changelist/Operation;->objects:I

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    array-length v5, v2

    if-le v0, v5, :cond_7

    if-le v5, v3, :cond_5

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_3
    add-int/2addr v5, v3

    if-ge v5, v0, :cond_6

    goto :goto_4

    :cond_6
    move v0, v5

    :goto_4
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v2, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    aput-object p1, v0, v2

    iget v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget p1, p1, Landroidx/compose/runtime/changelist/Operation;->ints:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget p1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    return-void
.end method
