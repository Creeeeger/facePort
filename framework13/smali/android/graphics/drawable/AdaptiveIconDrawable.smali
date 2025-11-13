.class public Landroid/graphics/drawable/AdaptiveIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdaptiveIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;,
        Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    }
.end annotation


# static fields
.field private static final greylist-max-o BACKGROUND_ID:I = 0x0

.field private static final greylist-max-o DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final greylist-max-o EXTRA_INSET_PERCENTAGE:F = 0.25f

.field private static final greylist-max-o FOREGROUND_ID:I = 0x1

.field public static final blacklist MASK_SIZE:F = 100.0f

.field private static final blacklist MONOCHROME_ID:I = 0x2

.field private static final greylist-max-o SAFEZONE_SCALE:F = 0.9166667f

.field private static greylist-max-o sMask:Landroid/graphics/Path;


# instance fields
.field private final greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mChildRequestedInvalidation:Z

.field private greylist-max-o mHotspotBounds:Landroid/graphics/Rect;

.field greylist-max-o mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

.field private greylist-max-o mLayersBitmap:Landroid/graphics/Bitmap;

.field private greylist-max-o mLayersShader:Landroid/graphics/Shader;

.field private final greylist-max-o mMask:Landroid/graphics/Path;

.field private final greylist-max-o mMaskMatrix:Landroid/graphics/Matrix;

.field private final blacklist mMaskScaleOnly:Landroid/graphics/Path;

.field private greylist-max-o mMutated:Z

.field private blacklist mNightModeLayer:Z

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mSuspendChildInvalidation:Z

.field private final greylist-max-o mTmpOutRect:Landroid/graphics/Rect;

