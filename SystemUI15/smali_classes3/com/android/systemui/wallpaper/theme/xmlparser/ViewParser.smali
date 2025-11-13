.class public final Lcom/android/systemui/wallpaper/theme/xmlparser/ViewParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 18

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mXpp:Lorg/xmlpull/v1/XmlPullParser;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v2, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsStartTag:Z

    if-eqz v2, :cond_15

    new-instance v2, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    iget-object v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/wallpaper/theme/view/FrameImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    iget-boolean v4, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    const/4 v5, 0x3

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "parseAttribute: ["

    const-string v8, " , "

    const-string v9, "] , ["

    invoke-static {v7, v5, v8, v6, v9}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ViewParser"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iget v7, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageWidth:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v7

    const/4 v10, 0x0

    if-gez v5, :cond_2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iget v6, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPackageHeight:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v10

    :goto_0
    const-string v6, "parseAttribute: isWallpaperView : "

    invoke-static {v6, v8, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v5, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    :goto_1
    if-ge v10, v3, :cond_18

    invoke-interface {v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    :goto_2
    move-object/from16 v16, v1

    move/from16 v17, v3

    goto/16 :goto_8

    :cond_4
    const-string v11, ""

    const-string v12, "=\""

    const-string v13, "\" "

    invoke-static {v11, v6, v12, v7, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "img"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v6, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mApkResources:Landroid/content/res/Resources;

    const-string v11, "drawable"

    iget-object v12, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    if-nez v4, :cond_7

    if-eqz v5, :cond_7

    iget v12, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceWidth:F

    iget v13, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceDensity:F

    mul-float/2addr v12, v13

    iget v14, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mDeviceHeight:F

    mul-float/2addr v14, v13

    int-to-float v13, v7

    mul-float v15, v13, v14

    int-to-float v9, v11

    mul-float v16, v12, v9

    cmpl-float v15, v15, v16

    if-lez v15, :cond_6

    div-float v15, v14, v9

    goto :goto_3

    :cond_6
    div-float v15, v12, v13

    :goto_3
    mul-float/2addr v13, v15

    sub-float v13, v12, v13

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v13, v13, v16

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v9, v15

    sub-float v9, v14, v9

    mul-float v9, v9, v16

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    iput v15, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledRatio:F

    iput v13, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    iput v9, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    move-object/from16 v16, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsScaled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v17, v3

    const-string v3, "drawableWidth = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "drawableHeight = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "viewWidth = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "viewHeight = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scaledRatio = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scaledDx = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scaledDy = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move-object/from16 v16, v1

    move/from16 v17, v3

    :goto_4
    if-eqz v5, :cond_8

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_5

    :cond_8
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_5
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    :cond_9
    move-object/from16 v16, v1

    move/from16 v17, v3

    const-string/jumbo v1, "x"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setX(F)V

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v1, "y"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_8

    :cond_b
    const-string/jumbo v1, "width"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    goto/16 :goto_8

    :cond_c
    const-string v1, "height"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    goto/16 :goto_8

    :cond_d
    const-string v1, "pivotX"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v5, :cond_e

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDx:F

    add-float/2addr v1, v3

    goto :goto_6

    :cond_e
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    goto :goto_8

    :cond_f
    const-string v1, "pivotY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v5, :cond_10

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mScaledDy:F

    add-float/2addr v1, v3

    goto :goto_7

    :cond_10
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    goto :goto_8

    :cond_11
    const-string v1, "alpha"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_8

    :cond_12
    const-string/jumbo v1, "scaleX"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelX(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_8

    :cond_13
    const-string/jumbo v1, "scaleY"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getDevicePixelY(F)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_14
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v16

    move/from16 v3, v17

    goto/16 :goto_1

    :cond_15
    iget-object v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mRootView:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mFrameImageView:Lcom/android/systemui/wallpaper/theme/view/FrameImageView;

    if-eqz v2, :cond_18

    if-nez v1, :cond_16

    goto :goto_9

    :cond_16
    iget-boolean v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mIsWallpaper:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    iput v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    :cond_17
    iget v3, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    iget v4, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    const/4 v1, -0x2

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewWidth:I

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->mImageViewHeight:I

    :cond_18
    :goto_9
    return-void
.end method
