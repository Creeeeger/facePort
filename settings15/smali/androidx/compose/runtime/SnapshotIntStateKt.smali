.class public abstract Landroidx/compose/runtime/SnapshotIntStateKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;
    .locals 1

    sget v0, Landroidx/compose/runtime/ActualAndroid_androidKt;->$r8$clinit:I

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    return-object v0
.end method
