.class public final Landroidx/compose/runtime/changelist/Operations$OpIterator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public intIdx:I

.field public objIdx:I

.field public opIdx:I

.field public final synthetic this$0:Landroidx/compose/runtime/changelist/Operations;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/changelist/Operations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInt-w8GmfQM(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->intIdx:I

    add-int/2addr p0, p1

    aget p0, v0, p0

    return p0
.end method

.method public final getObject-31yXWZQ(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    iget-object v0, v0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->objIdx:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method
