.class public Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final PREFIX_FIRST_FILE:Ljava/lang/String; = "wallpaper_0"

.field private static final TAG:Ljava/lang/String; = "PluginHomeWallpaper"

.field private static sScreenType:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWallpaperDataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static setScreenTypeChanged(I)V
    .locals 2

    const-string/jumbo v0, "setScreenTypeChanged() type: "

    const-string v1, "PluginHomeWallpaper"

    invoke-static {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    return-void
.end method


# virtual methods
.method public clearWallpaper()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->resetAll()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->resetAll()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public getCallback()Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    return-object p0
.end method

.method public getCurrentScreen()I
    .locals 0

    sget p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    return p0
.end method

.method public getIntelligentCrops(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getIntelligentCrops()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey(I)I
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v0, 0x20

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method public getWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getIntelligentCrops(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getWallpaperBitmap() path:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", hasICrops = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PluginHomeWallpaper"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    xor-int/2addr p1, v5

    if-ne v0, v5, :cond_1

    move v4, v5

    :cond_1
    invoke-static {p0, v1, p1, v4}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromPath(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mContext:Landroid/content/Context;

    xor-int/2addr p1, v5

    if-ne v0, v5, :cond_3

    move v4, v5

    :cond_3
    invoke-static {p0, v3, p1, v4}, Lcom/android/systemui/pluginlock/utils/BitmapUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    const-string p0, "getWallpaperBitmap() no available data"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2
.end method

.method public getWallpaperPath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperRect(I)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getType()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getWallpaperType: WallpaperData is null for screen ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginHomeWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method public resetWallpaper(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->resetAll()V

    const-string p1, "PluginHomeWallpaper"

    const-string/jumbo v0, "resetWallpaper()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setWallpaper(IIILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaper(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWallpaper(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "setWallpaper() wallpaperType:"

    const-string v1, ", sourceType:"

    const-string v2, ", source:"

    invoke-static {p2, p3, v0, v1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screen:"

    const-string v2, ", iCrops = "

    invoke-static {v0, p4, v1, p1, v2}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "PluginHomeWallpaper"

    invoke-static {v0, p5, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    invoke-direct {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;-><init>(I)V

    iget-object v3, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->hasData()Z

    move-result p1

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setType(I)V

    invoke-virtual {v0, p5}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setIntelligentCrops(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    const-string/jumbo p0, "setWallpaper() unsupported type!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setUri(Landroid/net/Uri;)V

    move p2, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p4}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setPath(Ljava/lang/String;)V

    const-string/jumbo p2, "wallpaper_0"

    invoke-virtual {p4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "setWallpaper() mWallpaperUpdateCallback:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-interface {p0, v2}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperUpdate(Z)V

    :cond_4
    return-void
.end method

.method public setWallpaperHints(Landroid/app/SemWallpaperColors;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    sget v1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->setHints(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    return-void
.end method

.method public updateHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->sScreenType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result v0

    const-string/jumbo v1, "updateHint() onWallpaperHintUpdate will be called: "

    const-string v2, "PluginHomeWallpaper"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperDataList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper$WallpaperData;->getHints()Landroid/app/SemWallpaperColors;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method
