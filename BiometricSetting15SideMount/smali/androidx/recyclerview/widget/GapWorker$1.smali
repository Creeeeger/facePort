.class public final Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 2
    .line 3
    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    .line 4
    .line 5
    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v0

    .line 14
    :goto_0
    iget-object v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    move v3, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v3, v0

    .line 21
    :goto_1
    const/4 v4, -0x1

    .line 22
    if-eq v2, v3, :cond_4

    .line 23
    .line 24
    if-nez p0, :cond_3

    .line 25
    .line 26
    :cond_2
    move v0, v1

    .line 27
    goto :goto_4

    .line 28
    :cond_3
    :goto_2
    move v0, v4

    .line 29
    goto :goto_4

    .line 30
    :cond_4
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 31
    .line 32
    iget-boolean v2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->neededNextFrame:Z

    .line 33
    .line 34
    if-eq p0, v2, :cond_5

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_5
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 40
    .line 41
    iget v1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    .line 42
    .line 43
    sub-int/2addr p0, v1

    .line 44
    if-eqz p0, :cond_6

    .line 45
    .line 46
    :goto_3
    move v0, p0

    .line 47
    goto :goto_4

    .line 48
    :cond_6
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 49
    .line 50
    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    .line 51
    .line 52
    sub-int/2addr p0, p1

    .line 53
    if-eqz p0, :cond_7

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_7
    :goto_4
    return v0
.end method
