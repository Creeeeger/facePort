.class public Lcom/samsung/android/sdk/sfe/SFText;
.super Ljava/lang/Object;
.source "SFText.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SFText"


# instance fields
.field private blacklist firstInitializedFlag:Z

.field private blacklist hasEffect:Z

.field private blacklist isBoldStyle:Z

.field private blacklist isItalicStyle:Z

.field private blacklist isSetFontFromAsset:Z

.field private blacklist isSetFontFromFile:Z

.field private blacklist mCharSequense:Ljava/lang/CharSequence;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFlipFont:Ljava/lang/String;

.field private blacklist mFontFamily:Ljava/lang/String;

.field private blacklist mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

.field private blacklist mFontPath:Ljava/lang/String;

.field private blacklist mHandle:I

.field private blacklist mHeight:I

.field private blacklist mLayout:Landroid/text/Layout;

.field private blacklist mLines:I

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist mText:Ljava/lang/String;

.field private blacklist mWidth:I

.field private blacklist owner:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    .line 54
    iput v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    .line 55
    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    .line 64
    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    .line 66
    return-void
.end method

.method private native blacklist SFText_AddInnerShadowTextEffect(FFFIF)I
.end method

.method private native blacklist SFText_AddLinearGradientTextEffect(FF[I[F[FF)I
.end method

.method private native blacklist SFText_AddOuterGlowTextEffect(FIF)I
.end method

.method private native blacklist SFText_AddOuterShadowTextEffect(FFFIF)I
.end method

.method private native blacklist SFText_AddStrokeTextEffect(FIFII)I
.end method

.method private native blacklist SFText_ClearAllTextEffect()V
.end method

.method private native blacklist SFText_GetDrawingBitmapSize()[I
.end method

.method private native blacklist SFText_GetEffectBottomOffset()I
.end method

.method private native blacklist SFText_GetEffectLeftOffset()I
.end method

.method private native blacklist SFText_GetEffectRightOffset()I
.end method

.method private native blacklist SFText_GetEffectTopOffset()I
.end method

.method private native blacklist SFText_RenderTextEffect()[I
.end method

.method private native blacklist SFText_SetFont(Ljava/lang/String;)Z
.end method

.method private native blacklist SFText_SetFont2(Ljava/lang/String;[B)Z
.end method

.method private native blacklist SFText_SetFont3(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
.end method

.method private native blacklist SFText_SetFontFamilyName(Ljava/lang/String;)Z
.end method

.method private native blacklist SFText_SetLayout(Landroid/text/Layout;)Z
.end method

.method private native blacklist SFText_SetLine(I)Z
.end method

.method private native blacklist SFText_SetPaint(Landroid/graphics/Paint;)Z
.end method

.method private native blacklist SFText_SetView(Landroid/widget/TextView;)Z
.end method

.method private native blacklist SFText_finalize()V
.end method

.method private blacklist getDrawingBitmapSize()[I
    .locals 1

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetDrawingBitmapSize()[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist getEffectBottomOffset()I
    .locals 1

    .line 506
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectBottomOffset()I

    move-result v0

    return v0
.end method

.method private blacklist getEffectLeftOffset()I
    .locals 1

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectLeftOffset()I

    move-result v0

    return v0
.end method

.method private blacklist getEffectRightOffset()I
    .locals 1

    .line 502
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectRightOffset()I

    move-result v0

    return v0
.end method

.method private blacklist getEffectTopOffset()I
    .locals 1

    .line 498
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectTopOffset()I

    move-result v0

    return v0
.end method

.method private blacklist getFontPath()V
    .locals 6

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    const-string/jumbo v1, "sans-serif"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "fontName":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System not support fontFamily = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' , change to default fontFamily"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SFText"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iget-boolean v5, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    invoke-virtual {v2, v1, v4, v5}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-nez v0, :cond_3

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System not support default fontFamily = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 241
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    .line 242
    const-string v1, "/system/fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    .line 246
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 247
    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFamilyName(Ljava/lang/String;)V

    .line 251
    return-void

    .line 221
    .end local v0    # "fontName":Ljava/lang/String;
    :cond_6
    :goto_0
    return-void
.end method

.method private blacklist init()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->initialize()V

    .line 74
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    return-void

    .line 77
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->getFontManager()Lcom/samsung/android/sdk/sfe/font/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFlipFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    .line 80
    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    .line 83
    :cond_2
    return-void
.end method

.method private blacklist renderTextEffect()[I
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_RenderTextEffect()[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist setSFFontFamilyName(Ljava/lang/String;)V
    .locals 2
    .param p1, "familyName"    # Ljava/lang/String;

    .line 469
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFontFamilyName(Ljava/lang/String;)Z

    move-result v0

    .line 470
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 473
    :cond_0
    return-void
.end method

.method private blacklist setSFFontFile(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "filePath"    # Ljava/lang/String;

    .line 483
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont3(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    .line 484
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 485
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 487
    :cond_0
    return-void
.end method

.method private blacklist setSFFontFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .line 462
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont(Ljava/lang/String;)Z

    move-result v0

    .line 463
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 464
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 466
    :cond_0
    return-void
.end method

.method private blacklist setSFFontFile(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "buf"    # [B

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont2(Ljava/lang/String;[B)Z

    move-result v0

    .line 477
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 478
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 480
    :cond_0
    return-void
.end method

.method private blacklist setSFTextLayout(Landroid/text/Layout;)V
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;

    .line 203
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetLayout(Landroid/text/Layout;)Z

    move-result v0

    .line 204
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 207
    :cond_0
    return-void
.end method

.method private blacklist setSFTextLine(I)V
    .locals 2
    .param p1, "line"    # I

    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetLine(I)Z

    move-result v0

    .line 197
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 200
    :cond_0
    return-void
.end method

.method private blacklist setSFTextPaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 189
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetPaint(Landroid/graphics/Paint;)Z

    move-result v0

    .line 190
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 193
    :cond_0
    return-void
.end method

.method private blacklist setSFTextView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetView(Landroid/widget/TextView;)Z

    move-result v0

    .line 211
    .local v0, "rnt":Z
    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    .line 214
    :cond_0
    return-void
.end method

.method private blacklist throwUncheckedException(I)V
    .locals 0
    .param p1, "errno"    # I

    .line 490
    invoke-static {p1}, Lcom/samsung/android/sdk/sfe/util/SFError;->ThrowUncheckedException(I)V

    .line 491
    return-void
.end method


# virtual methods
.method public blacklist addInnerShadowTextEffect(FFFIF)I
    .locals 2
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .line 311
    const-string v0, "SFText"

    const-string v1, "addInnerShadowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 313
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, -0x1

    return v0

    .line 317
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    .line 318
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public blacklist addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 2
    .param p1, "angle"    # F
    .param p2, "scale"    # F
    .param p3, "colors"    # [I
    .param p4, "alphas"    # [F
    .param p5, "positions"    # [F
    .param p6, "blendingOpacity"    # F

    .line 374
    const-string v0, "SFText"

    const-string v1, "addLinearGradientTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 376
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    const/4 v0, -0x1

    return v0

    .line 380
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    .line 381
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public blacklist addOuterGlowTextEffect(FIF)I
    .locals 2
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .line 351
    const-string v0, "SFText"

    const-string v1, "addOuterGlowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 353
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const/4 v0, -0x1

    return v0

    .line 357
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    .line 358
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public blacklist addOuterShadowTextEffect(FFFIF)I
    .locals 2
    .param p1, "angle"    # F
    .param p2, "offset"    # F
    .param p3, "softness"    # F
    .param p4, "color"    # I
    .param p5, "blendingOpacity"    # F

    .line 289
    const-string v0, "SFText"

    const-string v1, "addOuterShadowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 291
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, -0x1

    return v0

    .line 295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    .line 296
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public blacklist addStrokeTextEffect(FIF)I
    .locals 7
    .param p1, "size"    # F
    .param p2, "color"    # I
    .param p3, "blendingOpacity"    # F

    .line 331
    const-string v0, "SFText"

    const-string v1, "addStrokeTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 333
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, -0x1

    return v0

    .line 337
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    .line 338
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddStrokeTextEffect(FIFII)I

    move-result v0

    return v0
.end method

.method public blacklist clearAllTextEffect()V
    .locals 2

    .line 390
    const-string v0, "SFText"

    const-string v1, "clearAllTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    if-gez v0, :cond_0

    .line 393
    return-void

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 397
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_ClearAllTextEffect()V

    .line 403
    return-void
.end method

.method public whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_finalize()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    .line 91
    return-void
.end method

.method public blacklist hasEffect()Z
    .locals 1

    .line 454
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    return v0

    .line 458
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    return v0
.end method

.method public blacklist render(Landroid/graphics/Canvas;II)Z
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "hoffset"    # I
    .param p3, "voffset"    # I

    .line 123
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Lcom/samsung/android/sdk/sfe/font/FontManager;->isSetConfigFinished()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 124
    return v3

    .line 127
    :cond_0
    const-string v4, "SFText"

    const-string/jumbo v0, "render() - Start!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mWidth:I

    .line 130
    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mHeight:I

    .line 131
    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLayout:Landroid/text/Layout;

    .line 132
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mCharSequense:Ljava/lang/CharSequence;

    .line 133
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mText:Ljava/lang/String;

    .line 134
    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 135
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_1

    .line 136
    iput-boolean v3, v1, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    .line 137
    iput-boolean v3, v1, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v5

    iput-boolean v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    .line 142
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getFontPath()V

    .line 143
    iget-object v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLayout:Landroid/text/Layout;

    if-nez v5, :cond_2

    .line 144
    const-string v5, "Can not render text effect - layout is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v3

    .line 148
    :cond_2
    iget v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->mWidth:I

    if-lez v5, :cond_4

    iget v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->mHeight:I

    if-gtz v5, :cond_3

    goto :goto_1

    .line 153
    :cond_3
    iget-object v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextPaint(Landroid/graphics/Paint;)V

    .line 154
    iget v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    invoke-direct {v1, v5}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextLine(I)V

    .line 155
    iget-object v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-direct {v1, v5}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextView(Landroid/widget/TextView;)V

    .line 156
    iget-object v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLayout:Landroid/text/Layout;

    invoke-direct {v1, v5}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextLayout(Landroid/text/Layout;)V

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->renderTextEffect()[I

    move-result-object v7

    .line 159
    .local v7, "buffer":[I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getDrawingBitmapSize()[I

    move-result-object v5

    .line 161
    .local v5, "nativeSize":[I
    aget v6, v5, v3

    move v14, v6

    .line 162
    .local v14, "renderWidth":I
    const/4 v15, 0x1

    aget v6, v5, v15

    move v13, v6

    .line 164
    .local v13, "renderHeight":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v13, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v12, v6

    .line 165
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, v14

    move-object v3, v12

    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    move v12, v14

    move/from16 v16, v13

    .end local v13    # "renderHeight":I
    .local v16, "renderHeight":I
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getEffectLeftOffset()I

    move-result v6

    .line 170
    .local v6, "offsetx":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getEffectTopOffset()I

    move-result v8

    .line 173
    .local v8, "offsety":I
    sub-int v9, p2, v6

    int-to-float v9, v9

    sub-int v10, p3, v8

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    iget-object v9, v1, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 178
    const-string/jumbo v9, "render() - End."

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v15

    .line 149
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "nativeSize":[I
    .end local v6    # "offsetx":I
    .end local v7    # "buffer":[I
    .end local v8    # "offsety":I
    .end local v14    # "renderWidth":I
    .end local v16    # "renderHeight":I
    :cond_4
    :goto_1
    const-string v3, "Can not render text effect - width and height must be > 0"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v3, 0x0

    return v3

    .line 181
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const-string/jumbo v3, "render() - Fail."

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v3, 0x0

    return v3
.end method

.method public blacklist setFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public blacklist setFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 439
    const-string v0, "SFText"

    const-string/jumbo v1, "setFontFromAsset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 441
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    return-void

    .line 445
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    .line 451
    :cond_1
    return-void
.end method

.method public blacklist setFontFromFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 413
    const-string v0, "SFText"

    const-string/jumbo v1, "setFontFromFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    .line 415
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    return-void

    .line 419
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    .line 425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    .line 428
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public blacklist setLines(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 112
    iput p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    .line 113
    return-void
.end method

.method public blacklist setOwnerView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;

    .line 254
    const-string v0, "SFText"

    const-string/jumbo v1, "setOwnerView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz p1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    goto :goto_0

    .line 258
    :cond_0
    const-string/jumbo v1, "setOwnerView - Textview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void
.end method
