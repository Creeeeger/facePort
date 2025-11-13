.class public Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;
.super Ljava/lang/Object;
.source "PaintBundle.java"


# static fields
.field public static final blacklist ALPHA:I = 0xc

.field public static final blacklist ANTI_ALIAS:I = 0xe

.field public static final blacklist BLEND_MODE:I = 0x12

.field public static final blacklist BLEND_MODE_CLEAR:I = 0x0

.field public static final blacklist BLEND_MODE_COLOR:I = 0x1b

.field public static final blacklist BLEND_MODE_COLOR_BURN:I = 0x13

.field public static final blacklist BLEND_MODE_COLOR_DODGE:I = 0x12

.field public static final blacklist BLEND_MODE_DARKEN:I = 0x10

.field public static final blacklist BLEND_MODE_DIFFERENCE:I = 0x16

.field public static final blacklist BLEND_MODE_DST:I = 0x2

.field public static final blacklist BLEND_MODE_DST_ATOP:I = 0xa

.field public static final blacklist BLEND_MODE_DST_IN:I = 0x6

.field public static final blacklist BLEND_MODE_DST_OUT:I = 0x8

.field public static final blacklist BLEND_MODE_DST_OVER:I = 0x4

.field public static final blacklist BLEND_MODE_EXCLUSION:I = 0x17

.field public static final blacklist BLEND_MODE_HARD_LIGHT:I = 0x14

.field public static final blacklist BLEND_MODE_HUE:I = 0x19

.field public static final blacklist BLEND_MODE_LIGHTEN:I = 0x11

.field public static final blacklist BLEND_MODE_LUMINOSITY:I = 0x1c

.field public static final blacklist BLEND_MODE_MODULATE:I = 0xd

.field public static final blacklist BLEND_MODE_MULTIPLY:I = 0x18

.field public static final blacklist BLEND_MODE_NULL:I = 0x1d

.field public static final blacklist BLEND_MODE_OVERLAY:I = 0xf

.field public static final blacklist BLEND_MODE_PLUS:I = 0xc

.field public static final blacklist BLEND_MODE_SATURATION:I = 0x1a

.field public static final blacklist BLEND_MODE_SCREEN:I = 0xe

.field public static final blacklist BLEND_MODE_SOFT_LIGHT:I = 0x15

.field public static final blacklist BLEND_MODE_SRC:I = 0x1

.field public static final blacklist BLEND_MODE_SRC_ATOP:I = 0x9

.field public static final blacklist BLEND_MODE_SRC_IN:I = 0x5

.field public static final blacklist BLEND_MODE_SRC_OUT:I = 0x7

.field public static final blacklist BLEND_MODE_SRC_OVER:I = 0x3

.field public static final blacklist BLEND_MODE_XOR:I = 0xb

.field public static final blacklist COLOR:I = 0x4

.field public static final blacklist COLOR_FILTER:I = 0xd

.field public static final blacklist COLOR_ID:I = 0x13

.field public static final blacklist FILTER_BITMAP:I = 0x11

.field public static final blacklist FONT_BOLD:I = 0x1

.field public static final blacklist FONT_BOLD_ITALIC:I = 0x3

.field public static final blacklist FONT_ITALIC:I = 0x2

.field public static final blacklist FONT_NORMAL:I = 0x0

.field public static final blacklist FONT_TYPE_DEFAULT:I = 0x0

.field public static final blacklist FONT_TYPE_MONOSPACE:I = 0x3

.field public static final blacklist FONT_TYPE_SANS_SERIF:I = 0x1

.field public static final blacklist FONT_TYPE_SERIF:I = 0x2

.field public static final blacklist GRADIENT:I = 0xb

.field public static final blacklist IMAGE_FILTER_QUALITY:I = 0xa

.field public static final blacklist LINEAR_GRADIENT:I = 0x0

.field public static final blacklist PORTER_MODE_ADD:I = 0x1e

.field public static final blacklist RADIAL_GRADIENT:I = 0x1

