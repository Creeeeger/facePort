.class public Landroid/service/wallpaper/EngineWindowPage;
.super Ljava/lang/Object;
.source "EngineWindowPage.java"


# instance fields
.field private blacklist mCallbackAreas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mLastUpdateTime:J

.field private blacklist mRectFColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/RectF;",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenShot:Landroid/graphics/Bitmap;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mLastUpdateTime:J

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist addArea(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addWallpaperColors(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist getAreas()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mScreenShot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mScreenShot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mScreenShot:Landroid/graphics/Bitmap;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getColors(Landroid/graphics/RectF;)Landroid/app/WallpaperColors;
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public blacklist getLastUpdateTime()J
    .locals 2

    iget-wide v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mLastUpdateTime:J

    return-wide v0
.end method

.method public blacklist removeArea(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mCallbackAreas:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist removeColor(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Landroid/service/wallpaper/EngineWindowPage;->mRectFColors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Landroid/service/wallpaper/EngineWindowPage;->mScreenShot:Landroid/graphics/Bitmap;

    return-void
.end method

.method public blacklist setLastUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/service/wallpaper/EngineWindowPage;->mLastUpdateTime:J

    return-void
.end method
