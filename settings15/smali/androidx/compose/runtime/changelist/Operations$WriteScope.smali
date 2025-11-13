.class public abstract Landroidx/compose/runtime/changelist/Operations$WriteScope;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final setInt-A6tL2VI(Landroidx/compose/runtime/changelist/Operations;II)V
    .locals 3

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    and-int v2, v1, v0

    if-nez v2, :cond_0

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedIntMask:I

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->peekOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object p0

    iget p0, p0, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v1, p0

    add-int/2addr v1, p1

    aput p2, v0, v1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Already pushed argument "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->peekOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->intParamName-w8GmfQM(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    and-int v2, v1, v0

    if-nez v2, :cond_0

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/changelist/Operations;->pushedObjectMask:I

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/changelist/Operations;->objectArgsSize:I

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->peekOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object p0

    iget p0, p0, Landroidx/compose/runtime/changelist/Operation;->objects:I

    sub-int/2addr v1, p0

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Already pushed argument "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations;->peekOperation()Landroidx/compose/runtime/changelist/Operation;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/changelist/Operation;->objectParamName-31yXWZQ(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
