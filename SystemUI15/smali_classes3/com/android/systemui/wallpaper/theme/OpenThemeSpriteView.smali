.class public Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;
.super Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mBackgroundBitmap:Landroid/graphics/Bitmap;

.field public final mSprites:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    const-string p1, "OpenThemeSurfaceView"

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    const-string p1, "OpenThemeSurfaceView"

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-static {p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p2, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "bg: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final drawFrame(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    const/4 v3, 0x0

    :goto_1
    iget v4, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    aget-object v4, v4, v3

    invoke-virtual {v4, v0}, Lcom/android/systemui/wallpaper/theme/SpriteModifier;->onUpdate(Lcom/android/systemui/wallpaper/theme/particle/Sprite;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-boolean v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->visible:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->x:F

    iget v4, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mScale:F

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    iget v4, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->currentFrame:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    mul-float/2addr v4, v0

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    iget-object v3, v2, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, v2, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    const-string v0, "ondetach2"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
