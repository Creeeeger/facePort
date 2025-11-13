.class public final Landroidx/navigation/NavGraph$iterator$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public index:I

.field public final synthetic this$0:Landroidx/navigation/NavGraph;

.field public wentToNext:Z


# direct methods
.method public constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavGraph$iterator$1;->this$0:Landroidx/navigation/NavGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/navigation/NavGraph$iterator$1;->index:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/navigation/NavGraph$iterator$1;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object p0, p0, Landroidx/navigation/NavGraph$iterator$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object p0, p0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroidx/navigation/NavGraph$iterator$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavGraph$iterator$1;->wentToNext:Z

    iget-object v1, p0, Landroidx/navigation/NavGraph$iterator$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object v1, v1, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    iget v2, p0, Landroidx/navigation/NavGraph$iterator$1;->index:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/navigation/NavGraph$iterator$1;->index:I

    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 5

    iget-boolean v0, p0, Landroidx/navigation/NavGraph$iterator$1;->wentToNext:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavGraph$iterator$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object v0, v0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    iget v1, p0, Landroidx/navigation/NavGraph$iterator$1;->index:I

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    iget v1, p0, Landroidx/navigation/NavGraph$iterator$1;->index:I

    iget-object v2, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v3, v2, v1

    sget-object v4, Landroidx/collection/SparseArrayCompatKt;->DELETED:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    aput-object v4, v2, v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/navigation/NavGraph$iterator$1;->index:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigation/NavGraph$iterator$1;->wentToNext:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must call next() before you can remove an element"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
