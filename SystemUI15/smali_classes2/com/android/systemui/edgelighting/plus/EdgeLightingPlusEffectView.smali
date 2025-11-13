.class public final Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;
.super Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

.field public isLoaded:Z

.field public isUsedAI:Z

.field public isUsedAppIcon:Z

.field public isUsedEffectColor:Z

.field public listener:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

.field public mAppIcon:Landroid/graphics/Bitmap;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isLoaded:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAppIcon:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAI:Z

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedEffectColor:Z

    iput-object p1, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    invoke-direct {v2}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;-><init>()V

    new-instance v3, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    invoke-direct {v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/nexus/particle/emitter/Emitter;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/EmissionRule;Lcom/samsung/android/nexus/particle/emitter/ParticleRule;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 17

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p5}, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->onLayout(ZIIII)V

    iget-boolean v0, v1, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isLoaded:Z

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->listener:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;

    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;

    iget-boolean v0, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mIsUsedAppIconForEdgeLightingPlus:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    iget-object v6, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    :try_start_0
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v7, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEdgeEffectInfo:Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;

    iget-object v7, v7, Lcom/android/systemui/edgelighting/effect/data/EdgeEffectInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v0, v4, v4, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    move-object v7, v5

    :goto_1
    iput-object v7, v6, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mAppIcon:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mParticleView:Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/plus/NotificationELPlusEffect;->mEmitterItemInfo:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;

    invoke-direct {v6, v2}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;-><init>(Landroid/os/Bundle;)V

    iget-object v7, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    move v2, v3

    goto/16 :goto_7

    :cond_2
    const-string v7, "isUsedAppIcon"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAppIcon:Z

    const-string v7, "isUsedAI"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAI:Z

    const-string v7, "isUsedEffectColor"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedEffectColor:Z

    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmissionRule:Lcom/samsung/android/nexus/particle/emitter/EmissionRule;

    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->setShapeType()V

    iget v7, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->cellCount:I

    iget-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->emitterCellCount:Lcom/samsung/android/nexus/base/utils/range/IntRangeable;

    iput v7, v8, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMin:I

    iput v7, v8, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->mMax:I

    invoke-virtual {v8}, Lcom/samsung/android/nexus/base/utils/range/IntRangeable;->onRangeUpdated()V

    iget v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    if-eq v8, v7, :cond_3

    new-array v8, v7, [F

    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanXArray:[F

    new-array v8, v7, [F

    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathTanYArray:[F

    new-array v8, v7, [F

    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetXArray:[F

    new-array v8, v7, [F

    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerOffsetYArray:[F

    new-array v8, v7, [F

    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesX:[F

    new-array v8, v7, [F

    iput-object v8, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pathPointerVelocitiesY:[F

    iput v7, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->pointerSize:I

    :cond_3
    iget v7, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->intervalTime:I

    mul-int/2addr v7, v7

    int-to-long v7, v7

    iget-object v9, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    iput-wide v7, v9, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v7, v9, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {v9}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    iput-object v5, v2, Lcom/samsung/android/nexus/particle/emitter/EmissionRule;->intervalFraction:Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    iget-object v5, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mAppIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    new-instance v7, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;

    invoke-direct {v5, v7}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;-><init>(Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;)V

    new-instance v7, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;

    iget-object v8, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v5}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)V

    goto :goto_2

    :cond_4
    iget-object v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->bitmap:Landroid/graphics/Bitmap;

    new-instance v7, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v5}, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;

    invoke-direct {v5, v7}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader;-><init>(Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$DrawBitmapLoader$BitmapDrawer;)V

    new-instance v7, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;

    iget-object v8, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v5}, Lcom/samsung/android/nexus/particle/emitter/texture/BitmapParticleTexture;-><init>(Landroid/content/Context;Lcom/samsung/android/nexus/particle/emitter/texture/BitmapCache$BitmapLoader;)V

    :goto_2
    iput-object v7, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->particleTexture:Lcom/samsung/android/nexus/particle/emitter/texture/ParticleTexture;

    iget-boolean v5, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAppIcon:Z

    if-nez v5, :cond_6

    iget-boolean v5, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedAI:Z

    if-nez v5, :cond_6

    iget-boolean v5, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isUsedEffectColor:Z

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->color:I

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v4

    :goto_4
    const/16 v7, 0xa

    iput v7, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->colorMode:I

    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->factorRangeableList:Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;

    invoke-virtual {v9, v7, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v8, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    invoke-virtual {v9, v7}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v11}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v7}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v11}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    const/4 v7, 0x3

    new-array v7, v7, [F

    invoke-static {v5, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    aget v4, v7, v4

    invoke-virtual {v9, v5, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    aget v8, v7, v3

    invoke-virtual {v9, v4, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    const/4 v10, 0x2

    aget v7, v7, v10

    invoke-virtual {v9, v8, v7}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    invoke-virtual {v9, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setSpeed(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v4}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    invoke-virtual {v9, v8}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setAcceleration(Lcom/samsung/android/nexus/particle/emitter/FactorType;)V

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->width:F

    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget-object v5, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->mAppIcon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->width:F

    goto :goto_5

    :cond_7
    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->height:F

    :goto_5
    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/FactorRangeableList;->setValue(Lcom/samsung/android/nexus/particle/emitter/FactorType;F)V

    iget v4, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->lifeTime:I

    int-to-long v4, v4

    iget-object v7, v2, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->lifeTime:Lcom/samsung/android/nexus/base/utils/range/LongRangeable;

    iput-wide v4, v7, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMin:J

    iput-wide v4, v7, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->mMax:J

    invoke-virtual {v7}, Lcom/samsung/android/nexus/base/utils/range/LongRangeable;->onRangeUpdated()V

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    new-instance v5, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    new-instance v8, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const v9, 0x3ca3d70a    # 0.02f

    const v10, 0x3dcccccd    # 0.1f

    invoke-direct {v8, v9, v10}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    new-instance v9, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const v10, 0x3f19999a    # 0.6f

    const v11, 0x3f333333    # 0.7f

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    new-instance v12, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    filled-new-array {v5, v8, v9, v12}, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    move-result-object v5

    new-instance v8, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v8, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    new-instance v9, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    iget v12, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->alpha:F

    const v14, 0x3f666666    # 0.9f

    mul-float/2addr v14, v12

    mul-float/2addr v13, v12

    invoke-direct {v9, v14, v13}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    new-instance v13, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    mul-float/2addr v10, v12

    mul-float/2addr v12, v11

    invoke-direct {v13, v10, v12}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(FF)V

    new-instance v10, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    invoke-direct {v10, v7}, Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;-><init>(F)V

    filled-new-array {v8, v9, v13, v10}, [Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v7}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setKeyFrameListRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;[Lcom/samsung/android/nexus/base/utils/range/FloatRangeable;)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    sget-object v4, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget-object v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->valueRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;

    iget v7, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->minRotation:F

    iget v8, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->maxRotation:F

    invoke-virtual {v2, v4, v7, v8}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget-object v8, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    iget v9, v8, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    iget-object v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    iget v11, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    invoke-virtual {v2, v7, v9, v11}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v8, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    mul-float/2addr v12, v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v13, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    mul-float/2addr v13, v11

    invoke-virtual {v2, v9, v12, v13}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v8, v8, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    mul-float/2addr v8, v12

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v10, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    mul-float/2addr v10, v12

    invoke-virtual {v2, v11, v8, v10}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget-object v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    iget v12, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    iget-object v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$ValueRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    iget v13, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    invoke-virtual {v2, v8, v12, v13}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    sget-object v12, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v13, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    invoke-virtual {v2, v12, v13, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    iget v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    invoke-virtual {v2, v13, v10, v5}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setValueRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    iget-object v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->speedRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;

    iget v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minRotation:F

    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxRotation:F

    invoke-virtual {v2, v4, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget-object v10, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    iget v14, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    iget-object v15, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    iget v3, v15, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    invoke-virtual {v2, v7, v14, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v3, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v14, v3

    iget v3, v15, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v16

    mul-float v3, v3, v16

    invoke-virtual {v2, v9, v14, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v3, v10, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v3

    iget v3, v15, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v14, v3

    invoke-virtual {v2, v11, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget-object v3, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    iget v10, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    iget-object v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    invoke-virtual {v2, v8, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v10, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    iget v14, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    invoke-virtual {v2, v12, v10, v14}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v3, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    iget v5, v5, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    invoke-virtual {v2, v13, v3, v5}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setSpeedRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v2, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mParticleRule:Lcom/samsung/android/nexus/particle/emitter/ParticleRule;

    iget-object v3, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;->accelerationRange:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;

    iget v5, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->minRotation:F

    iget v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->maxRotation:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget-object v4, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    iget-object v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    iget v10, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->value:F

    invoke-virtual {v2, v7, v5, v10}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    iget v7, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->x:F

    invoke-virtual {v2, v9, v5, v7}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v4, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    iget v5, v6, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;->y:F

    invoke-virtual {v2, v11, v4, v5}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget-object v4, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    iget-object v3, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$AccelerationRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    iget v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->value:F

    invoke-virtual {v2, v8, v5, v6}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v5, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    iget v6, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->x:F

    invoke-virtual {v2, v12, v5, v6}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget v4, v4, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    iget v3, v3, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;->y:F

    invoke-virtual {v2, v13, v4, v3}, Lcom/samsung/android/nexus/particle/emitter/ParticleRule;->setAccelerationRange(Lcom/samsung/android/nexus/particle/emitter/FactorType;FF)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->emitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/view/ParticleEmitterView;->mEmitterParticleLayer:Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/layer/EmitterParticleLayer;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    iget-object v0, v0, Lcom/samsung/android/nexus/particle/emitter/World;->mRootEmitter:Lcom/samsung/android/nexus/particle/emitter/Emitter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_a

    iget-boolean v3, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->isSubEmitter:Z

    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    iput-object v3, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mWorld:Lcom/samsung/android/nexus/particle/emitter/World;

    iget-object v4, v2, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/samsung/android/nexus/particle/emitter/Emitter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/nexus/particle/emitter/World;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v3, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->mEmitters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_6
    if-ltz v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/nexus/particle/emitter/Emitter;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/nexus/particle/emitter/Emitter;->subEmitterKey:Ljava/lang/String;

    const/4 v2, 0x1

    :goto_7
    iput-boolean v2, v1, Lcom/android/systemui/edgelighting/plus/EdgeLightingPlusEffectView;->isLoaded:Z

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "don\'t reuse emitter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null emitter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "layer not initiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_8
    return-void
.end method
