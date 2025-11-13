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

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mFlipFont:Ljava/lang/String;

.field private blacklist mFontFamily:Ljava/lang/String;

.field private blacklist mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

.field private blacklist mHandle:I

.field private blacklist mLines:I

.field private blacklist mPaint:Landroid/graphics/Paint;

.field private blacklist owner:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    iput v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

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

.method private native blacklist SFText_GetEffectLeftOffset()I
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

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetDrawingBitmapSize()[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist getEffectLeftOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectLeftOffset()I

    move-result v0

    return v0
.end method

.method private blacklist getEffectTopOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectTopOffset()I

    move-result v0

    return v0
.end method

.method private blacklist getFontPath()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    const-string v1, "sans-serif"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

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

    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iget-boolean v5, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

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

    return-void

    :cond_3
    move-object v1, v0

    const-string v2, "/system/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    :cond_5
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFamilyName(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method private blacklist init()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->initialize()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->getFontManager()Lcom/samsung/android/sdk/sfe/font/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFlipFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    :cond_2
    return-void
.end method

.method private blacklist renderTextEffect()[I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_RenderTextEffect()[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist setSFFontFamilyName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFontFamilyName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private blacklist setSFFontFile(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont3(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private blacklist setSFFontFile(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private blacklist setSFTextLayout(Landroid/text/Layout;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetLayout(Landroid/text/Layout;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private blacklist setSFTextLine(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetLine(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private blacklist setSFTextPaint(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetPaint(Landroid/graphics/Paint;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private blacklist setSFTextView(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetView(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private blacklist throwUncheckedException(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/sfe/util/SFError;->ThrowUncheckedException(I)V

    return-void
.end method


# virtual methods
.method public blacklist addInnerShadowTextEffect(FFFIF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addInnerShadowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public blacklist addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addLinearGradientTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public blacklist addOuterGlowTextEffect(FIF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addOuterGlowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public blacklist addOuterShadowTextEffect(FFFIF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addOuterShadowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public blacklist addStrokeTextEffect(FIF)I
    .locals 7

    const-string v0, "SFText"

    const-string v1, "addStrokeTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

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

    const-string v0, "SFText"

    const-string v1, "clearAllTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_ClearAllTextEffect()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    return-void
.end method

.method public blacklist hasEffect()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    return v0
.end method

.method public blacklist render(Landroid/graphics/Canvas;II)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Lcom/samsung/android/sdk/sfe/font/FontManager;->isSetConfigFinished()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const-string v0, "render() - Start!"

    const-string v4, "SFText"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iget-object v5, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    iget-object v6, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    if-nez v7, :cond_1

    iput-boolean v3, v1, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iput-boolean v3, v1, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Typeface;->isBold()Z

    move-result v8

    iput-boolean v8, v1, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    invoke-virtual {v7}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v8

    iput-boolean v8, v1, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getFontPath()V

    if-nez v6, :cond_2

    const-string v8, "Can not render text effect - layout is null"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    if-lez v0, :cond_4

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v8, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextPaint(Landroid/graphics/Paint;)V

    iget v8, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextLine(I)V

    iget-object v8, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-direct {v1, v8}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextView(Landroid/widget/TextView;)V

    invoke-direct {v1, v6}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextLayout(Landroid/text/Layout;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->renderTextEffect()[I

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getDrawingBitmapSize()[I

    move-result-object v8

    aget v9, v8, v3

    move v15, v9

    const/16 v17, 0x1

    aget v9, v8, v17

    move v14, v9

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v15, v14, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v13, v9

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    move v12, v15

    move-object v3, v13

    move/from16 v13, v16

    move/from16 v19, v14

    move/from16 v14, v18

    move/from16 v18, v15

    move/from16 v16, v19

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getEffectLeftOffset()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getEffectTopOffset()I

    move-result v11

    sub-int v12, p2, v9

    int-to-float v12, v12

    sub-int v13, p3, v11

    int-to-float v13, v13

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v1, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v13, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const-string v12, "render() - End."

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :cond_4
    :goto_1
    const-string v3, "Can not render text effect - width and height must be > 0"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "render() - Fail."

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method public blacklist setFontFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    return-void
.end method

.method public blacklist setFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SFText"

    const-string v1, "setFontFromAsset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    :cond_1
    return-void
.end method

.method public blacklist setFontFromFile(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SFText"

    const-string v1, "setFontFromFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    :cond_1
    return-void
.end method

.method public blacklist setLines(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    return-void
.end method

.method public blacklist setOwnerView(Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "setOwnerView"

    const-string v1, "SFText"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const-string v0, "setOwnerView - Textview is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
