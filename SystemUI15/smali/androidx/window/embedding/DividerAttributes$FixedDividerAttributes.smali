.class public final Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;
.super Landroidx/window/embedding/DividerAttributes;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/window/embedding/DividerAttributes;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/high16 p2, -0x1000000

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    iget v1, p1, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    iget v3, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    if-ne v3, v1, :cond_2

    iget p1, p1, Landroidx/window/embedding/DividerAttributes;->color:I

    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    add-int/2addr v0, p0

    return v0
.end method
