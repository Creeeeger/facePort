.class public final Landroidx/collection/ArraySet$ElementIterator;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public canRemove:Z

.field public index:I

.field public size:I

.field public final synthetic this$0:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>(Landroidx/collection/ArraySet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/collection/ArraySet$ElementIterator;->this$0:Landroidx/collection/ArraySet;

    .line 2
    .line 3
    iget p1, p1, Landroidx/collection/ArraySet;->_size:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Landroidx/collection/ArraySet$ElementIterator;->size:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/ArraySet$ElementIterator;->index:I

    .line 2
    .line 3
    iget p0, p0, Landroidx/collection/ArraySet$ElementIterator;->size:I

    .line 4
    .line 5
    if-ge v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ArraySet$ElementIterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/collection/ArraySet$ElementIterator;->index:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/collection/ArraySet$ElementIterator;->this$0:Landroidx/collection/ArraySet;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/collection/ArraySet;->array:[Ljava/lang/Object;

    .line 12
    .line 13
    aget-object v0, v1, v0

    .line 14
    .line 15
    iget v1, p0, Landroidx/collection/ArraySet$ElementIterator;->index:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    add-int/2addr v1, v2

    .line 19
    iput v1, p0, Landroidx/collection/ArraySet$ElementIterator;->index:I

    .line 20
    .line 21
    iput-boolean v2, p0, Landroidx/collection/ArraySet$ElementIterator;->canRemove:Z

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/collection/ArraySet$ElementIterator;->canRemove:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/collection/ArraySet$ElementIterator;->index:I

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Landroidx/collection/ArraySet$ElementIterator;->index:I

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/collection/ArraySet$ElementIterator;->this$0:Landroidx/collection/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroidx/collection/ArraySet$ElementIterator;->size:I

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Landroidx/collection/ArraySet$ElementIterator;->size:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Landroidx/collection/ArraySet$ElementIterator;->canRemove:Z

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "Call next() before removing an element."

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method
