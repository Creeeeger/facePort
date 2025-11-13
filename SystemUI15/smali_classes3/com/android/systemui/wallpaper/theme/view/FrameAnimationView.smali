.class public final Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;
.super Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;-><init>(Landroid/content/Context;Landroid/content/res/Resources;I)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    new-instance v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {p1, v2}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/systemui/wallpaper/theme/particle/Sprite;-><init>(FFFF)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput v2, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->frameSize:I

    iput v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mScale:F

    iput-object v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->width:F

    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->height:F

    new-instance v1, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;-><init>()V

    invoke-virtual {p9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/wallpaper/theme/particle/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    iget v2, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifierCount:I

    iget-object v3, v0, Lcom/android/systemui/wallpaper/theme/particle/Sprite;->mModifiers:[Lcom/android/systemui/wallpaper/theme/SpriteModifier;

    aput-object v1, v3, v2

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method
