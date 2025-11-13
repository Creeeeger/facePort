.class public final Landroidx/leanback/widget/Parallax$IntProperty;
.super Landroid/util/Property;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput p2, p0, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/leanback/widget/Parallax;

    iget p0, p0, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    iget-object p1, p1, Landroidx/leanback/widget/Parallax;->mValues:[I

    aget p0, p1, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/leanback/widget/Parallax;

    check-cast p2, Ljava/lang/Integer;

    iget p0, p0, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Landroidx/leanback/widget/Parallax;->mProperties:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    iget-object p1, p1, Landroidx/leanback/widget/Parallax;->mValues:[I

    aput p2, p1, p0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method
