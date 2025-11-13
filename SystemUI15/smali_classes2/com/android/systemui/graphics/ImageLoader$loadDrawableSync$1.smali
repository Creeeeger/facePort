.class public final Lcom/android/systemui/graphics/ImageLoader$loadDrawableSync$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic $allocator:I

.field public final synthetic $maxHeight:I

.field public final synthetic $maxWidth:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/graphics/ImageLoader$loadDrawableSync$1;->$maxWidth:I

    iput p2, p0, Lcom/android/systemui/graphics/ImageLoader$loadDrawableSync$1;->$maxHeight:I

    iput p3, p0, Lcom/android/systemui/graphics/ImageLoader$loadDrawableSync$1;->$allocator:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 3

    sget-object p3, Lcom/android/systemui/graphics/ImageLoader;->Companion:Lcom/android/systemui/graphics/ImageLoader$Companion;

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/graphics/ImageLoader$loadDrawableSync$1;->$maxWidth:I

    iget v1, p0, Lcom/android/systemui/graphics/ImageLoader$loadDrawableSync$1;->$maxHeight:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    if-gt p3, v0, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    if-gt p3, v1, :cond_1

    goto :goto_2

    :cond_1
    const/high16 p3, 0x3f800000    # 1.0f

    if-gtz v0, :cond_2

    move v0, p3

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_0
    if-gtz v1, :cond_3

    move v1, p3

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float p3, v0, p3

    if-gez p3, :cond_5

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x3

    const-string v1, "ImageLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Configured image size to "

    const-string v2, " x "

    invoke-static {p3, p2, v0, v2, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p3, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_5
    :goto_2
    iget p0, p0, Lcom/android/systemui/graphics/ImageLoader$loadDrawableSync$1;->$allocator:I

    invoke-virtual {p1, p0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    return-void
.end method
