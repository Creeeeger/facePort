.class public Landroid/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static final greylist-max-o BUFFER_SIZE:I = 0x800

.field private static greylist-max-o EMPTY:[B


# instance fields
.field private final greylist-max-o coder:Landroid/util/Base64$Coder;

.field private greylist-max-o eof:Z

.field private greylist-max-o inputBuffer:[B

.field private greylist-max-o outputEnd:I

.field private greylist-max-o outputStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64InputStream;->EMPTY:[B

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/InputStream;IZ)V
    .locals 4

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    const/16 v1, 0x800

    new-array v2, v1, [B

    iput-object v2, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    new-instance v3, Landroid/util/Base64$Encoder;

    invoke-direct {v3, p2, v2}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/util/Base64$Decoder;

    invoke-direct {v3, p2, v2}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    :goto_0
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v3, v1}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v2, Landroid/util/Base64$Coder;->output:[B

    iput v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iput v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    return-void
.end method

.method private greylist-max-o refill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/Base64InputStream;->eof:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Base64InputStream;->eof:Z

    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    sget-object v4, Landroid/util/Base64InputStream;->EMPTY:[B

    invoke-virtual {v3, v4, v2, v2, v1}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget v3, v3, Landroid/util/Base64$Coder;->op:I

    iput v3, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    return-void

    :cond_2
    new-instance v2, Landroid/util/Base64DataException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Landroid/util/Base64DataException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api available()I
    .locals 2

    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    return-void
.end method

.method public whitelist test-api mark(I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public whitelist test-api read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    return v0
.end method

.method public whitelist test-api reset()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    return-wide v0
.end method
