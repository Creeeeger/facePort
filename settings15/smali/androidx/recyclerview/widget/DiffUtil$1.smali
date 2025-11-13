.class public final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget p0, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget p1, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    sub-int/2addr p0, p1

    return p0
.end method
