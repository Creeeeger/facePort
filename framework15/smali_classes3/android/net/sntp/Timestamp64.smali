.class public final Landroid/net/sntp/Timestamp64;
.super Ljava/lang/Object;
.source "Timestamp64.java"


# static fields
.field static final blacklist MAX_SECONDS_IN_ERA:J = 0xffffffffL

.field static final blacklist NANOS_PER_SECOND:I = 0x3b9aca00

.field static final blacklist OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field static final blacklist SECONDS_IN_ERA:J = 0x100000000L

.field static final blacklist SUB_MILLIS_BITS_TO_RANDOMIZE:I = 0x16

.field public static final blacklist ZERO:Landroid/net/sntp/Timestamp64;


# instance fields
.field private final blacklist mEraSeconds:J

.field private final blacklist mFractionBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/sntp/Timestamp64;->fromComponents(JI)Landroid/net/sntp/Timestamp64;

    move-result-object v0

    sput-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    return-void
.end method

.method private constructor blacklist <init>(JI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    iput p3, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameters. seconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist fractionBitsToNanos(I)I
    .locals 5

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v2, v0

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    return v2
.end method

.method public static blacklist fromComponents(JI)Landroid/net/sntp/Timestamp64;
    .locals 1

    new-instance v0, Landroid/net/sntp/Timestamp64;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v0
.end method

.method public static blacklist fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;
    .locals 7

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    const-wide v2, 0x83aa7e80L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide v3, 0x100000000L

    if-gez v2, :cond_0

    neg-long v5, v0

    rem-long/2addr v5, v3

    sub-long v0, v3, v5

    :cond_0
    rem-long/2addr v0, v3

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/net/sntp/Timestamp64;->nanosToFractionBits(J)I

    move-result v4

    new-instance v5, Landroid/net/sntp/Timestamp64;

    invoke-direct {v5, v0, v1, v4}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v5
.end method

.method public static blacklist fromString(Ljava/lang/String;)Landroid/net/sntp/Timestamp64;
    .locals 10

    const/16 v0, 0x11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    const-wide v8, 0xffffffffL

    cmp-long v3, v6, v8

    if-gtz v3, :cond_0

    new-instance v3, Landroid/net/sntp/Timestamp64;

    long-to-int v8, v6

    invoke-direct {v3, v4, v5, v8}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid fractionBits:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist nanosToFractionBits(J)I
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/16 v2, 0x20

    shl-long v2, p0, v2

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist randomizeLowestBits(Ljava/util/Random;II)I
    .locals 5

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    const/4 v0, -0x1

    shl-int/2addr v0, p2

    not-int v1, v0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int v3, p1, v0

    and-int v4, v2, v1

    or-int/2addr v3, v4

    return v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/net/sntp/Timestamp64;

    iget-wide v3, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    iget-wide v5, v2, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    iget v4, v2, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getEraSeconds()J
    .locals 2

    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    return-wide v0
.end method

.method public blacklist getFractionBits()I
    .locals 1

    iget v0, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist randomizeSubMillis(Ljava/util/Random;)Landroid/net/sntp/Timestamp64;
    .locals 4

    iget v0, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    const/16 v1, 0x16

    invoke-static {p1, v0, v1}, Landroid/net/sntp/Timestamp64;->randomizeLowestBits(Ljava/util/Random;II)I

    move-result v0

    new-instance v1, Landroid/net/sntp/Timestamp64;

    iget-wide v2, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    invoke-direct {v1, v2, v3, v0}, Landroid/net/sntp/Timestamp64;-><init>(JI)V

    return-object v1
.end method

.method public blacklist toInstant(I)Ljava/time/Instant;
    .locals 6

    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0x100000000L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget v2, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    invoke-static {v2}, Landroid/net/sntp/Timestamp64;->fractionBitsToNanos(I)I

    move-result v2

    int-to-long v3, v2

    invoke-static {v0, v1, v3, v4}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroid/net/sntp/Timestamp64;->mEraSeconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/net/sntp/Timestamp64;->mFractionBits:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%08x.%08x"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
