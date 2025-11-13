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

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 347
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential$1;

    invoke-direct {v0}, Lcom/android/internal/widget/LockscreenCredential$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/LockscreenCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I[B)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "credential"    # [B

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 78
    array-length v2, p2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    goto :goto_2

    .line 81
    :cond_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_3

    const/4 v2, 0x6

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 85
    array-length v2, p2

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 87
    :goto_2
    iput p1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 88
    iput-object p2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 89
    return-void
.end method

.method synthetic constructor blacklist <init>(I[BLcom/android/internal/widget/LockscreenCredential-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-void
.end method

.method private static blacklist charSequenceToByteArray(Ljava/lang/CharSequence;)[B
    .locals 6
    .param p0, "chars"    # Ljava/lang/CharSequence;

    .line 393
    if-nez p0, :cond_0

    .line 394
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 404
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 405
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 406
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 407
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 408
    .local v3, "c":C
    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 409
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    move v1, v4

    .line 411
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .restart local v4    # "pos":I
    int-to-byte v5, v3

    aput-byte v5, v0, v1

    .line 406
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_0

    .line 413
    .end local v2    # "i":I
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    return-object v2
.end method

.method public static blacklist createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p0, "password"    # [B

    .line 121
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    array-length v1, p0

    .line 122
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 121
    return-object v0
.end method

.method public static blacklist createNone()Lcom/android/internal/widget/LockscreenCredential;
    .locals 3

    .line 95
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    return-object v0
.end method

.method public static blacklist createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p0, "password"    # Ljava/lang/CharSequence;

    .line 110
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 111
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 110
    return-object v0
.end method

.method public static blacklist createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 1
    .param p0, "password"    # Ljava/lang/CharSequence;

    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Lcom/android/internal/widget/LockscreenCredential;"
        }
    .end annotation

    .line 102
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 103
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 102
    return-object v0
.end method

.method public static blacklist createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p0, "pin"    # Ljava/lang/CharSequence;

    .line 129
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 130
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 129
    return-object v0
.end method

.method public static blacklist createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 1
    .param p0, "pin"    # Ljava/lang/CharSequence;

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p0, "password"    # [B

    .line 438
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    array-length v1, p0

    .line 439
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 438
    return-object v0
.end method

.method private blacklist ensureNotZeroized()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Credential is already zeroized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 159
    return-void
.end method

.method public static blacklist legacyPasswordToHash([B[B)Ljava/lang/String;
    .locals 7
    .param p0, "password"    # [B
    .param p1, "salt"    # [B

    .line 316
    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    :try_start_0
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 325
    .local v0, "saltedPassword":[B
    array-length v1, p0

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 327
    .local v1, "sha1":[B
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 329
    .local v2, "md5":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 330
    .local v4, "combined":[B
    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    array-length v5, v1

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    invoke-static {v4}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v5

    .line 334
    .local v5, "hexEncoded":[C
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 335
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 336
    .end local v0    # "saltedPassword":[B
    .end local v1    # "sha1":[B
    .end local v2    # "md5":[B
    .end local v4    # "combined":[B
    .end local v5    # "hexEncoded":[C
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 317
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist passwordToHistoryHash([B[B[B)Ljava/lang/String;
    .locals 5
    .param p0, "passwordToHash"    # [B
    .param p1, "salt"    # [B
    .param p2, "hashFactor"    # [B

    .line 277
    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 283
    .local v0, "sha256":Ljava/security/MessageDigest;
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 284
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 286
    .local v1, "saltedPassword":[B
    array-length v2, p0

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 288
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 289
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 290
    .end local v0    # "sha256":Ljava/security/MessageDigest;
    .end local v1    # "saltedPassword":[B
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Missing digest algorithm: "

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 279
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist streamCredential(I[B)Lcom/android/internal/widget/LockscreenCredential;
    .locals 2
    .param p0, "type"    # I
    .param p1, "credential"    # [B

    .line 428
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 429
    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 428
    return-object v0
.end method


# virtual methods
.method public blacklist checkAgainstStoredType(I)Z
    .locals 4
    .param p1, "storedCredentialType"    # I

    .line 258
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 259
    :goto_1
    return v0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    if-ne v2, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method public blacklist checkLength()V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 240
    return-void

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pattern must not be null and at least 4 dots long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPassword()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->isPin()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 249
    :cond_3
    return-void

    .line 243
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->size()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 247
    return-void

    .line 244
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password must not be null and at least of length 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 369
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist duplicate()Lcom/android/internal/widget/LockscreenCredential;
    .locals 4

    .line 212
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    .line 213
    iget-object v2, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v2, :cond_0

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[B)V

    .line 212
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 379
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 380
    :cond_0
    instance-of v1, p1, Lcom/android/internal/widget/LockscreenCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 381
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    .line 382
    .local v1, "other":Lcom/android/internal/widget/LockscreenCredential;
    iget v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    iget v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    iget-object v4, v1, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getCredential()[B
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 167
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 374
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist isNone()Z
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 183
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

    .line 200
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 201
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

    .line 188
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 189
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

    .line 194
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 195
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

    .line 444
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 445
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

.method public blacklist legacyPasswordToHash([B)Ljava/lang/String;
    .locals 1
    .param p1, "salt"    # [B

    .line 303
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist passwordToHistoryHash([B[B)Ljava/lang/String;
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "hashFactor"    # [B

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist size()I
    .locals 1

    .line 206
    invoke-direct {p0}, Lcom/android/internal/widget/LockscreenCredential;->ensureNotZeroized()V

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    array-length v0, v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 343
    iget v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 345
    return-void
.end method

.method public blacklist zeroize()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    if-eqz v0, :cond_0

    .line 221
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/LockscreenCredential;->mCredential:[B

    .line 224
    :cond_0
    return-void
.end method
