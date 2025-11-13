.class public final Landroidx/picker/decorator/RecyclerViewCornerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    iput-object v0, p0, Landroidx/picker/decorator/RecyclerViewCornerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xf

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/decorator/RecyclerViewCornerDecoration;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    iget-object p0, p0, Landroidx/picker/decorator/RecyclerViewCornerDecoration;->mRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    if-gtz p3, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-static {p3, v0, p2, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    iget-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method