.field private final greylist-max-o mTransparentRegion:Landroid/graphics/Region;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 2

    .line 157
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 158
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 164
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mNightModeLayer:Z

    .line 165
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 168
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    nop

    .line 173
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x104035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    sput-object v1, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    .line 174
    new-instance v1, Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    .line 175
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    .line 176
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 177
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 178
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    .line 179
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foregroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 203
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "foregroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "monochromeDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 214
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 218
    :cond_0
    if-eqz p2, :cond_1

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 221
    :cond_1
    if-eqz p3, :cond_2

    .line 222
    const/4 v0, 0x2

    invoke-direct {p0, p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 224
    :cond_2
    return-void
.end method

.method private greylist-max-o addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "layer"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 233
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aput-object p2, v0, p1

    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->invalidateCache()V

    .line 235
    return-void
.end method

.method private greylist-max-o createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 182
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    .line 183
    .local v0, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iput-object p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 185
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 187
    return-object v0
.end method

.method public static whitelist getExtraInsetFraction()F
    .locals 1

    .line 271
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public static greylist-max-o getExtraInsetPercentage()F
    .locals 1

    .line 278
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method private greylist-max-o getMaxIntrinsicHeight()I
    .locals 4

    .line 882
    const/4 v0, -0x1

    .line 883
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 884
    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v2, v2, v1

    .line 885
    .local v2, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 886
    goto :goto_1

    .line 888
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 889
    .local v3, "h":I
    if-le v3, v0, :cond_1

    .line 890
    move v0, v3

    .line 883
    .end local v2    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v3    # "h":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 893
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private greylist-max-o getMaxIntrinsicWidth()I
    .locals 4

    .line 862
    const/4 v0, -0x1

    .line 863
    .local v0, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 864
    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v2, v2, v1

    .line 865
    .local v2, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 866
    goto :goto_1

    .line 868
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 869
    .local v3, "w":I
    if-le v3, v0, :cond_1

    .line 870
    move v0, v3

    .line 863
    .end local v2    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v3    # "w":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private greylist-max-o inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 505
    .local v4, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 508
    .local v5, "innerDepth":I
    const/4 v7, 0x0

    .line 509
    .local v7, "childIndex":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    if-eq v8, v6, :cond_8

    .line 510
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    move v10, v8

    .local v10, "depth":I
    if-ge v8, v5, :cond_1

    const/4 v8, 0x3

    if-eq v9, v8, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p2

    goto/16 :goto_6

    .line 511
    :cond_1
    :goto_1
    const/4 v8, 0x2

    if-eq v9, v8, :cond_2

    .line 512
    move-object/from16 v14, p2

    goto :goto_0

    .line 515
    :cond_2
    if-le v10, v5, :cond_3

    .line 516
    move-object/from16 v14, p2

    goto :goto_0

    .line 518
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 519
    .local v11, "tagName":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_4
    goto :goto_2

    :sswitch_0
    const-string v13, "foreground"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v12, v6

    goto :goto_2

    :sswitch_1
    const-string v13, "background"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x0

    goto :goto_2

    :sswitch_2
    const-string/jumbo v13, "monochrome"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v12, v8

    :goto_2
    packed-switch v12, :pswitch_data_0

    .line 530
    move-object/from16 v14, p2

    goto :goto_0

    .line 527
    :pswitch_0
    const/4 v7, 0x2

    .line 528
    goto :goto_3

    .line 524
    :pswitch_1
    const/4 v7, 0x1

    .line 525
    goto :goto_3

    .line 521
    :pswitch_2
    const/4 v7, 0x0

    .line 522
    nop

    .line 533
    :goto_3
    new-instance v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v13, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    .line 534
    .local v12, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    sget-object v13, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-static {v1, v3, v2, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 536
    .local v13, "a":Landroid/content/res/TypedArray;
    invoke-direct {v0, v12, v13}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 537
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 543
    iget-object v14, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_7

    iget-object v14, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v14, :cond_7

    .line 544
    :goto_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v9, v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_5

    goto :goto_4

    .line 546
    :cond_5
    if-ne v9, v8, :cond_6

    .line 553
    iget-object v8, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v8, v8, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    move-object/from16 v14, p2

    invoke-static {v1, v14, v2, v8, v3}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 555
    iget-object v8, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 556
    iget v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v15, v12, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 557
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v15

    or-int/2addr v8, v15

    iput v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    goto :goto_5

    .line 547
    :cond_6
    move-object/from16 v14, p2

    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, ": <foreground> or <background> tag requires a \'drawable\'attribute or child tag defining a drawable"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 543
    :cond_7
    move-object/from16 v14, p2

    .line 559
    :goto_5
    invoke-direct {v0, v7, v12}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    .line 560
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v13    # "a":Landroid/content/res/TypedArray;
    goto/16 :goto_0

    .line 509
    .end local v10    # "depth":I
    :cond_8
    move-object/from16 v14, p2

    .line 561
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x719ae8e3 -> :sswitch_2
        -0x4f67aad2 -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o resumeChildInvalidation()V
    .locals 2

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    .line 632
    iget-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    if-eqz v1, :cond_0

    .line 633
    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    .line 634
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    .line 636
    :cond_0
    return-void
.end method

.method private greylist-max-o suspendChildInvalidation()V
    .locals 1

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    .line 621
    return-void
.end method

.method private greylist-max-o updateLayerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 335
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    return-void

    .line 339
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->suspendChildInvalidation()V

    .line 340
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V

    .line 341
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    .line 344
    nop

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    .line 344
    throw v0
.end method

.method private greylist-max-o updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 351
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 352
    .local v0, "cX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 354
    .local v1, "cY":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 355
    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v4, v4, v2

    .line 356
    .local v4, "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_0

    .line 358
    goto :goto_1

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3faaaaab

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 362
    .local v6, "insetWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    float-to-int v7, v8

    .line 363
    .local v7, "insetHeight":I
    iget-object v8, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    .line 364
    .local v8, "outRect":Landroid/graphics/Rect;
    sub-int v9, v0, v6

    sub-int v10, v1, v7

    add-int v11, v0, v6

    add-int v12, v1, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 354
    .end local v4    # "r":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "insetWidth":I
    .end local v7    # "insetHeight":I
    .end local v8    # "outRect":Landroid/graphics/Rect;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    return-void
.end method

.method private greylist-max-o updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "layer"    # Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 564
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 567
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    iget v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 570
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 572
    iget v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 574
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 575
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 580
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 584
    :cond_0
    iput-object v1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 586
    iget v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 587
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 589
    :cond_1
    return-void
.end method

.method private greylist-max-o updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Rect;

    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 373
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 375
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 376
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 378
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    .line 383
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 384
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 385
    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 386
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 454
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 456
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 457
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_0

    .line 458
    return-void

    .line 461
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 462
    .local v1, "density":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    .line 464
    iget-object v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 465
    .local v2, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    .line 466
    aget-object v4, v2, v3

    .line 467
    .local v4, "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    .line 469
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v5, :cond_1

    .line 470
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v6, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 472
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    .line 473
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 476
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 477
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 478
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 481
    iget v6, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 465
    .end local v4    # "layer":Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 593
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .locals 3

    .line 924
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 925
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 926
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 927
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 928
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 929
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 926
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 932
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    .line 933
    return-void
.end method

.method greylist-max-o createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 191
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 390
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    if-nez v1, :cond_4

    .line 394
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 395
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 396
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 399
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 403
    :cond_2
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mNightModeLayer:Z

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/app/SemAppIconSolution;->PAINT_FOR_NIGHT_LAYER:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 407
    :cond_3
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 408
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 410
    :cond_4
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    if-eqz v0, :cond_5

    .line 411
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 412
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 413
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 414
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 416
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_5
    return-void
.end method

.method public whitelist getAlpha()I
    .locals 1

    .line 732
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public whitelist getBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 311
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 659
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 898
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    .line 900
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    return-object v0

    .line 902
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 300
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 692
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 695
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    .line 697
    :goto_0
    return-void
.end method

.method public whitelist getIconMask()Landroid/graphics/Path;
    .locals 1

    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 2

    .line 878
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 2

    .line 858
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getMonochrome()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 323
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 776
    const/4 v0, -0x3

    return v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 426
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 427
    return-void
.end method

.method public blacklist getSafeZone()Landroid/graphics/Region;
    .locals 4

    .line 432
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 433
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f6aaaab

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 434
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 435
    .local v0, "p":Landroid/graphics/Path;
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 436
    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 437
    .local v1, "safezoneRegion":Landroid/graphics/Region;
    invoke-virtual {v1, v0, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 438
    return-object v1
.end method

.method public blacklist getSourceDrawableResId()I
    .locals 2

    .line 493
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 494
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    :goto_0
    return v1
.end method

.method public whitelist getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .line 443
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 445
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 446
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 447
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 449
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    .line 815
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 243
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 244
    .local v0, "state":Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    if-nez v0, :cond_0

    .line 245
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    .line 251
    .local v1, "deviceDensity":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    .line 252
    iget v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSrcDensityOverride:I

    iput v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    .line 253
    invoke-static {p3}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v2

    iput v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSourceDrawableId:I

    .line 255
    iget-object v2, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 256
    .local v2, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 257
    aget-object v4, v2, v3

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 261
    return-void
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 640
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    .line 645
    :goto_0
    return-void
.end method

.method public whitelist invalidateSelf()V
    .locals 1

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    .line 421
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 422
    return-void
.end method

.method public whitelist isAutoMirrored()Z
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->-$$Nest$fgetmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProjected()Z
    .locals 4

    .line 601
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 602
    return v1

    .line 605
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 606
    .local v0, "layers":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 607
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 608
    return v1

    .line 606
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 810
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist jumpToCurrentState()V
    .locals 3

    .line 799
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 800
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 801
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 802
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 803
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 800
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 907
    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    if-nez v0, :cond_2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 908
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 909
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 910
    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 911
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 909
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    .line 917
    :cond_2
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 332
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .locals 5
    .param p1, "level"    # I

    .line 839
    const/4 v0, 0x0

    .line 841
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 842
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 843
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 844
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 845
    const/4 v0, 0x1

    .line 842
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 849
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 853
    :cond_2
    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 5
    .param p1, "state"    # [I

    .line 820
    const/4 v0, 0x0

    .line 822
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 823
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 824
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 825
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 826
    const/4 v0, 0x1

    .line 823
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 830
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 831
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    .line 834
    :cond_2
    return v0
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 649
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 650
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 727
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 728
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .locals 3
    .param p1, "mirrored"    # Z

    .line 781
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->-$$Nest$fputmAutoMirrored(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)V

    .line 783
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 784
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 785
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 786
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 787
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 784
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 737
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 738
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 739
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 740
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 741
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 738
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setDither(Z)V
    .locals 3
    .param p1, "dither"    # Z

    .line 716
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 717
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 718
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 719
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 720
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 717
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setHotspot(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 664
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 665
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 666
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 667
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 668
    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 665
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setHotspotBounds(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 675
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 676
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 677
    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 678
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 676
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 684
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 686
    :cond_2
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    :goto_1
    return-void
.end method

.method public blacklist setNightModeLayer(Z)V
    .locals 0
    .param p1, "nightMode"    # Z

    .line 938
    iput-boolean p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mNightModeLayer:Z

    .line 939
    return-void
.end method

.method public whitelist setOpacity(I)V
    .locals 1
    .param p1, "opacity"    # I

    .line 771
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    .line 772
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 4
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 760
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 761
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x3

    .line 762
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 763
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 764
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 765
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 762
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 748
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 749
    .local v0, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v1, 0x3

    .line 750
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 751
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 752
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 753
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 750
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist setVisible(ZZ)Z
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 701
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 702
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    .line 704
    .local v1, "array":[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 705
    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 706
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 707
    invoke-virtual {v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 704
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 654
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method
