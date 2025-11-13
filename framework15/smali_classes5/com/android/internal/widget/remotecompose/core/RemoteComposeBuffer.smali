.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
.super Ljava/lang/Object;
.source "RemoteComposeBuffer.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EASING_CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist EASING_CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist EASING_CUBIC_CUSTOM:I = 0xb

.field public static final blacklist EASING_CUBIC_DECELERATE:I = 0x3

.field public static final blacklist EASING_CUBIC_LINEAR:I = 0x4

.field public static final blacklist EASING_CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist EASING_CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASING_EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASING_EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist EASING_SPLINE_CUSTOM:I = 0xc

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

.field blacklist mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

.field blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-void
.end method

.method public static blacklist fromFile(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-object v0
.end method

.method public static blacklist fromInputStream(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-object v0
.end method

.method public static blacklist packAnimation(FI[FFF)[F
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object v0

    return-object v0
.end method

.method static blacklist read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-void
.end method

.method public static blacklist read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reset(I)V

    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    array-length v2, v0

    iput v2, v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static blacklist readAllBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    :cond_0
    add-int/2addr v1, v2

    array-length v3, v0

    if-ne v1, v3, :cond_1

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :cond_1
    goto :goto_0
.end method

.method static blacklist version()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "v1.0"

    return-object v0
.end method


# virtual methods
.method public varargs blacklist addAnimatedFloat([F)F
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addAnimatedFloat([F[F)F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v3

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v4

    move v13, v4

    goto :goto_0

    :cond_1
    move v13, v4

    :goto_0
    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v6, p1

    move v7, v3

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move v12, v13

    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V

    return-void
.end method

.method public blacklist addClipPath(I)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist addClipRect(FFFF)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addColorExpression(FFF)S
    .locals 3

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return v1
.end method

.method public blacklist addColorExpression(IFFF)S
    .locals 7

    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIFFF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return v1
.end method

.method public blacklist addColorExpression(IIF)S
    .locals 7

    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return v1
.end method

.method public blacklist addColorExpression(ISF)S
    .locals 7

    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return v1
.end method

.method public blacklist addColorExpression(SIF)S
    .locals 7

    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return v1
.end method

.method public blacklist addColorExpression(SSF)S
    .locals 7

    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x3

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return v1
.end method

.method public blacklist addDrawArc(FFFFFF)V
    .locals 8

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    return-void
.end method

.method public blacklist addDrawBitmap(Ljava/lang/Object;FFFFLjava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v4, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v5, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v11

    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v5, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v12

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v7, v3

    move v8, v11

    move v9, v12

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v4

    :cond_1
    sget-object v13, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;

    iget-object v14, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v15, v3

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, v4

    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method

.method public blacklist addDrawCircle(FFF)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    return-void
.end method

.method public blacklist addDrawLine(FFFF)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addDrawOval(FFFF)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawOval;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addDrawPath(I)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist addDrawPath(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawPath(I)V

    return-void
.end method

.method public blacklist addDrawRect(FFFF)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addDrawRoundRect(FFFFFF)V
    .locals 8

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase6$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    return-void
.end method

.method public blacklist addDrawTextOnPath(Ljava/lang/String;Ljava/lang/Object;FF)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v7

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v3, v7

    move v4, v0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    return-void
.end method

.method public blacklist addDrawTextRun(IIIIIFFZ)V
    .locals 11

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;

    move-object v10, p0

    iget-object v1, v10, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    return-void
.end method

.method public blacklist addDrawTextRun(Ljava/lang/String;IIIIFFZ)V
    .locals 12

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v10

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;

    move-object v11, p0

    iget-object v1, v11, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, v10

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    return-void
.end method

.method public blacklist addDrawTweenPath(IIFFF)V
    .locals 7

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V

    return-void
.end method

.method public blacklist addDrawTweenPath(Ljava/lang/Object;Ljava/lang/Object;FFF)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v2

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move-object v2, p0

    move v3, v0

    move v4, v1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawTweenPath(IIFFF)V

    return-void
.end method

.method public blacklist addFloat(F)F
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addMatrixRestore()V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addMatrixRotate(FFF)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase3$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    return-void
.end method

.method public blacklist addMatrixSave()V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    return-void
.end method

.method public blacklist addMatrixScale(FF)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/high16 v5, 0x7fc00000    # Float.NaN

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addMatrixScale(FFFF)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase4$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    return-void
.end method

.method public blacklist addMatrixSkew(FF)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method

.method public blacklist addMatrixTranslate(FF)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBase2$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    return-void
.end method

.method public blacklist addPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    return-void
.end method

.method public blacklist addPathData(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->pathToFloatArray(Ljava/lang/Object;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/PathData$Companion;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    return v1
.end method

.method public blacklist addText(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextData$Companion;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TextData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method blacklist copy()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object v2

    return-object v2
.end method

.method blacklist copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;",
            ")",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    iget-object v2, p2, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public blacklist createTextFromFloat(FSSI)I
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v1

    :cond_0
    sget-object v2, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v4, v1

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    return v1
.end method

.method public blacklist createTextId(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist drawBitmap(Ljava/lang/Object;IIIIIIIIIILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cache(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v4, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v7, v3

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v4

    :cond_1
    sget-object v7, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;

    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v9, v3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, v4

    invoke-virtual/range {v7 .. v18}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V

    return-void
.end method

.method public blacklist drawTextAnchored(IFFFFI)V
    .locals 8

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method

.method public blacklist drawTextAnchored(Ljava/lang/String;FFFFI)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v8

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, v8

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    return-void
.end method

.method public blacklist fromFile(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    return-object v0
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    return-object v0
.end method

.method public blacklist getPlatform()Lcom/android/internal/widget/remotecompose/core/Platform;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    return-object v0
.end method

.method public blacklist header(IILjava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->header(IILjava/lang/String;J)V

    return-void
.end method

.method public blacklist header(IILjava/lang/String;J)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIJ)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    :cond_0
    return-void
.end method

.method public blacklist inflateFromBuffer(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->available()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation encountered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method public blacklist reset(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    return-void
.end method

.method public blacklist setPlatform(Lcom/android/internal/widget/remotecompose/core/Platform;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    return-void
.end method

.method public blacklist setTheme(I)V
    .locals 2

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/Theme$Companion;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/Theme$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    return-void
.end method

.method public blacklist textMerge(II)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    return v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;Ljava/io/File;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getBuffer()[B

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
