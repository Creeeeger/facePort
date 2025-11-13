.class Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;
.super Ljava/lang/Object;
.source "AndroidPaintContext.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mTileModes:[Landroid/graphics/Shader$TileMode;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public blacklist clear(J)V
    .locals 0

    return-void
.end method

.method public blacklist setAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public blacklist setBlendMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->origamiToBlendMode(I)Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public blacklist setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public blacklist setColorFilter(II)V
    .locals 3

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$smorigamiToPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public blacklist setImageFilterQuality(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " quality ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setLinearGradient([I[FFFFFI)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object v9, v2, p7

    move-object v2, v10

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setRadialGradient([I[FFFFI)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->mTileModes:[Landroid/graphics/Shader$TileMode;

    aget-object v7, v1, p6

    move-object v1, v8

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setShader(I)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$mgetShaderData(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    move-result-object v0

    new-instance v1, Landroid/graphics/RuntimeShader;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->-$$Nest$mgetText(Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloatNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformFloats(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;[F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformIntegerNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformInts(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getUniformBitmapId(Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v3, v3, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Cap;->values()[Landroid/graphics/Paint$Cap;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Join;->values()[Landroid/graphics/Paint$Join;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/graphics/Paint$Style;->values()[Landroid/graphics/Paint$Style;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public blacklist setSweepGradient([I[FFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/SweepGradient;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public blacklist setTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public blacklist setTypeFace(IIZ)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    const/16 v1, 0x190

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-ne p2, v1, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_1
    if-ne p2, v1, :cond_1

    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_2
    if-ne p2, v1, :cond_2

    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :pswitch_3
    if-ne p2, v1, :cond_3

    if-nez p3, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext$1;->this$0:Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, p2, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
