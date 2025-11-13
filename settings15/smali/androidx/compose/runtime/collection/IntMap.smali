.class public final Landroidx/compose/runtime/collection/IntMap;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final sparseArray:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/collection/IntMap;->sparseArray:Landroid/util/SparseArray;

    return-void
.end method
