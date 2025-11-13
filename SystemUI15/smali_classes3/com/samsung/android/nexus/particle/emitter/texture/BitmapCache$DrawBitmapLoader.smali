.class public final Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;
.super Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;->mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null drawer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onLoad()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;->mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;

    check-cast p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DrawBitmapLoader{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDrawer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;->mDrawer:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
