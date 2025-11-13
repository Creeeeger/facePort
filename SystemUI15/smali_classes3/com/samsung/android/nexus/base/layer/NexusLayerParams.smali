.class public final Lcom/samsung/android/nexus/base/layer/NexusLayerParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mHeight:I

.field public final mWidth:I

.field public final mX:I

.field public final mY:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    iput p2, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/base/layer/NexusLayerParams;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mWidth:I

    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mHeight:I

    iget v0, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    iput v0, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mX:I

    iget p1, p1, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    iput p1, p0, Lcom/samsung/android/nexus/base/layer/NexusLayerParams;->mY:I

    return-void
.end method
