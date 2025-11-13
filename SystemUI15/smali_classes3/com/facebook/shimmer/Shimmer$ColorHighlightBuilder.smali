.class public final Lcom/facebook/shimmer/Shimmer$ColorHighlightBuilder;
.super Lcom/facebook/shimmer/Shimmer$Builder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/shimmer/Shimmer$Builder;-><init>()V

    iget-object p0, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/shimmer/Shimmer;->alphaShimmer:Z

    return-void
.end method


# virtual methods
.method public final consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 4

    invoke-super {p0, p1}, Lcom/facebook/shimmer/Shimmer$Builder;->consumeAttributes(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$Builder;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/shimmer/Shimmer$Builder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    if-eqz v1, :cond_0

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    const v3, 0xffffff

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, v2, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    :cond_1
    return-object p0
.end method

.method public final getThis()Lcom/facebook/shimmer/Shimmer$Builder;
    .locals 0

    return-object p0
.end method
