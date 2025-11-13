.class public abstract Lcom/android/security/SecureBox;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final BIG_INT_02:Ljava/math/BigInteger;

.field public static final CONSTANT_01:[B

.field public static final EC_PARAM_A:Ljava/math/BigInteger;

.field public static final EC_PARAM_B:Ljava/math/BigInteger;

.field public static final EC_PARAM_P:Ljava/math/BigInteger;

.field static final EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

.field public static final HKDF_INFO_WITH_PUBLIC_KEY:[B

.field public static final HKDF_SALT:[B

.field public static final VERSION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/security/SecureBox;->VERSION:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "SECUREBOX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    filled-new-array {v3, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object v0

    sput-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    const-string v0, "P256 HKDF-SHA-256 AES-128-GCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    const-string v0, "SHARED HKDF-SHA-256 AES-128-GCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    const/4 v0, 0x1

    new-array v2, v0, [B

    aput-byte v0, v2, v1

    sput-object v2, Lcom/android/security/SecureBox;->CONSTANT_01:[B

    new-array v1, v1, [B

    sput-object v1, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/android/security/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/security/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "3"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/android/security/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/security/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    new-instance v5, Ljava/security/spec/EllipticCurve;

    new-instance v6, Ljava/security/spec/ECFieldFp;

    invoke-direct {v6, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v5, v6, v2, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v4, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/security/spec/ECParameterSpec;

    invoke-direct {v3, v5, v1, v2, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v3, Lcom/android/security/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method

.method public static aesGcmInternal(Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 3

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 p1, 0x1

    :try_start_1
    invoke-virtual {v0, p1, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decodePublicKey([B)Ljava/security/PublicKey;
    .locals 6

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    const/16 v2, 0x21

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x41

    invoke-static {p0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v3, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object p0, Lcom/android/security/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const-string v2, "Point lies outside of the expected curve"

    if-gez v1, :cond_1

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eq v1, v4, :cond_1

    sget-object v1, Lcom/android/security/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    invoke-virtual {v3, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v5, Lcom/android/security/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v5, Lcom/android/security/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    :try_start_0
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v0, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v0, Lcom/android/security/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encrypt(Ljava/security/PublicKey;[B[B)[B
    .locals 7

    sget-object v0, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    if-nez p0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both the public key and shared secret are empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    if-nez p2, :cond_3

    move-object p2, v0

    :cond_3
    if-nez p0, :cond_4

    const/4 p0, 0x0

    sget-object v1, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    move-object v2, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_2

    :cond_4
    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :try_start_1
    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v3, "secp256r1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    const-string v3, "ECDH"

    invoke-static {v3}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v3

    :try_start_2
    invoke-virtual {v3, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v2, 0x1

    invoke-virtual {v3, p0, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p0

    sget-object v2, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    :goto_2
    const/16 v3, 0xc

    new-array v3, v3, [B

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    filled-new-array {p0, v0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    sget-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    const-string v4, "HmacSHA256"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    :try_start_3
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v5, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    :try_start_4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-virtual {v5, v2}, Ljavax/crypto/Mac;->update([B)V

    sget-object p0, Lcom/android/security/SecureBox;->CONSTANT_01:[B

    invoke-virtual {v5, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v2, "AES"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_5
    invoke-static {v0, v3, p2, p1}, Lcom/android/security/SecureBox;->aesGcmInternal(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p0
    :try_end_5
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_5 .. :try_end_5} :catch_1

    sget-object p1, Lcom/android/security/SecureBox;->VERSION:[B

    if-nez v1, :cond_5

    filled-new-array {p1, v3, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    const/16 v1, 0x41

    new-array v2, v1, [B

    array-length v4, p2

    sub-int/2addr v1, v4

    array-length v4, p2

    const/4 v5, 0x0

    invoke-static {p2, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, v0

    rsub-int/lit8 p2, p2, 0x21

    array-length v1, v0

    invoke-static {v0, v5, v2, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x4

    aput-byte p2, v2, v5

    filled-new-array {p1, v2, v3, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string p2, "Unable to find the NIST P-256 curve"

    invoke-direct {p1, p2, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
