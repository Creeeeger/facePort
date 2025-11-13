.class Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHints:Landroid/app/SemWallpaperColors;

.field private mIntelligentCrop:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResourceId:I

.field private mType:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mIntelligentCrop:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getHints()Landroid/app/SemWallpaperColors;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-object p0
.end method

.method public getIntelligentCrop()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mIntelligentCrop:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    return p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hasData()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetAll()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return-void
.end method

.method public resetData()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return-void
.end method

.method public resetType()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->setBitmap(Landroid/graphics/Bitmap;)V

    iput p2, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mResourceId:I

    return-void
.end method

.method public setHints(Landroid/app/SemWallpaperColors;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mHints:Landroid/app/SemWallpaperColors;

    return-void
.end method

.method public setIntelligentCrop(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mIntelligentCrop:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mType:I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper$PluginLockWallpaperData;->mUri:Landroid/net/Uri;

    return-void
.end method
