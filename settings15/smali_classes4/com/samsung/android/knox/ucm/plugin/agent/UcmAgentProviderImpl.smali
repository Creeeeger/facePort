.class public Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.super Ljava/security/Provider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentMacSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSignatureSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSecureRandomSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcsKeyPairGeneratorSpec;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyGeneratorSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyPairGeneratorSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentCipherSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentKeyStoreSpi;,
        Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$AbstractProviderService;
    }
.end annotation


# static fields
.field public static final CIPHER:Ljava/lang/String; = "Cipher"

.field public static final CIPHER_RSA_ECB_NOPADDING:Ljava/lang/String; = "RSA/ECB/NoPadding"

.field public static final CIPHER_RSA_ECB_PKCS1PADDING:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final KEYPAIRGENERATOR:Ljava/lang/String; = "KeyPairGenerator"

.field public static final KEYPAIRGENERATOR_RSA:Ljava/lang/String; = "RSA"

.field public static final KEYSTORE:Ljava/lang/String; = "KeyStore"

.field public static final KEYSTORE_TYPE:Ljava/lang/String; = "KNOX"

.field public static KEY_EXTRA_BLOCK_MODES:Ljava/lang/String; = "extra_block_modes"

.field public static KEY_EXTRA_DIGESTS:Ljava/lang/String; = "extra_digests"

.field public static KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String; = "extra_ec_curve_name"

.field public static KEY_EXTRA_PURPOSE:Ljava/lang/String; = "extra_purpose"

.field public static KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String; = "extra_randomized_encryption"

.field public static KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String; = "extra_signature_paddings"

.field private static final PROVIDER_DESC:Ljava/lang/String; = "Samsung Extension Keystore Provider Impl"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "AgentProviderImpl"

.field private static final PROVIDER_VERSION:D = 1.0

.field public static final SECURERANDOM:Ljava/lang/String; = "SecureRandom"

.field public static final SECURERANDOM_SHA1PRNG:Ljava/lang/String; = "SHA1PRNG"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Samsung Extension Keystore Provider Impl"

    const-string v3, "AgentProviderImpl"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public putServiceImpl(Ljava/security/Provider$Service;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    :cond_0
    return-void
.end method

.method public removeServiceImpl(Ljava/security/Provider$Service;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/Provider;->removeService(Ljava/security/Provider$Service;)V

    :cond_0
    return-void
.end method
