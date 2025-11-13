.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAttribute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-boolean v4, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    if-eqz v4, :cond_2e

    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    iget v0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    iget-boolean v4, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    :goto_0
    if-ge v1, v5, :cond_2d

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2c

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_5

    :cond_2
    iget v8, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    iput v8, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dx:F

    iget v8, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    iput v8, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->dy:F

    const-string v8, "fromDegrees"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_3
    const-string/jumbo v8, "toDegrees"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_4
    const-string v8, "key"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v9, "xFrom"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v9, "xTo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v9, "xOffSet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    goto/16 :goto_5

    :cond_8
    const-string/jumbo v9, "yOffSet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    goto/16 :goto_5

    :cond_a
    const-string v8, "adjust"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v8, "yFrom"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v8, "yTo"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_d
    const-string/jumbo v8, "r"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    mul-float/2addr v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->r:F

    goto/16 :goto_5

    :cond_e
    const-string v8, "a"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->a:F

    goto/16 :goto_5

    :cond_f
    const-string v8, "b"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->b:F

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v8, "ra"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->ra:F

    goto/16 :goto_5

    :cond_11
    const-string/jumbo v8, "rb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->rb:F

    goto/16 :goto_5

    :cond_12
    const-string v8, "fromAlpha"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_13
    const-string/jumbo v8, "toAlpha"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_14
    const-string v8, "fromXDelta"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    if-eqz v4, :cond_15

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    goto :goto_1

    :cond_15
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    add-float/2addr v6, v7

    :goto_1
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_16
    const-string/jumbo v8, "toXDelta"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    if-eqz v4, :cond_17

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    goto :goto_2

    :cond_17
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v6

    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    add-float/2addr v6, v7

    :goto_2
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_18
    const-string v8, "fromYDelta"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    if-eqz v4, :cond_19

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    goto :goto_3

    :cond_19
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    add-float/2addr v6, v7

    :goto_3
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_1a
    const-string/jumbo v8, "toYDelta"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    if-eqz v4, :cond_1b

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    goto :goto_4

    :cond_1b
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v6

    iget v7, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    add-float/2addr v6, v7

    :goto_4
    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_1c
    const-string v8, "fromXScale"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_1d
    const-string/jumbo v8, "toXScale"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_1e
    const-string v8, "fromYScale"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    goto/16 :goto_5

    :cond_1f
    const-string/jumbo v8, "toYScale"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    goto/16 :goto_5

    :cond_20
    const-string v8, "length"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    goto/16 :goto_5

    :cond_21
    const-string v8, "image"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v6, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    const-string v8, "drawable"

    iget-object v9, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    goto/16 :goto_5

    :cond_22
    const-string v8, "duration"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    goto/16 :goto_5

    :cond_23
    const-string/jumbo v8, "repeatCount"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    goto/16 :goto_5

    :cond_24
    const-string/jumbo v8, "repeatMode"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    goto/16 :goto_5

    :cond_25
    const-string v8, "delay"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    goto :goto_5

    :cond_26
    const-string v8, "accelerateInterpolator"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "default"

    if-eqz v8, :cond_28

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_5

    :cond_27
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_5

    :cond_28
    const-string v8, "decelerateInterpolator"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_5

    :cond_29
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_5

    :cond_2a
    const-string v7, "accelerateDecelerateInterpolator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_5

    :cond_2b
    const-string v7, "normalSpeed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    :cond_2c
    :goto_5
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_2d
    iput-object p0, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    goto/16 :goto_8

    :cond_2e
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/xmlparser/AnimationParser;->mAttribute:Ljava/lang/String;

    const-string v3, "ImageResource"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    if-eqz v4, :cond_2f

    iget-object v5, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    iput-object v5, v4, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mApkResources:Landroid/content/res/Resources;

    :cond_2f
    iget-object v4, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-nez v4, :cond_30

    return-void

    :cond_30
    iget-object v5, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "round"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x43b40000    # 360.0f

    if-eqz v6, :cond_31

    iput-object p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    div-float/2addr p0, v10

    mul-float/2addr p0, v9

    float-to-double p0, p0

    mul-double/2addr p0, v7

    double-to-float p0, p0

    iput p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    div-float/2addr p1, v10

    mul-float/2addr p1, v9

    float-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-float p1, v9

    iput p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    new-array v0, v0, [F

    aput p0, v0, v1

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$3;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_7

    :cond_31
    const-string v6, "ellipse"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    iput-object p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    div-float/2addr p0, v10

    mul-float/2addr p0, v9

    float-to-double p0, p0

    mul-double/2addr p0, v7

    double-to-float p0, p0

    iput p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    div-float/2addr p1, v10

    mul-float/2addr p1, v9

    float-to-double v9, p1

    mul-double/2addr v9, v7

    double-to-float p1, v9

    iput p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    new-array v0, v0, [F

    aput p0, v0, v1

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$4;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_7

    :cond_32
    const-string v6, "parabola"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    iput-object p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_33

    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v3, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluator;-><init>(FFF)V

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$5;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_7

    :cond_33
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v3, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$ParabolaEvaluatorReverse;-><init>(FFF)V

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$6;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_7

    :cond_34
    const-string/jumbo v6, "sinX"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    iput-object p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_35

    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v3, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p0, p1, v0, v3, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluator;-><init>(FFFF)V

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$7;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_7

    :cond_35
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v3, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    invoke-direct {p0, p1, v0, v3, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinXEvaluatorReverse;-><init>(FFFF)V

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$8;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_7

    :cond_36
    const-string/jumbo v6, "sinY"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    iput-object p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageView:Landroid/widget/ImageView;

    iget p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_37

    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v3, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    invoke-direct {p0, p1, v0, v3, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluator;-><init>(FFFF)V

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$9;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_7

    :cond_37
    new-instance p0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->key:F

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->adjust:F

    iget v3, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->yOffSet:F

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->xOffSet:F

    invoke-direct {p0, p1, v0, v3, v6}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$SinYEvaluatorReverse;-><init>(FFFF)V

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget v0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;

    invoke-direct {p1, v5}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$10;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_7

    :cond_38
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget p0, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    new-array v0, p0, [I

    new-array v3, p0, [I

    new-array v6, p0, [I

    iput-object v6, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    iget-wide v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    sub-int/2addr p0, v2

    int-to-long v8, p0

    div-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->elementDuration:J

    move p0, v1

    :goto_6
    iget v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->length:I

    if-ge p0, v6, :cond_39

    aput p0, v3, p0

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewId:I

    aput v6, v0, p0

    iget-object v7, p1, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;->mImageSetIds:[I

    aput v6, v7, p0

    add-int/2addr p0, v2

    goto :goto_6

    :cond_39
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;

    invoke-direct {v0, v5, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$1;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;

    invoke-direct {v0, v5, p1}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder$2;-><init>(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;Lcom/android/systemui/wallpaper/theme/view/FrameImageView;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_7

    :cond_3a
    iget v3, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->from:F

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->to:F

    new-array v0, v0, [F

    aput v3, v0, v1

    aput v6, v0, v2

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_7
    iget-wide v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->delay:J

    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-wide v6, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->duration:J

    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatCount:I

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->repeatMode:I

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p1, v5, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, v4, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v2, [Landroid/animation/Animator;

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_8
    return-void
.end method
