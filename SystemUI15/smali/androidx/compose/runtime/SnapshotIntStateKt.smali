.class public abstract Landroidx/compose/runtime/SnapshotIntStateKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final mutableIntStateOf(I)Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;
    .locals 1

    sget v0, Landroidx/compose/runtime/ActualAndroid_androidKt;->$r8$clinit:I

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    return-object v0
.end method