.field public static final blacklist SHADER:I = 0x9

.field public static final blacklist STROKE_CAP:I = 0x7

.field public static final blacklist STROKE_JOIN:I = 0xf

.field public static final blacklist STROKE_MITER:I = 0x6

.field public static final blacklist STROKE_WIDTH:I = 0x5

.field public static final blacklist STYLE:I = 0x8

.field public static final blacklist STYLE_FILL:I = 0x0

.field public static final blacklist STYLE_FILL_AND_STROKE:I = 0x2

.field public static final blacklist STYLE_STROKE:I = 0x1

.field public static final blacklist SWEEP_GRADIENT:I = 0x2

.field public static final blacklist TEXT_SIZE:I = 0x1

.field public static final blacklist TYPEFACE:I = 0x10


# instance fields
.field blacklist mArray:[I

.field blacklist mOutArray:[I

.field blacklist mPos:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method private static blacklist asFloatStr(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist blendModeString(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "null"

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string v0, "ADD"

    return-object v0

    :pswitch_1
    return-object v0

    :pswitch_2
    const-string v0, "LUMINOSITY"

    return-object v0

    :pswitch_3
    const-string v0, "COLOR"

    return-object v0

    :pswitch_4
    const-string v0, "SATURATION"

    return-object v0

    :pswitch_5
    const-string v0, "HUE"

    return-object v0

    :pswitch_6
    const-string v0, "MULTIPLY"

    return-object v0

    :pswitch_7
    const-string v0, "EXCLUSION"

    return-object v0

    :pswitch_8
    const-string v0, "DIFFERENCE"

    return-object v0

    :pswitch_9
    const-string v0, "SOFT_LIGHT"

    return-object v0

    :pswitch_a
    const-string v0, "HARD_LIGHT"

    return-object v0

    :pswitch_b
    const-string v0, "COLOR_BURN"

    return-object v0

    :pswitch_c
    const-string v0, "COLOR_DODGE"

    return-object v0

    :pswitch_d
    const-string v0, "LIGHTEN"

    return-object v0

    :pswitch_e
    const-string v0, "DARKEN"

    return-object v0

    :pswitch_f
    const-string v0, "OVERLAY"

    return-object v0

    :pswitch_10
    const-string v0, "SCREEN"

    return-object v0

    :pswitch_11
    const-string v0, "MODULATE"

    return-object v0

    :pswitch_12
    const-string v0, "PLUS"

    return-object v0

    :pswitch_13
    const-string v0, "XOR"

    return-object v0

    :pswitch_14
    const-string v0, "DST_ATOP"

    return-object v0

    :pswitch_15
    const-string v0, "SRC_ATOP"

    return-object v0

    :pswitch_16
    const-string v0, "DST_OUT"

    return-object v0

    :pswitch_17
    const-string v0, "SRC_OUT"

    return-object v0

    :pswitch_18
    const-string v0, "DST_IN"

    return-object v0

    :pswitch_19
    const-string v0, "SRC_IN"

    return-object v0

    :pswitch_1a
    const-string v0, "DST_OVER"

    return-object v0

    :pswitch_1b
    const-string v0, "SRC_OVER"

    return-object v0

    :pswitch_1c
    const-string v0, "DST"

    return-object v0

    :pswitch_1d
    const-string v0, "SRC"

    return-object v0

    :pswitch_1e
    const-string v0, "CLEAR"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist colorInt(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist colorInt([I)Ljava/lang/String;
    .locals 4

    const-string v0, "["

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 1

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    return v0
.end method

.method private blacklist fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    return v2

    :cond_0
    return p1
.end method

.method private blacklist toName(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "????"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "BLEND_MODE"

    return-object v0

    :pswitch_2
    const-string v0, "FILTER_BITMAP"

    return-object v0

    :pswitch_3
    const-string v0, "TYPEFACE"

    return-object v0

    :pswitch_4
    const-string v0, "COLOR_FILTER"

    return-object v0

    :pswitch_5
    const-string v0, "ALPHA"

    return-object v0

    :pswitch_6
    const-string v0, "GRADIENT_LINEAR"

    return-object v0

    :pswitch_7
    const-string v0, "IMAGE_FILTER_QUALITY"

    return-object v0

    :pswitch_8
    const-string v0, "SHADER"

    return-object v0

    :pswitch_9
    const-string v0, "STYLE"

    return-object v0

    :pswitch_a
    const-string v0, "CAP"

    return-object v0

    :pswitch_b
    const-string v0, "STROKE_MITER"

    return-object v0

    :pswitch_c
    const-string v0, "STROKE_WIDTH"

    return-object v0

    :pswitch_d
    const-string v0, "COLOR"

    return-object v0

    :pswitch_e
    const-string v0, "TEXT_SIZE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist applyPaintChange(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-int/lit8 v2, v0, -0x1

    const/4 v4, 0x1

    shl-int v2, v4, v2

    or-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v2, v0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setBlendMode(I)V

    goto/16 :goto_3

    :pswitch_2
    shr-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-interface {p2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setFilterBitmap(Z)V

    goto/16 :goto_3

    :pswitch_3
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v6, v2, 0x3ff

    shr-int/lit8 v7, v2, 0xa

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v7, v3, 0x1

    aget v3, v5, v3

    invoke-interface {p2, v3, v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTypeFace(IIZ)V

    move v0, v7

    goto/16 :goto_4

    :pswitch_4
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeJoin(I)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    shr-int/lit8 v3, v0, 0x10

    invoke-interface {p2, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColorFilter(II)V

    move v0, v4

    goto/16 :goto_4

    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setAlpha(F)V

    move v0, v4

    goto/16 :goto_4

    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I

    move-result v2

    move v0, v2

    goto :goto_4

    :pswitch_8
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setImageFilterQuality(I)V

    goto :goto_3

    :pswitch_9
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setShader(I)V

    move v0, v4

    goto :goto_4

    :pswitch_a
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStyle(I)V

    goto :goto_3

    :pswitch_b
    shr-int/lit8 v2, v0, 0x10

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeCap(I)V

    goto :goto_3

    :pswitch_c
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeMiter(F)V

    move v0, v4

    goto :goto_4

    :pswitch_d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setStrokeWidth(F)V

    move v0, v4

    goto :goto_4

    :pswitch_e
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setColor(I)V

    move v0, v4

    goto :goto_4

    :pswitch_f
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setTextSize(F)V

    move v0, v4

    goto :goto_4

    :goto_3
    move v0, v3

    :goto_4
    goto/16 :goto_0

    :cond_3
    not-int v2, v1

    and-int/lit16 v1, v2, 0x1fff

    int-to-long v2, v1

    invoke-interface {p2, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->clear(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_e
    .end packed-switch
.end method

.method blacklist callPrintGradient(I[IILjava/lang/StringBuilder;)I
    .locals 17

    move-object/from16 v0, p4

    move/from16 v1, p3

    shr-int/lit8 v2, p1, 0x10

    const-string v3, "      center = "

    const-string v4, "\n    "

    const-string v5, "      tileMode = "

    const-string v6, "],\n"

    const-string v7, "      stops = "

    const-string v8, "      colors = "

    const-string v9, ", "

    const-string v10, "["

    const-string v11, ",\n"

    packed-switch v2, :pswitch_data_0

    const-string v3, "GRADIENT_??????!!!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_0
    const-string v4, "    SweepGradient(\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    aget v1, p2, v1

    const/4 v5, 0x0

    if-lez v1, :cond_0

    new-array v5, v1, [I

    const/4 v6, 0x0

    :goto_0
    array-length v12, v5

    if-ge v6, v12, :cond_0

    add-int/lit8 v12, v4, 0x1

    aget v4, p2, v4

    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    move v4, v12

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v4, 0x1

    aget v1, p2, v4

    const/4 v4, 0x0

    if-lez v1, :cond_1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_1
    array-length v13, v4

    if-ge v12, v13, :cond_1

    add-int/lit8 v13, v6, 0x1

    aget v6, p2, v6

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    add-int/lit8 v12, v12, 0x1

    move v6, v13

    goto :goto_1

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v7, v6, 0x1

    aget v6, p2, v6

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v7, 0x1

    aget v7, p2, v7

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "],\n    "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    goto/16 :goto_6

    :pswitch_1
    const-string v12, "    RadialGradient(\n"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v1, 0x1

    aget v1, p2, v1

    const/4 v13, 0x0

    if-lez v1, :cond_2

    new-array v13, v1, [I

    const/4 v14, 0x0

    :goto_2
    array-length v15, v13

    if-ge v14, v15, :cond_2

    add-int/lit8 v15, v12, 0x1

    aget v12, p2, v12

    aput v12, v13, v14

    add-int/lit8 v14, v14, 0x1

    move v12, v15

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v12, 0x1

    aget v1, p2, v12

    const/4 v12, 0x0

    if-lez v1, :cond_3

    new-array v12, v1, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_3
    move/from16 v16, v1

    array-length v1, v12

    if-ge v15, v1, :cond_4

    add-int/lit8 v1, v14, 0x1

    aget v14, p2, v14

    invoke-static {v14}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v15

    add-int/lit8 v15, v15, 0x1

    move v14, v1

    move/from16 v1, v16

    goto :goto_3

    :cond_3
    move/from16 v16, v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v14, 0x1

    aget v7, p2, v14

    invoke-static {v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v7, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      radius ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, v7, 0x1

    aget v6, p2, v7

    invoke-static {v6}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, 0x1

    aget v3, p2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :pswitch_2
    const-string v3, "    LinearGradient(\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    aget v1, p2, v1

    const/4 v12, 0x0

    if-lez v1, :cond_5

    new-array v12, v1, [I

    const/4 v13, 0x0

    :goto_4
    array-length v14, v12

    if-ge v13, v14, :cond_5

    add-int/lit8 v14, v3, 0x1

    aget v3, p2, v3

    aput v3, v12, v13

    add-int/lit8 v13, v13, 0x1

    move v3, v14

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v3, 0x1

    aget v1, p2, v3

    const/4 v3, 0x0

    if-lez v1, :cond_6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_5
    array-length v15, v3

    if-ge v14, v15, :cond_6

    add-int/lit8 v15, v13, 0x1

    aget v13, p2, v13

    invoke-static {v13}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v14

    add-int/lit8 v14, v14, 0x1

    move v13, v15

    goto :goto_5

    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v12}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "      start = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v13, 0x1

    aget v11, p2, v13

    invoke-static {v11}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v11, v8, 0x1

    aget v8, p2, v8

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "      end = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v11, 0x1

    aget v10, p2, v11

    invoke-static {v10}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v8, 0x1

    aget v8, p2, v8

    invoke-static {v8}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v9, 0x1

    aget v7, p2, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist callSetGradient(I[IILcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;)I
    .locals 19

    move/from16 v0, p3

    shr-int/lit8 v1, p1, 0x10

    add-int/lit8 v2, v0, 0x1

    aget v0, p2, v0

    const/4 v3, 0x0

    if-lez v0, :cond_1

    new-array v3, v0, [I

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget v2, p2, v2

    aput v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    move-object v11, v3

    goto :goto_1

    :cond_1
    move-object v11, v3

    :goto_1
    add-int/lit8 v3, v2, 0x1

    aget v0, p2, v2

    const/4 v2, 0x0

    if-lez v0, :cond_2

    new-array v2, v0, [F

    const/4 v4, 0x0

    :goto_2
    array-length v5, v11

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_2

    :cond_2
    if-nez v11, :cond_3

    return v3

    :cond_3
    packed-switch v1, :pswitch_data_0

    move-object/from16 v12, p4

    goto/16 :goto_3

    :pswitch_0
    add-int/lit8 v4, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-int/lit8 v5, v4, 0x1

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    move-object/from16 v12, p4

    invoke-interface {v12, v11, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setSweepGradient([I[FFF)V

    move v3, v5

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v12, p4

    add-int/lit8 v4, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    add-int/lit8 v3, v4, 0x1

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    add-int/lit8 v4, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    add-int/lit8 v15, v4, 0x1

    aget v16, p2, v4

    move-object/from16 v3, p4

    move-object v4, v11

    move-object v5, v2

    move v6, v10

    move v7, v13

    move v8, v14

    move/from16 v9, v16

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setRadialGradient([I[FFFFI)V

    move v3, v15

    goto :goto_3

    :pswitch_2
    move-object/from16 v12, p4

    add-int/lit8 v4, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    add-int/lit8 v3, v4, 0x1

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    add-int/lit8 v4, v3, 0x1

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v15

    add-int/lit8 v3, v4, 0x1

    aget v4, p2, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v16

    add-int/lit8 v17, v3, 0x1

    aget v18, p2, v3

    move-object/from16 v3, p4

    move-object v4, v11

    move-object v5, v2

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v18

    invoke-interface/range {v3 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintChanges;->setLinearGradient([I[FFFFFI)V

    move/from16 v3, v17

    :goto_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist clear(J)V
    .locals 0

    return-void
.end method

.method public blacklist readBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v1, 0x400

    if-gt v0, v1, :cond_1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer corrupt paint len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist registerVars(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    const v1, 0xffff

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    move v0, v4

    goto :goto_2

    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callPrintGradient(I[IILjava/lang/StringBuilder;)I

    move-result v2

    move v0, v2

    goto :goto_2

    :pswitch_3
    goto :goto_1

    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_2

    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    move v0, v4

    goto :goto_2

    :goto_1
    move v0, v2

    :goto_2
    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setAlpha(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0xc

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setAntiAlias(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0xe

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setBlendMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0x12

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x4

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setColorFilter(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p2, 0x10

    or-int/lit8 v2, v2, 0xd

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    return-void
.end method

.method public blacklist setColorId(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x13

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setFilterBitmap(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-eqz p1, :cond_0

    const/high16 v2, 0x10000

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    or-int/lit8 v2, v2, 0x11

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setLinearGradient([I[FFFFFI)V
    .locals 7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v3, 0xb

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v4, p1

    :goto_0
    move v5, v4

    aput v4, v1, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v6, p1, v1

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    array-length v3, p2

    :goto_2
    move v4, v3

    aput v3, v1, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p7, v1, v2

    return-void
.end method

.method public blacklist setRadialGradient([I[FFFFI)V
    .locals 7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v3, 0x1000b

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v4, p1

    :goto_0
    move v5, v4

    aput v4, v1, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v6, p1, v1

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    array-length v3, p2

    :goto_2
    move v4, v3

    aput v3, v1, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p6, v1, v2

    return-void
.end method

.method public blacklist setShader(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/16 v2, 0x9

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeCap(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0x7

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeJoin(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0xf

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeMiter(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x6

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStrokeWidth(F)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v2, 0x5

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v2, p1, 0x10

    or-int/lit8 v2, v2, 0x8

    aput v2, v0, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setSweepGradient([I[FFF)V
    .locals 7

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const v3, 0x2000b

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v4, p1

    :goto_0
    move v5, v4

    aput v4, v1, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v6, p1, v1

    aput v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    array-length v3, p2

    :goto_2
    move v4, v3

    aput v3, v1, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aget v5, p2, v1

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v1, v2

    return-void
.end method

.method public blacklist setTextSize(F)V
    .locals 5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    const/4 v3, 0x1

    aput v3, v1, v2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v1, v2

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    return-void
.end method

.method public blacklist setTextStyle(IIZ)V
    .locals 4

    and-int/lit16 v0, p2, 0x3ff

    if-eqz p3, :cond_0

    const/16 v1, 0x800

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    shl-int/lit8 v3, v0, 0x10

    or-int/lit8 v3, v3, 0x10

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    aput p1, v1, v2

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    const v2, 0xffff

    and-int/2addr v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ColorId(["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    BlendMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-static {v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    FilterBitmap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_4
    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v7, v6, 0x3ff

    shr-int/lit8 v8, v6, 0xa

    if-lez v8, :cond_1

    move v4, v5

    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v8, v3, 0x1

    aget v3, v5, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    TypeFace("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v8

    goto/16 :goto_2

    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeJoin("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    AntiAlias("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ColorFilter(color="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v4, v1, 0x10

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->blendModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Alpha("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    invoke-virtual {p0, v1, v4, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->callPrintGradient(I[IILjava/lang/StringBuilder;)I

    move-result v3

    move v6, v3

    goto/16 :goto_2

    :pswitch_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    ImageFilterQuality("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Shader("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Style("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeCap("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeMiter("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    StrokeWidth("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Color("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->colorInt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    TextSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->asFloatStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_1
    move v6, v3

    :goto_2
    const-string v3, "),\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method blacklist updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I
    .locals 7

    move v0, p4

    shr-int/lit8 v1, p1, 0x10

    packed-switch v1, :pswitch_data_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v3, "gradient type unknown"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_0
    add-int/lit8 v2, v0, 0x1

    aget v0, p3, v0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    new-array v3, v0, [I

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    aget v2, p3, v2

    aput v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    aget v0, p3, v2

    const/4 v2, 0x0

    if-lez v0, :cond_1

    new-array v2, v0, [F

    const/4 v5, 0x0

    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_1

    aget v6, p3, v4

    invoke-direct {p0, v6, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v6

    aput v6, p2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    aget v5, p3, v4

    invoke-direct {p0, v5, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v5

    aput v5, p2, v4

    add-int/lit8 v4, v4, 0x1

    aget v5, p3, v4

    invoke-direct {p0, v5, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v5

    aput v5, p2, v4

    nop

    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_6

    :pswitch_1
    add-int/lit8 v2, v0, 0x1

    aget v0, p3, v0

    if-lez v0, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget v0, p3, v2

    if-lez v0, :cond_3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    aget v4, p3, v3

    invoke-direct {p0, v4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    aget v2, p3, v3

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    nop

    add-int/lit8 v0, v3, 0x1

    goto :goto_6

    :pswitch_2
    add-int/lit8 v2, v0, 0x1

    aget v0, p3, v0

    if-lez v0, :cond_4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v2, 0x1

    aget v0, p3, v2

    if-lez v0, :cond_5

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_5

    aget v4, p3, v3

    invoke-direct {p0, v4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v4

    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    aget v2, p3, v3

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    aget v2, p3, v3

    invoke-direct {p0, v2, p5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    aput v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    nop

    add-int/lit8 v0, v3, 0x1

    nop

    :goto_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    add-int/lit8 v8, v0, 0x1

    aget v0, v1, v0

    const v1, 0xffff

    and-int/2addr v1, v0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v3, v3, v8

    invoke-direct {p0, v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixColor(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v3

    aput v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    move v0, v8

    goto :goto_3

    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    move-object v2, p0

    move v3, v0

    move v6, v8

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->updateFloatsInGradient(I[I[IILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v2

    move v0, v2

    goto :goto_3

    :pswitch_3
    goto :goto_2

    :pswitch_4
    add-int/lit8 v8, v8, 0x1

    move v0, v8

    goto :goto_3

    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mOutArray:[I

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v3, v3, v8

    invoke-direct {p0, v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->fixFloatVar(ILcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v3

    aput v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    move v0, v8

    goto :goto_3

    :goto_2
    move v0, v8

    :goto_3
    goto :goto_1

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist writeBundle(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mPos:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->mArray:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
