.class public final Landroidx/compose/ui/node/NestedVectorStack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentIndexes:[I

.field public size:I

.field public vectors:[Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/compose/ui/node/NestedVectorStack;->currentIndexes:[I

    new-array v0, v0, [Landroidx/compose/runtime/collection/MutableVector;

    iput-object v0, p0, Landroidx/compose/ui/node/NestedVectorStack;->vectors:[Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method
