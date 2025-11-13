.class public Lcom/android/settingslib/applications/AppIconCacheManager;
.super Ljava/lang/Object;
.source "AppIconCacheManager.java"


# static fields
.field private static ICON_SIZE_LIMIT:I

.field private static final MAX_CACHE_SIZE_IN_KB:I

.field private static mCurCacheSize:I

.field private static sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;


# instance fields
.field private final mDrawableCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getMaxCacheInKb()I

    move-result v0

    sput v0, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    const/16 v0, 0xfa

    .line 38
    sput v0, Lcom/android/settingslib/applications/AppIconCacheManager;->ICON_SIZE_LIMIT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settingslib/applications/AppIconCacheManager$1;

    sget v1, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/applications/AppIconCacheManager$1;-><init>(Lcom/android/settingslib/applications/AppIconCacheManager;I)V

    iput-object v0, p0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Landroid/util/LruCache;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;
    .locals 4

    const-class v0, Lcom/android/settingslib/applications/AppIconCacheManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/settingslib/applications/AppIconCacheManager;

    invoke-direct {v1}, Lcom/android/settingslib/applications/AppIconCacheManager;-><init>()V

    sput-object v1, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    const-string v1, "AppIconCacheManager"

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAX_CACHE_SIZE_IN_KB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 69
    sput v1, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    .line 72
    :cond_0
    sget-object v1, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMaxCacheInKb()I
    .locals 2

    .line 153
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static release()V
    .locals 1

    .line 137
    sget-object v0, Lcom/android/settingslib/applications/AppIconCacheManager;->sAppIconCacheManager:Lcom/android/settingslib/applications/AppIconCacheManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, v0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    const/4 v0, 0x0

    .line 140
    sput v0, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 124
    invoke-static {p1, p2}, Lcom/android/settingslib/applications/AppIconCacheManager;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p0, "AppIconCacheManager"

    const-string p1, "Invalid key with package or uid."

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public put(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 83
    invoke-static {p1, p2}, Lcom/android/settingslib/applications/AppIconCacheManager;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppIconCacheManager"

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    .line 84
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ltz v2, :cond_4

    .line 85
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gez v2, :cond_0

    goto/16 :goto_0

    .line 92
    :cond_0
    instance-of v2, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 93
    move-object v2, p3

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    add-int/lit8 v2, v2, 0x1

    .line 94
    sget v3, Lcom/android/settingslib/applications/AppIconCacheManager;->ICON_SIZE_LIMIT:I

    if-le v2, v3, :cond_1

    .line 95
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " BitmapDrawable icon size is over than "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/settingslib/applications/AppIconCacheManager;->ICON_SIZE_LIMIT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_1
    sget v3, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    add-int/2addr v3, v2

    sget v4, Lcom/android/settingslib/applications/AppIconCacheManager;->MAX_CACHE_SIZE_IN_KB:I

    if-le v3, v4, :cond_2

    const-string p0, "Max cache size reached"

    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppIconCacheManager Added : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , uid : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , size : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , h : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " w : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget p1, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    add-int/2addr p1, v2

    sput p1, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "maxSize : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , curSize : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/settingslib/applications/AppIconCacheManager;->mCurCacheSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/applications/AppIconCacheManager;->mDrawableCache:Landroid/util/LruCache;

    invoke-virtual {p0, v0, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 99
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not BitmapDrawable, cache is not support"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    const-string p0, "Invalid key or drawable."

    .line 86
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
