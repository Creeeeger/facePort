.class public final Landroid/media/MediaCodec$CryptoInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoInfo$Pattern;
    }
.end annotation


# static fields
.field private static final blacklist ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# instance fields
.field public whitelist iv:[B

.field public whitelist key:[B

.field private blacklist mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field public whitelist mode:I

.field public whitelist numBytesOfClearData:[I

.field public whitelist numBytesOfEncryptedData:[I

.field public whitelist numSubSamples:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    sput-object v0, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method private greylist-max-o setPattern(II)V
    .locals 1

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method


# virtual methods
.method public whitelist getPattern()Landroid/media/MediaCodec$CryptoInfo$Pattern;
    .locals 3

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget-object v1, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getEncryptBlocks()I

    move-result v1

    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getSkipBlocks()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    return-object v0
.end method

.method public whitelist set(I[I[I[B[BI)V
    .locals 1

    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iput-object p2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iput-object p3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iput-object p4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iput-object p5, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iput p6, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget-object v0, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public whitelist setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Landroid/media/MediaCodec$CryptoInfo;->ZERO_PATTERN:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getEncryptBlocks()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->getSkipBlocks()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(II)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subsamples, key ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0123456789abcdef"

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "], iv ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "], clear "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", encrypted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pattern (encrypt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->-$$Nest$fgetmEncryptBlocks(Landroid/media/MediaCodec$CryptoInfo$Pattern;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skip: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->mPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-static {v2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->-$$Nest$fgetmSkipBlocks(Landroid/media/MediaCodec$CryptoInfo$Pattern;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
