.class public final Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;
.super Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public final mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mBounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    if-gez v2, :cond_0

    sget v2, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->uid:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->uid:I

    iput v2, v1, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->loadToCache(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->loadToCache(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null loader"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    iget p0, v1, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->retainCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->retainCount:I

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public final onRelease()V
    .locals 2

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;->mBitmapLoader:Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;

    if-eqz p0, :cond_1

    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->retainCount:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->retainCount:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "release: clear cache :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapCache"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null loader"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
