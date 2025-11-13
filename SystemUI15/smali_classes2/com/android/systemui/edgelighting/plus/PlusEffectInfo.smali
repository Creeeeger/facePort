.class public final Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accelerationRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

.field public final alpha:F

.field public final bitmap:Landroid/graphics/Bitmap;

.field public final cellCount:I

.field public final color:I

.field public final height:F

.field public final intervalTime:I

.field public final lifeTime:I

.field public final speedRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

.field public final valueRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

.field public final width:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "bitmapByteArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->width:F

    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->height:F

    const-string/jumbo v0, "shapeType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    const-string v0, "cellCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->cellCount:I

    const-string v0, "intervalTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->intervalTime:I

    const-string v0, "lifeTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->lifeTime:I

    const-string v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->color:I

    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->alpha:F

    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->valueRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->speedRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->accelerationRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

    return-void
.end method
