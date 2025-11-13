.class public final Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;
.super Landroidx/compose/runtime/snapshots/StateRecord;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/StateRecord;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    return-void
.end method


# virtual methods
.method public final assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    iget p1, p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    iput p1, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    return-void
.end method

.method public final create()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;

    iget p0, p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;->value:I

    invoke-direct {v0, p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl$IntStateStateRecord;-><init>(I)V

    return-object v0
.end method
