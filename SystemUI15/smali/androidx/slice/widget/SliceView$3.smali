.class public final Landroidx/slice/widget/SliceView$3;
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
    .locals 2

    check-cast p1, Landroidx/slice/core/SliceAction;

    check-cast p2, Landroidx/slice/core/SliceAction;

    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getPriority()I

    move-result p0

    invoke-interface {p2}, Landroidx/slice/core/SliceAction;->getPriority()I

    move-result p1

    const/4 p2, 0x0

    if-gez p0, :cond_0

    if-gez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-gez p0, :cond_1

    :goto_0
    move p2, v0

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    if-gez p1, :cond_2

    :goto_1
    move p2, v1

    goto :goto_2

    :cond_2
    if-ge p1, p0, :cond_3

    goto :goto_0

    :cond_3
    if-le p1, p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return p2
.end method
