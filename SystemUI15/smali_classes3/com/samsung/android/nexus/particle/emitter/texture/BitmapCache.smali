.class public final Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sLruCache:Landroid/util/LruCache;

.field public static uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->uid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadToCache(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->onLoad()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p1, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->TAG:Ljava/lang/String;

    const-string v2, "load: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p0

    :goto_0
    const-string v1, "BitmapCache"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadToCache: unable to load bitmap :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "loadToCache: load bitmap :"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache;->sLruCache:Landroid/util/LruCache;

    iget p1, p1, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
