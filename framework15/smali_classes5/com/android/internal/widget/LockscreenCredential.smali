.class public Lcom/android/internal/widget/LockscreenCredential;
.super Ljava/lang/Object;
.source "LockscreenCredential.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCredential:[B

.field private final blacklist mHasInvalidChars:Z

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockscreenCredential$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/CharSequence;)V
    .locals 2

    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->charsToBytesForUnicode(Ljava/lang/CharSequence;)[B

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/widget/LockscreenCredential;->hasInvalidChars(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-void
.end method

.method private constructor blacklist <init>(I[BZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :goto_0
    iput p1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iput-object p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iput-boolean p3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(I[BZLcom/android/internal/widget/LockscreenCredential-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-void
.end method

.method private static blacklist charsToBytesForUnicode(Ljava/lang/CharSequence;)[B
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    move v1, v4

    :cond_0
    add-int/lit8 v4, v1, 0x1

    int-to-byte v5, v3

    aput-byte v5, v0, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-object v2
.end method

.method private static blacklist charsToBytesTruncating(Ljava/lang/CharSequence;)[B
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist createNone()Lcom/android/internal/widget/LockscreenCredential;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    new-array v2, v1, [B

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-object v0
.end method

.method public static blacklist createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/android/internal/widget/LockscreenCredential;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Lcom/android/internal/widget/LockscreenCredential;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-object v0
.end method

.method public static blacklist createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/internal/widget/LockscreenCredential;-><init>(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-object v0
.end method

.method public static blacklist createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-object v0
.end method

.method private blacklist ensureNotZeroized()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Credential is already zeroized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method private static blacklist hasInvalidChars(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist legacyPasswordToHash([B[B)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    filled-new-array {p0, p1}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    filled-new-array {v1, v2}, [[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object v3

    invoke-static {v3}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist passwordToHistoryHash([B[B[B)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist streamCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-object v0
.end method


# virtual methods
.method public blacklist checkAgainstStoredType(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    if-ne v0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist duplicate()Lcom/android/internal/widget/LockscreenCredential;
    .locals 4

    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iget-object v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZ)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    iget v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iget-object v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    iget-boolean v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    return-void
.end method

.method public blacklist getCredential()[B
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    return v0
.end method

.method public blacklist hasInvalidChars()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isNone()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPassword()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPattern()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isPin()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isUCM()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist passwordToHistoryHash([B[B)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    array-length v0, v0

    return v0
.end method

.method public blacklist validateBasicRequirements()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password must be at least 4 characters long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PIN must be at least 4 digits long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pattern must be at least 4 dots long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "credential contains invalid characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-boolean v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mHasInvalidChars:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

.method public blacklist zeroize()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    :cond_0
    return-void
.end method
