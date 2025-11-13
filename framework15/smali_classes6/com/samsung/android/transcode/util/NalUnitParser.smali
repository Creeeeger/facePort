.class public Lcom/samsung/android/transcode/util/NalUnitParser;
.super Ljava/lang/Object;
.source "NalUnitParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;,
        Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;
    }
.end annotation


# static fields
.field private static final blacklist CHECK_MAX_SIZE:I = 0x200

.field private static final blacklist CLLI_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x4

.field private static final blacklist CLLI_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x90

.field private static final blacklist CONTENT_LIGHT_LEVEL_INFO_META:Ljava/lang/String; = "Content light level info meta"

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MASTERING_DISPLAY_COLOR_META:Ljava/lang/String; = "Mastering display color meta"

.field private static final blacklist MDCV_SEI_MESSAGE_PAYLOAD_SIZE:I = 0x18

.field private static final blacklist MDCV_SEI_MESSAGE_PAYLOAD_TYPE:I = 0x89

.field private static final blacklist NAL_START_CODE:[B

.field private static final blacklist STREAM_DUMP_PATH:Ljava/lang/String; = "/data/data/com.samsung.app.newtrim/files/inputStream.bin"

.field private static final blacklist TAG:Ljava/lang/String; = "NalUnitParser"


# instance fields
.field private blacklist mBuffer:[B

.field private final blacklist mBufferSize:I

.field private blacklist mContentsLevelInfoMetaStartPos:I

.field private blacklist mHdrStaticMeta:Ljava/nio/ByteBuffer;

.field private blacklist mMasteringDisplayColorMetaStartPos:I

.field private final blacklist mNalStartPos:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input buffer size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NalUnitParser"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x200

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    iget v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    return-void
.end method

.method private blacklist findContentLightLevel()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    :goto_0
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findContentLightLevelWithinDisplayMasteringNal(I)Z
    .locals 3

    move v0, p1

    :goto_0
    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isContentLightLevelInfo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findMasteringDisplayStaticMeta()Z
    .locals 4

    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    :goto_0
    add-int/lit8 v1, v0, 0x7

    iget v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBufferSize:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/util/NalUnitParser;->isMasteringDisplayColorInfo(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevelWithinDisplayMasteringNal(I)Z

    move-result v1

    const-string v3, "NalUnitParser"

    if-eqz v1, :cond_0

    const-string v1, "Mastering display color meta and Content light level info meta in one NAL"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "Mastering display color meta and Content light level info meta not  in one NAL"

    invoke-static {v3, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    const/4 v1, 0x0

    return v1
.end method

.method private blacklist findNalStartCode([BI)I
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isNalStartCode([BI)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int v2, v1, p2

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findPPSPosition([BZ)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v0

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v2, v2

    if-lt v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->isPPSNalUnit([BIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getH265NalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist getNalUnitType([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private blacklist isContentLightLevelInfo(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isMasteringDisplayColorInfo(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    aget-byte v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/util/NalUnitParser;->toUnsigned(B)I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isNalStartCode([BI)Z
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p2

    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    sget-object v3, Lcom/samsung/android/transcode/util/NalUnitParser;->NAL_START_CODE:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isPPSNalUnit([BIZ)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "NAL type : "

    const-string v3, "NalUnitParser"

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getH265NalUnitType([BI)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;->PPS_NUT:Lcom/samsung/android/transcode/util/NalUnitParser$HEVCNalUnitType;

    if-ne v5, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/NalUnitParser;->getNalUnitType([BI)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->getNalType(I)Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;->PICTURE_PARAMETER_SET:Lcom/samsung/android/transcode/util/NalUnitParser$AVCNalUnitType;

    if-ne v5, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method private blacklist toUnsigned(B)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method


# virtual methods
.method public blacklist findHDRStaticMeta()Z
    .locals 10

    iget v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mNalStartPos:I

    const/4 v1, 0x0

    const-string v2, "NalUnitParser"

    if-gez v0, :cond_0

    const-string v0, "there is no nal start code"

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findMasteringDisplayStaticMeta()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, "fail to find Mastering display color meta in stream."

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    return v1

    :cond_1
    const/4 v0, 0x0

    iget v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    iget v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    add-int/lit8 v5, v5, 0x4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v4

    move v5, v4

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    add-int/lit8 v5, v5, 0x4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/transcode/util/NalUnitParser;->findContentLightLevel()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v6, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    add-int/lit8 v6, v6, 0x4

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mastering display color meta buffer position : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ~ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content light level info meta buffer position : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    sub-int v6, v4, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mastering display color meta data size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    sub-int v7, v5, v7

    :goto_1
    if-ltz v6, :cond_6

    if-gez v7, :cond_4

    goto :goto_2

    :cond_4
    add-int v1, v6, v7

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v9, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mMasteringDisplayColorMetaStartPos:I

    invoke-virtual {v1, v8, v9, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content light level info meta data size : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    iget v8, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mContentsLevelInfoMetaStartPos:I

    invoke-virtual {v1, v2, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_5
    iput-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mBuffer:[B

    const/4 v1, 0x1

    return v1

    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid size : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    const-string v3, "cannot find Content light level info meta"

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/LogS;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public blacklist getHdrStaticMeta()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist insertHDRStaticMeta(Ljava/nio/ByteBuffer;IZ)Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, p2, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/transcode/util/NalUnitParser;->findPPSPosition([BZ)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ppsPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NalUnitParser"

    invoke-static {v3, v2}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ltz v1, :cond_1

    add-int/lit8 v4, v1, 0x4

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/transcode/util/NalUnitParser;->findNalStartCode([BI)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ppsEndPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-lez v2, :cond_2

    invoke-virtual {v3, v0, v5, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    sub-int v4, p2, v2

    invoke-virtual {v3, v0, v2, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/transcode/util/NalUnitParser;->mHdrStaticMeta:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    return-object v3

    :cond_3
    :goto_1
    return-object p1
.end method
