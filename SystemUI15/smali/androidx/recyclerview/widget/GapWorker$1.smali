.class public final Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    const/4 v4, -0x1

    if-eq v2, v3, :cond_4

    if-nez p0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_4

    :cond_3
    :goto_2
    move v0, v4

    goto :goto_4

    :cond_4
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iget-boolean v2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eq p0, v2, :cond_5

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_5
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iget v1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr p0, v1

    if-eqz p0, :cond_6

    :goto_3
    move v0, p0

    goto :goto_4

    :cond_6
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr p0, p1

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    return v0
.end method
